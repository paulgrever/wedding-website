require 'rails_helper'

RSpec.describe "Home", type: :feature, js: true do
  describe 'visit' do
    it 'visits home' do
      visit '/'
      expect(page).to have_content('Johnson/Grever')
    end
    it 'has a modal' do
      visit '/'
      expect(page).to have_content('Who are the the Bones??')
      find(:css, "div.col-sm-2 button.close[data-dismiss=modal]").click
      expect(page).not_to have_content('Who are the the Bones??')
    end
  end
end