require 'spec_helper'

describe "Static pages, man," do

  describe "Home page" do
    it "really ought to have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "really ought to have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "yeah the Help page, man," do
    it "really ought to have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "you know, it should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "really should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "really should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

end
