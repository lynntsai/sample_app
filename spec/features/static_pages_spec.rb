require 'spec_helper'

feature "Static pages" do
  scenario "Home page" do
    visit '/static_pages/home'
    expect(page).to have_content('Sample App')

    visit '/static_pages/home'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
  end

  scenario "Help page" do
    visit '/static_pages/help'
    expect(page).to have_content('Help')

    visit '/static_pages/help'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")

  end

  scenario "About page" do
    visit '/static_pages/about'
    expect(page).to have_content('About Us')

    visit '/static_pages/about'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")

  end

end
