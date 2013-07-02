require 'spec_helper'

describe Item do 
	before { @item = Item.new(title: "Welcome to NY", body: "This is sample text", latitude: '46.303645', longitude: '30.66429' )}

		subject { @item }

	it { should respond_to(:title) }
	it { should respond_to(:body) }
	it { should respond_to(:latitude) }
	it { should respond_to(:longitude) }
end
