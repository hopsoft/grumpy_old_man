require File.join(File.dirname(__FILE__), "..", "lib", "grumpy_old_man")

describe RSpec do
  # we eat our dog food
  include GrumpyOldMan

  it "should support assert with GrumpyOldMan" do
    assert self.respond_to? :assert
  end

  it "should support assert_equal with GrumpyOldMan" do
    assert_equal true, self.respond_to?(:assert)
  end

  it "should support assert_raise with GrumpyOldMan" do
    assert self.respond_to?(:assert_raise)
    assert_raise(Exception) { raise }
  end

end

