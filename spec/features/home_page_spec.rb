require 'rails_helper'

describe "user sign up", :type => feature do
  it "directs user to sign in/sign up page" do
    visit('/')
    expect(page).to have_content "Sign In"
    expect(page).to have_content "Sign Up"
  end

  it 'directs user to a new user sign up form' do
    visit '/'
    click_link "Sign Up"
    expect(page).to have_content "New User Sign Up"
    expect(page).to have_field "username"
    expect(page).to have_field "password"
  end

  it 'creates a new user' do
    visit '/'
    click_link "Sign Up"
    fill_in 'username', :with => "example@something.com"
    fill_in 'password', :with => "password"
  end
end




=begin

describe "the signin process", :type => :feature do
  before :each do
    User.make(:email => 'user@example.com', :password => 'password')
  end

  it "signs me in" do
    visit '/sessions/new'
    within("#session") do
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'password'
    end
    click_button 'Sign in'
    expect(page).to have_content 'Success'
  end
end

=end
