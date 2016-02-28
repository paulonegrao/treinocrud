require 'rails_helper'

RSpec.describe AuctionsController, type: :controller do

  # let will define a variable names whatever you give to the let which is `user`
  # in this case. The variable will be available in any test exmple within the
  # same `describe` or `context`. This `let` is defined in the top level describe
  # which makes it availalbe for all examples.
  # `let` will only invoke the block you give it when you call the variable.
  # if you use `let!` then it will automatically invoke the block every time
  # you run an example even if you don't use the variable.
  let(:user) { FactoryGirl.create(:user) }
  # def user
  #   @user ||= FactoryGirl.create(:user)
  # end

  let(:auction)   { FactoryGirl.create(:auction, user: user) }
  # we're able to just put `create(:auction)` instead of
  # FactoryGirl.create(:campain) beucase we added this line to our `rails_helper`
  # file: config.include FactoryGirl::Syntax::Methods
  let(:auction_1) { create(:auction) }

  describe "#new" do
    context "with user not signed in" do
      it "redirects to user sign in page" do
        get :new
        expect(response).to redirect_to(new_session_path)
      end
    end
    context "with user signed in" do
      before do
        # GIVEN
        u = FactoryGirl.create(:user)
        request.session[:user_id] = u.id

        # WHEN
        get :new
      end

      it "renders the new template" do
        # THEN
        expect(response).to render_template(:new)
      end

      it "create a new auction object assigned to `auction` instance variable" do
        # THEN
        expect(assigns(:auction)).to be_a_new(Auction)
      end
    end
  end

  describe "#create" do
    context "with no user signed in" do
      it "redirects to the sign in page" do
        post :create, {auction: {}} # params don't matter here becuase the
                                     # controller should redirect before making
                                     # use of the auction params
        expect(response).to redirect_to new_session_path
      end
    end

    context "With user signed in" do
      def valid_params
        FactoryGirl.attributes_for(:auction)
      end

      before do
        request.session[:user_id] = user.id
      end

      context "with valid parameters" do
        it "creates a auction record in the database" do
          before_count = Auction.count
          post :create, auction: valid_params
          after_count  = Auction.count
          expect(after_count - before_count).to eq(1)
        end

        it "associates the auction with the signed in user" do
          post :create, auction: valid_params
          expect(Auction.last.user).to eq(user)
        end

        it "redirects to auction show page" do
          post :create, auction: valid_params
          expect(response).to redirect_to(auction_path(Auction.last))
        end
      end
      context "with invalid parameters" do
        def request_with_invalid_title
          post :create, auction: valid_params.merge({title: nil})
        end

        it "doesn't create a auction record in the database" do
          # expect { request_with_invalid_title }.not_to change { Auction.count }
          before_count = Auction.count
          request_with_invalid_title
          after_count  = Auction.count
          expect(before_count).to eq(after_count)
        end

        it "renders the new template" do
          request_with_invalid_title
          expect(response).to render_template(:new)
        end
      end
    end
  end

  describe "#show" do
    it "renders the show template" do
      get :show, id: auction.id
      expect(response).to render_template(:show)
    end

    it "sets a auction instance variable with the passed id" do
      get :show, id: auction.id
      # there must be an instance variable named @auction
      expect(assigns(:auction)).to eq(auction)
    end
  end

  describe "#edit" do
    context "with user not signed in" do
      it "redirects to sign in page" do
        get :edit, id: auction.id
        expect(response).to redirect_to new_session_path
      end
    end
    context "with user signed in" do
      before { request.session[:user_id] = user.id }

      # we defined our `auction` above so that the creator of the auction is
      # `user` so `user` is the owner of the auction so the user can edit it
      context "with user allowed to edit auction" do
        it "renders the edit template" do
          get :edit, id: auction.id
          expect(response).to render_template(:edit)
        end

        it "assigns an instance variable with the same id as the one in the URL" do
          get :edit, id: auction.id
          expect(assigns(:auction)).to eq(auction)
        end
      end
      context "with user not allowed to edit auction" do

        it "redirects to the home page" do
          get :edit, id: auction_1.id
          expect(response).to redirect_to root_path
        end

        it "sets a flash alert message" do
          get :edit, id: auction_1.id
          expect(flash[:alert]).to be
        end
      end
    end
  end

  describe "#update" do
    context "with no signed in user" do
      it "redirects the user to the sign in page" do
        patch :update, id: auction.id, auction: {}
        expect(response).to redirect_to new_session_path
      end
    end

    context "with signed in user" do
      before { request.session[:user_id] = user.id }

      context "user is allowed to update the auction" do
        context "with valid paramters" do
          it "redirects to show page" do
            patch :update, id: auction.id, auction: {title: "new valid title"}
            expect(response).to redirect_to auction_path(auction)
          end
          it "changes the record in the database with new params" do
            patch :update, id: auction.id, auction: {title: "new valid title"}
            # auction.reload will force the object to re-execute the query
            # (find query) to re-fetch the data from the database using the#
            # same id. As if you did:
            # auction = Auction.find(auction.id)
            expect(auction.reload.title).to eq("new valid title")
          end
        end
        context "with invalid paramters" do
          it "render the edit page" do
            patch :update, id: auction.id, auction: {title: ""}
            expect(response).to render_template(:edit)
          end
          it "doesn't change the record in the database" do
            patch :update, id: auction.id, auction: {title: "",
                                                       description: "valid desc"}
            expect(auction.reload.description).not_to eq("valid desc")
          end
        end
      end
      context "user is not allowed to update the auction" do

        it "redirects to home page" do
          patch :update, id: auction_1.id, auction: {title: "some valid title"}
          expect(response).to redirect_to(root_path)
        end
      end
    end

  end

  describe "#index" do


    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
    end

    it "assigns an instance variable auctions with all the auctions" do
      # GIVEN: we have auctions created in the database
      auction
      auction_1
      # WHEN: Making the GET request to the INDEX action
      get :index
      # THEN: I have an instance variable @auctions that contain the two auctions
      expect(assigns[:auctions]).to eq([auction, auction_1])
    end

  end

  describe "#destroy" do
    context "with user not signed in" do
      it "redirects the user to the sign in page" do
        delete :destroy, id: auction.id
        expect(response).to redirect_to new_session_path
      end
    end
    context "with user signed in" do
      before { request.session[:user_id] = user.id }

      context "user is allowed to delete the auction" do
        it "removes the auction from the database" do
          auction # this makes the auction created in the database
          count_before = Auction.count
          delete(:destroy, {id: auction.id})
          count_after = Auction.count
          expect(count_before - count_after).to eq(1)
        end
        it "redirects to the auctions index page" do
          delete(:destroy, {id: auction.id})
          expect(response).to redirect_to(auctions_path)
        end
      end
      context "user is not allowed to delete the auction" do

        it "redirects the user to the home page" do
          delete :destroy, id: auction_1.id
          expect(response).to redirect_to(root_path)
        end
      end
    end
  end

end
