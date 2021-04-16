# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                                  root GET    /                                                                                        home#index
#                      new_user_session GET    /users/sign_in(.:format)                                                                 authentication/sessions#new
#                          user_session POST   /users/sign_in(.:format)                                                                 authentication/sessions#create
#                  destroy_user_session DELETE /users/sign_out(.:format)                                                                authentication/sessions#destroy
#                     new_user_password GET    /users/password/new(.:format)                                                            authentication/passwords#new
#                    edit_user_password GET    /users/password/edit(.:format)                                                           authentication/passwords#edit
#                         user_password PATCH  /users/password(.:format)                                                                authentication/passwords#update
#                                       PUT    /users/password(.:format)                                                                authentication/passwords#update
#                                       POST   /users/password(.:format)                                                                authentication/passwords#create
#              cancel_user_registration GET    /users/cancel(.:format)                                                                  authentication/registrations#cancel
#                 new_user_registration GET    /users/sign_up(.:format)                                                                 authentication/registrations#new
#                edit_user_registration GET    /users/edit(.:format)                                                                    authentication/registrations#edit
#                     user_registration PATCH  /users(.:format)                                                                         authentication/registrations#update
#                                       PUT    /users(.:format)                                                                         authentication/registrations#update
#                                       DELETE /users(.:format)                                                                         authentication/registrations#destroy
#                                       POST   /users(.:format)                                                                         authentication/registrations#create
#                            posts_show GET    /posts/show(.:format)                                                                    posts#show
#                           posts_index GET    /posts/index(.:format)                                                                   posts#index
#                             posts_new GET    /posts/new(.:format)                                                                     posts#new
#                         posts_destroy GET    /posts/destroy(.:format)                                                                 posts#destroy
#                             edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                                  user GET    /users/:id(.:format)                                                                     users#show
#                         contact_index POST   /contact(.:format)                                                                       contact#create
#                           new_contact GET    /contact/new(.:format)                                                                   contact#new
#                         subscriptions GET    /subscriptions(.:format)                                                                 subscriptions#index
#                                       POST   /subscriptions(.:format)                                                                 subscriptions#create
#                      new_subscription GET    /subscriptions/new(.:format)                                                             subscriptions#new
#                     edit_subscription GET    /subscriptions/:id/edit(.:format)                                                        subscriptions#edit
#                          subscription GET    /subscriptions/:id(.:format)                                                             subscriptions#show
#                                       PATCH  /subscriptions/:id(.:format)                                                             subscriptions#update
#                                       PUT    /subscriptions/:id(.:format)                                                             subscriptions#update
#                                       DELETE /subscriptions/:id(.:format)                                                             subscriptions#destroy
#                                 posts GET    /posts(.:format)                                                                         posts#index
#                                       POST   /posts(.:format)                                                                         posts#create
#                              new_post GET    /posts/new(.:format)                                                                     posts#new
#                             edit_post GET    /posts/:id/edit(.:format)                                                                posts#edit
#                                  post GET    /posts/:id(.:format)                                                                     posts#show
#                                       PATCH  /posts/:id(.:format)                                                                     posts#update
#                                       PUT    /posts/:id(.:format)                                                                     posts#update
#                                       DELETE /posts/:id(.:format)                                                                     posts#destroy
#                                 plans GET    /plans(.:format)                                                                         plans#new
#                       admin_dashboard GET    /admin/dashboard(.:format)                                                               admin/dashboard#index
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#   rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#health_check
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#     new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
#    edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  
<<<<<<< HEAD
  get 'social_media/new'
  get 'social_media/destroy'
  get 'social_media/create'
  get 'social_media/index'
=======
>>>>>>> fefa4fa9e435ef1f9c06d2f4568aae5274fec2f0
  mount Ckeditor::Engine => '/ckeditor'
  root 'home#index'
  # devise for users
  devise_for :users, controllers: { 
                                    registrations: 'authentication/registrations', 
                                    sessions: 'authentication/sessions',
                                    passwords: 'authentication/passwords',
                                    omniauth_callbacks: 'authentication/omniauth' 
                                  }
<<<<<<< HEAD
  
  resources :users
  resources :posts
  resources :contact, only: [:create, :new]
  resources :subscriptions
  resources :markets
  resources :products
  resources :social_media, only: [:new, :show, :destroy, :index]
=======


  get 'posts/show'
  get 'posts/index'
  get 'posts/new'
  get 'posts/destroy'
  
  resources :users, except: [:index]
  resources :contact, only: [:create, :new]
  resources :subscriptions
  resources :posts
  resources :markets
  resources :products
>>>>>>> fefa4fa9e435ef1f9c06d2f4568aae5274fec2f0
  # resources :users, except: []

  # devise_for :users, skip: [:sessions, :registrations, :passwords]
  
    # as :user do
    #   get 'signin', to: 'authentication/sessions#new', as: :new_user_session
    #   post 'signin', to: 'authentication/sessions#create', as: :user_session
    #   delete 'signout', to: 'authentication/sessions#destroy', as: :destroy_user_session

    #   get 'register', to: 'authentication/registrations#new', as: :new_user_registration
    #   post 'register', to: 'authentication/registrations#create', as: :user_registration

    #   get 'forgot-password', to: 'authentication/passwords#new', as: :new_user_password
    #   post 'forgot-password', to: 'authentication/passwords#create', as: :user_password
    #   put 'reset-password', to: 'authentication/passwords#edit'
    # end

  get 'plans', to: 'plans#index'

  namespace :admin do
    get '/dashboard', to: 'dashboard#index', as: :dashboard
  end
  
  get 'posts/search', to: 'posts#search', as: :search_posts
  get '/search', to: 'search#index', as: :search_page

end
