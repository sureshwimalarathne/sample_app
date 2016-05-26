require 'rails_helper'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

describe "Static pages" do
	describe "Home page" do
		it "should have the content 'Sample App'" do
			visit "/static_pages/home"
			page.should have_selector('h1', :text => 'Sample App')
		end
		it "should have the title 'Sample App'" do
			visit "static_pages/home"
			page.should_not have_selector('title',
			:text => "| Home",
			:visible => false)
		end
	end		
	describe "Help page" do
		it "should have the content 'Help'" do
			visit "/static_pages/help"
			page.should have_selector('h1', :text => 'Help')
		end
		it "should have the title 'Help'" do
			visit "static_pages/help"
			page.should have_selector('title',
			:text => "Ruby on Rails Tutorial Sample App | Help",
			:visible => false)
		end
	end
	describe "About page" do
		it "should have the content 'About Us'" do
			visit "static_pages/about"
			page.should have_selector('h1', :text => 'About Us')
		end
		it "should have the title 'About Us'" do
			visit "static_pages/about"
			page.should have_selector('title',
			:text => "Ruby on Rails Tutorial Sample App | About Us",
			:visible => false)
		end
	end
	describe "Contact page" do
		it "should have the content 'Contact'" do
			visit "static_pages/contact"
			page.should have_selector('h1', :text => 'Contact')
		end
		it "should have the title 'Contact'" do
			visit "static_pages/contact"
			page.should have_selector('title',
				:text => "Ruby on Rails Tutorial Sample App | Contact",
				:visible => false)
		end
	end
end
