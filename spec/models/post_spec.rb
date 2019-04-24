require 'rails_helper'

RSpec.describe Post, type: :model do
	describe "validation not empty" do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }
  
end
end