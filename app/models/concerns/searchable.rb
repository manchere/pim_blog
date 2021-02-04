require 'elasticsearch/model'

module Searchable
  extend ActiveSupport::Concern

  included do
    include ElastichSearch::Model
    include Elasticsearch::Model::Callbacks
  end

  # Name of index using name of app
  index_name Rails.application.class.parent_name.underscore

  # Document type using model name
  document_type self.name.downcase

  def self.search(query)
    __elasticsearch__.search(
      {
        query: {
          multi_match: {
            query: query,
            fields: [ 'title^5', 'meta_title^2', 'content', 'summary' ]
          }
        },

        highlight: {
          pre_tags: ['<mark>'],
          post_tags: ['</marks>'],
          fields: { title: {}, content: {}, }
        },

        suggest: {
          text: query,
          title: {
            term: {
              size: 1,
              field: :title
            }
          },
          content: {
            term: {
              size: 1,
              field: :body
            }
          }
        }
      }
    )
  end

  

  settings setings_attributes do
    mapping dynamic: false do 
      indexes :title, type: :text, analyzer: :autocomplete
      indexes :meta_title, type: :text, type: :keyword
      indexes :content, type: :text, type: :keyword, analyzer: 'english'
      indexes :summary, type: :text, analyzer: 'english'
    end
  end

  def settings_attributes
    index: {
      analysis: {
        analyzer: {
          autocomplete: {
            type: :custom,
            tokenizer: :standard,
            filter: %i[ lowercase autocomplete ]
          },
          filter: {
            autocomplete: {
              type: :edge_ngram,
              min_gram: 2,
              max_gram: 25
            }
          }
        }
      }
    }
  end

  def as_indexed_json(options = nil)
    self.as_json( only: [ :title, :meta_title, :content, :summary ] )
  end
end
