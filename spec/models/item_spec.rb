require 'spec_helper'

describe "login page" do
	before {visit login_path }

	it { should have_selector('h1', text: "Logout") }
end

describe Item do 
	it "invalid without title" do 	 	
	 	subject.should_not be_valid
	end

	it { should respond_to(:title) }
end
