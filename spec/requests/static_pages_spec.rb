require 'spec_helper'

describe "Static pages, man," do
  let(:title_main) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
    it "really ought to have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "really ought to have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "#{title_main} | Home")
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
                        :text => "#{title_main} | Help")
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
                        :text => "#{title_main} | About Us")
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                          :text => "#{title_main} | Contact")
    end
  end

end
