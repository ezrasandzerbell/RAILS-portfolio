require 'rails_helper'

describe "Create Projects" do
  it "Create and View Product" do
    user = FactoryGirl.create(:user)
    visit '/users/sign_in'
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    visit '/users/1/projects'
    expect(page).to have_content 'Github Projects'
  end
end
