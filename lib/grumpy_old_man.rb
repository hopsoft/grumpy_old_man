require "grumpy_old_man/version"

# A mixin for RSpec tests that provides old school assert methods.
module GrumpyOldMan

  # A simple assert for RSpec.
  #
  # @example
  #   assert(true)
  #
  # @example
  #   assert { true.to_s == "true" }
  #
  # @param [Object] arg An optional arg to assert as equal to true.
  def assert(arg=nil)
    if block_given?
      assert_equal(yield, true)
    else
      assert_equal(arg, true)
    end
  end

  # A basic assert helper that tests for Object equality.
  # Tests for object equivalence rather than object identity since this is sufficient for most tests.
  #
  # @param [Object] actual The Object to compare.
  # @param [Object] expected The expected value.
  def assert_equal(actual, expected)
    expected.should == actual
  end

  # A basic assert helper that ensures an Error was raised.
  # @param [Class] ex The expected Exception class.
  def assert_raise(ex, &block)
    Proc.new(&block).should raise_error(ex)
  end

end

