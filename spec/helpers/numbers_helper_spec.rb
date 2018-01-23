require 'rails_helper'

RSpec.describe NumbersHelper, type: :helper do
   let(:user) { create :user }
   let(:current_user) { user }
   let!(:user_favorites) { create :user_favorite, user_id: user.id }


  before :each do
    allow(controller).to receive :authenticate_user!
    allow(controller).to receive(:current_user) { user }
  end

  describe "#fizzbuzz" do
    it "return html table given a list of values" do
      results = helper.fizzbuzz([1, 2, "Fizz", 4, "Buzz"])
      expect(results).to have_content('Fizz', count: 1)
      expect(results).to have_content('Buzz', count: 1)
      expect(results).to have_content('Favorited', count: 1)
    end
  end
end


