# frozen_string_literal: true

require File.expand_path("../../lib/grumpy_old_man", __FILE__)

describe RSpec do
  include GrumpyOldMan

  it "should support assert with GrumpyOldMan" do
    assert true
  end

  it "should support refute with GrumpyOldMan" do
    refute false
  end

  it "should support assert_equal with GrumpyOldMan" do
    assert_equal true, true
  end

  it "should support assert_raise with GrumpyOldMan" do
    assert_raise(Exception) { raise }
  end
end
