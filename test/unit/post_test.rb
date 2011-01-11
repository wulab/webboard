require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "post attributes must not be empty" do
    post = Post.new
    assert post.invalid?
    assert post.errors[:title].any?
    assert post.errors[:body].any?
  end
end
