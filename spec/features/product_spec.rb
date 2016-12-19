require 'rails_helper'

RSpec.feature('User can see list of products') do
  before(:each) do
    @product1 = FactoryGirl.create(:product)
    @product2 = FactoryGirl.create(:product)
  end
  scenario('Create a user') do
    sign_in_user
    visit root_path
    expect(page).to have_content @product1.name
    expect(page).to have_content @product2.name
  end
end


