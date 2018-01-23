RSpec.describe NumbersController, type: :controller do
  let!(:user) { create :user }
  let!(:user_favorites) { create :user_favorite }

  before do
    allow(controller).to receive :authenticate_user!
    allow(controller).to receive(:current_user) { user }
  end

  describe "#index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end

    context 'find fizz buzz' do
      it 'that can be found and redirects to root' do
        get :index, params: { max: 100, page_size: 10 }
        expect(response).to render_template("index")
        expect(assigns(:values).count).to eq(10)
        expect(assigns(:values).count('Fizz')).to eq(3)
        expect(assigns(:values).count('Buzz')).to eq(2)
      end
    end
  end

  describe '#add_favorite' do
    it 'marks a number as favorite' do
      get :add_favorite, params:  { number: 4 }
      expect(user.user_favorites.count).to eq(1)
      expect(response).to redirect_to root_path
    end
  end
end
