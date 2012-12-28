# Grumpy Old Man

## Adding old school asserts to RSpec

![GrumpyOldMan GEM](http://hopsoft.github.com/grumpy_old_man/images/clint-eastwood.jpg)

#### Do you feel lucky? ... punk.

GrumpyOldMan adds the following methods to RSpec without compromising any of RSpecs awesomeness.

* `assert`
* `assert_equal`
* `assert_raise`

Yes you really can have your cake and eat it too!

---

I love several things about RSpec.

* Its beautiful output from the test runner
* Its declarative approach to writing tests... well at least the outer wrapper e.g. `describe Thing; it 'should do stuff'`

Unfortunately parts of RSpec add unwanted complexity to a relatively simple problem:
`assert true`

---

I contend its better to write tests in the same manner you write the app.
This reduces cognitive load because it removes the need for context switching between app code
and wonky DSLs in the test suite.

It also lowers the barrier to entry for new team members unfamiliar with RSpec.

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

Asserts allow you to write code that more closely resembles the app logic itself
which feels more natural.

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
    assert_equal true, true
  end

  it "should be exceptional" do
    assert_raise(Exception) { raise }
  end

end
```

You might not agree, but I'm sticking with my old fashioned assert.

**Now get off my lawn!**

If you like GrupyOldMan, checkout [MicroTest](http://hopsoft.github.com/micro_test/) and discover just how serene testing can be.

