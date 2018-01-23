require 'rails_helper'

RSpec.feature "Basic Fizzbuzz feature tests", type: :feature do
  before :each do
    user = create(:user)
    login_as(user, scope: :user)
  end

  describe 'end to end tests' do
    it 'defaults to 100 numbers' do
      visit '/?page_size=100'
      expect(page).to have_content('Fizz', count: 33  )
      expect(page).to have_content('Buzz', count: 14)
    end

    it 'can receive a custom max value' do
      visit '/?max=10&page_size=100'
      expect(page).to have_content('Fizz', count: 3)
      expect(page).to have_content('Buzz', count: 2)
    end

    it 'returns back to 100 if max is 0' do
      visit '/?max=0&page_size=100'
      expect(page).to have_content('Fizz', count: 33)
      expect(page).to have_content('Buzz', count: 14)
    end

    it 'cannot go beyond 100,000,000,000' do
      visit '/?max=100000000001&page_size=100'
      expect(page).to have_content('Fizz', count: 33)
      expect(page).to have_content('Buzz', count: 14)
    end
  end

  describe '#add_favorite' do
    it 'marks a number as favorite' do
      user = create(:user)
      login_as(user, scope: :user)

      visit '/'

      click_on 'fav_4'
      expect(page).to have_css('#fav_4', text: 'Favorited')
    end
  end
end

