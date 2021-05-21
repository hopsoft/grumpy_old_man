# frozen_string_literal: true

require File.expand_path("../../lib/grumpy_old_man", __FILE__)

RSpec.configure do |config|
  config.expect_with(:rspec) { |c| c.syntax = :should }
end

describe RSpec do
  include GrumpyOldMan

  it "should support assert with GrumpyOldMan" do
    assert respond_to? :assert
  end

  it "should support assert_equal with GrumpyOldMan" do
    assert_equal respond_to?(:assert), true
  end

  it "should support assert_raise with GrumpyOldMan" do
    assert respond_to?(:assert_raise)
    assert_raise(Exception) { raise }
  end
end
