RSpec.describe NumbersController, type: :controller do
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
end
