[![Lines of Code](http://img.shields.io/badge/lines_of_code-20-brightgreen.svg?style=flat)](http://blog.codinghorror.com/the-best-code-is-no-code-at-all/)

# Grumpy Old Man

## Adding old school asserts to RSpec

GrumpyOldMan adds the following methods to RSpec without compromising any of RSpec's other features.

* `assert`
* `assert_equal`
* `assert_raise`
* `refute`

> NOTE: If you're using [rspec-rails](https://github.com/rspec/rspec-rails), these methods are delegated to MiniTest and you don't need GrumpyOldMan.

Testing libraries exist to help you do the following.

1. Execute some code
1. Verify that it produced the expected outcome

Or more simply...

```ruby
assert true
```

Unfortunately RSpec adds a lot of [unnecessary complexity](https://fs.blog/2018/01/complexity-bias/).
*Looking at you __expectations__ and __matchers__.*

## Simplicity FTW

Consider the following example from the RSpec docs.

```ruby
expect(order.total).to eq(Money.new(5.55, :USD))
```

Rewritten with GrumpyOldMan.
```ruby
assert order.total == Money.new(5.55, :USD)

# or ...

assert_equal order.total, Money.new(5.55, :USD)
```

Simple `asserts` encourage test code that resembles your application logic.

## Usage

```bash
bundle add grumpy_old_man
```

Simply include GrumpyOldMan in your spec/test like so.

```ruby
require "grumpy_old_man"

describe Thing do
  include GrumpyOldMan

  it "should be simple" do
    assert true
    assert_equal true, true
    assert_raise(Exception) { raise }
    refute false
  end
end
```

You may not agree, but I'm sticking with my old fashioned assert.
**Now get off my lawn!**

*If you like GrupyOldMan, check out [PryTest](https://github.com/hopsoft/pry-test) and discover just how serene testing can be.*
