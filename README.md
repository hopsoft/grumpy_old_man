# Grumpy Old Man

[![Build Status](https://travis-ci.org/hopsoft/grumpy_old_man.png?branch=master)](https://travis-ci.org/hopsoft/grumpy_old_man)
[![Dependency Status](https://gemnasium.com/hopsoft/grumpy_old_man.png)](https://gemnasium.com/hopsoft/grumpy_old_man)
[![Code Climate](https://codeclimate.com/github/hopsoft/grumpy_old_man.png)](https://codeclimate.com/github/hopsoft/grumpy_old_man)

## Adding old school asserts to RSpec

GrumpyOldMan adds the following methods to RSpec without compromising any of RSpec's awesomeness.

* `assert`
* `assert_equal`
* `assert_raise`

I love several things about RSpec.

* Its beautiful output from the test runner
* Its declarative approach to writing tests... well at least the outer wrapper i.e.

```ruby
describe Thing do
  it 'should do stuff' do
    # ...
  end
end
```

Unfortunately parts of RSpec add unwanted complexity to a relatively simple problem:

```ruby
assert true
```

## Simple is better

I contend it's better to write tests in the same manner you write your app.
Doing so reduces cognitive load by eliminating the context switching
between app code and wonky DSLs in the test suite.

It simplifies your tests... and that's a [good thing](http://en.wikipedia.org/wiki/Unix_philosophy#.22Worse_is_better.22).

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

Asserts encourage tests that more closely resemble the app logic itself.
Making tests look familiar & more natural.

## Usage

```bash
gem install grumpy_old_man
```

Simply include GrumpyOldMan in your spec/test like so.

```ruby
require 'grumpy_old_man'

describe Thing
  include GrumpyOldMan

  it "should feel good" do
    assert true
  end

  it "should be balanced" do
    actual = true
    expected = true
    assert_equal actual, expected
  end

  it "should be exceptional" do
    assert_raise(Exception) do
      raise
    end
  end

end
```

You might not agree, but I'm sticking with my old fashioned assert.

**Now get off my lawn!**

*If you like GrupyOldMan, check out [MicroTest](http://hopsoft.github.com/micro_test/) and discover just how serene testing can be.*

