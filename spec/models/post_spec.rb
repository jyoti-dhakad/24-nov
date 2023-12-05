require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is valid with valid attributes' do
    post = Post.new(title: 'Test Post', content: 'This is a test post.')
    expect(post).to be_valid
  end

  it 'is not valid without a title' do
    post = Post.new(content: 'This post has no title.')
    expect(post).to_not be_valid
  end
end
