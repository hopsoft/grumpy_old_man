require File.expand_path("../../lib/grumpy_old_man", __FILE__)

describe RSpec do
  include GrumpyOldMan

  it "should support assert with GrumpyOldMan" do
    assert self.respond_to? :assert
  end

  it "should support assert_equal with GrumpyOldMan" do
    assert_equal self.respond_to?(:assert), true
  end

  it "should support assert_raise with GrumpyOldMan" do
    assert self.respond_to?(:assert_raise)
    assert_raise(Exception) { raise }
  end
end

