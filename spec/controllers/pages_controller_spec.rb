require 'spec_helper'

describe PagesController do

  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'about'" do
	  it "should be successful" do
		  get 'about'
		  response.should be_success
	  end
  end

  describe "GET 'help'" do
	  it "should be successful" do
		  get 'help'
		  response.should be_success
	  end
  end

  describe "check titles" do
	  it "should have the right title" do
		  get 'home'
	 	  response.should have_selector("title",
										:content=>" | Home")
		  get 'about'
		  response.should have_selector("title",:content=>" | About")
		  get 'contact'
		  response.should have_selector("title",:content=>" | Contact")
		  get 'help'
		  response.should have_selector("title",:content=>" | Help")
 	 end
  end

end
