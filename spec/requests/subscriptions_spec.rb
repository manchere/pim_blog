 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe SubscriptionsController, type: :request do
  # Subscription. As you add validations to Subscription, be sure to
  # adjust the attributes here as well.
  let(:subscription) { FactoryBot.create :user}

  let(:inuser) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "#index" do
    it "renders a successful response" do
      subscription: user
      get subscriptions_url
      expect(response).to be_successful
    end
  end

  describe "#show" do
    it "renders a successful response" do
      subscription = Subscription.create! user
      get subscription_url(subscription)
      expect(response).to be_successful
    end
  end

  describe "#new" do
    it "renders a successful response" do
      get new_subscription_url
      expect(response).to be_successful
    end
  end

  describe "#edit" do
    it "render a successful response" do
      subscription = Subscription.create! user
      get edit_subscription_url(subscription)
      expect(response).to be_successful
    end
  end

  describe "#create" do
    context "with valid parameters" do
      it "creates a new Subscription" do
        expect {
          post subscriptions_url, params: { subscription: user }
        }.to change(Subscription, :count).by(1)
      end

      it "redirects to the created subscription" do
        post subscriptions_url, params: { subscription: user }
        expect(response).to redirect_to(subscription_url(Subscription.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Subscription" do
        expect {
          post subscriptions_url, params: { subscription: inuser }
        }.to change(Subscription, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post subscriptions_url, params: { subscription: inuser }
        expect(response).to be_successful
      end
    end
  end

  describe "#update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested subscription" do
        subscription = Subscription.create! user
        patch subscription_url(subscription), params: { subscription: new_attributes }
        subscription.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the subscription" do
        subscription = Subscription.create! user
        patch subscription_url(subscription), params: { subscription: new_attributes }
        subscription.reload
        expect(response).to redirect_to(subscription_url(subscription))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        subscription = Subscription.create! user
        patch subscription_url(subscription), params: { subscription: inuser }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested subscription" do
      subscription = Subscription.create! user
      expect {
        delete subscription_url(subscription)
      }.to change(Subscription, :count).by(-1)
    end

    it "redirects to the subscriptions list" do
      subscription = Subscription.create! user
      delete subscription_url(subscription)
      expect(response).to redirect_to(subscriptions_url)
    end
  end
end
