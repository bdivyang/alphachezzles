require 'spec_helper'

describe "Pages" do

  describe "Home page" do

      it "should have content 'Chezzles'" do
          visit '/pages/home'
          page.should have_selector('h1', :text => 'Welcome to Chezzles')
      end

      it "should have title 'Welcome to Chezzles'" do
          visit '/pages/home'
          page.should have_selector('title', :text => 'Welcome to Chezzles')
      end

      it "should not have title '| Home'" do
        visit '/pages/home'
        page.should_not have_selector('title', :text => '| Home')
      end

  end

  describe "Dash page" do

    it "should have content 'Dashboard'" do
      visit '/pages/dash'
      page.should have_selector('h1', :text => 'Chezzles Dashboard')
      page.should have_selector('title', :text => 'Welcome to Chezzles | Dash')
    end

    it "should have title 'Welcome to Chezzles | Dash'" do
      visit '/pages/dash'
      page.should have_selector('title', :text => 'Welcome to Chezzles | Dash')
    end

  end

  describe "Profile page" do

    it "should have content 'Profile Info'" do
      visit '/pages/profile'
      page.should have_selector('h1', :text => 'Profile')
      page.should have_selector('title', :text => 'Welcome to Chezzles | Profile')
    end

    it "should have title 'Welcome to Chezzles | Profile'" do
      visit '/pages/profile'
      page.should have_selector('title', :text => 'Welcome to Chezzles | Profile')
    end

  end

end
