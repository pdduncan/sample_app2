require 'spec_helper'

describe "Static pages, man," do

  describe "Home page" do
    it "really ought to have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end

  describe "yeah the Help page, man," do
    it "really ought to contain 'help'" do
      visit '/static_pages/help'
      page.should have_content('help')
    end
  end

  describe "About page" do
    it "really should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  end

end
