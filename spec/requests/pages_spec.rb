require 'spec_helper'

describe "Pages" do

  describe "Home page" do

      it "should have content 'Chezzles'" do
          visit '/pages/home'
          page.should have_selector('h1', :text => 'Welcome to Chezzles')
          page.should have_selector('title', :text => 'Welcome to Chezzles | Home')
      end

  end

  describe "Dash page" do

    it "should have content 'Dashboard'" do
      visit '/pages/dash'
      page.should have_selector('h1', :text => 'Chezzles Dashboard')
      page.should have_selector('title', :text => 'Welcome to Chezzles | Dash')
    end

  end

  describe "Profile page" do

    it "should have content 'Profile Info'" do
      visit '/pages/profile'
      page.should have_selector('h1', :text => 'Profile')
      page.should have_selector('title', :text => 'Welcome to Chezzles | Profile')
    end

  end

end
