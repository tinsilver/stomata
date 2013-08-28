require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "create a post" do
    p = Post.create(:content => 'trivial', :title => "foo")
    assert_equal 1, Post.count
    assert_equal 'trivial', p.content
  end

  test "titles greater than thirty long should be invalid" do
    p = Post.create(:content => 'trivial', :content => "a" * 256)
    assert_match /Content is too long/, p.errors.full_messages.join
  end

end