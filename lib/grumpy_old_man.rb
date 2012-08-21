# An RSpec shim that provides old school assert methods.
# My contention is that its better to write tests in the same fashion that you write the app.
# This approach is faster since it does away with the need to context switch
# between app logic and a wonky DSL provided by the test suite.
# The barrier to entry is also lower for the unitiated RSpec user.
#
# Consider the following example from the RSpec docs.
#   expect(order.total).to eq(Money.new(5.55, :USD))
#
# Rewritten with GrumpyOldMan.
#   assert_equal order.total, Money.new(5.55, :USD)
#
# The traditional assert allows me to write the same style of code in both the app and my tests.
# This feels much more natural to me. You might not agree, but I'm sticking to my old fashioned assert.
module GrumpyOldMan

  # A simple assert for RSpec so folks don't have to learn a wonky DSL
  # and monkeypatched object methods that eventually boil down to a basic "assert" anyway.
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
  # Tests for object equivalence rather than object identity since this is sufficient for 99.9% of tests.
  #
  # @param [Objecct] obj The Object to compare.
  # @param [Objecct] expected The expected value.
  def assert_equal(obj, expected)
    obj.should == expected
  end

  # A basic assert helper that ensures an Error was raised.
  # @param [Class] ex The expected Exception class.
  def assert_raise(ex, &block)
    Proc.new(&block).should raise_error(ex)
  end

end

