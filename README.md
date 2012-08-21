# Grumpy Old Man

## Adding old school asserts to RSpec.

![GrumpyOldMan GEM](http://hopsoft.github.com/grumpy_old_man/images/clint-eastwood.jpg)

<br />
<br />

GrumpyOldMan adds the following methods to RSpec without compromising any of RSpecs awesomeness.

* `assert`
* `assert_equal`
* `assert_raise`

Yes you really can have your cake and eat it too!

---

I love several things about RSpec.

* Its beautiful output from the test runner
* Its declarative approach to writing tests... well at least the outer wrapper e.g. `describe Thing; it 'should do stuff'`

I lament the fact that the rest of RSpec is an over engineered solution to a simple problem:
`assert true`

---

My contention is that its better to write tests in the same manner you write the app.
This approach does away with the context switching between app syntax and a wonky DSL confined to the test suite.

It also lowers the barrier to entry.

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

Asserts allow me to write code that more closely resembles the app logic itself... which feels more natural.

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

<a href="https://github.com/hopsoft/grumpy_old_man"><img style="position: fixed; top: 0; right: 0; border: 0; z-index: 9999;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_red_aa0000.png" alt="Fork me on GitHub"></a>
