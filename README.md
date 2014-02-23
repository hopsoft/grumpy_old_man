# Grumpy Old Man

## Adding old school asserts to RSpec

GrumpyOldMan adds the following methods to RSpec without compromising any of RSpec's awesomeness.

* `assert`
* `assert_equal`
* `assert_raise`

Yes you really can have your cake and eat it too!

---

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

Unfortunately parts of RSpec add unwanted complexity to a relatively simple problem.

```ruby
assert true
```

---

I contend its better to write tests in the same manner you write your app.
Doing so reduces cognitive load by eliminating the context switching between app code
and wonky DSLs in the test suite.

It also lowers the barrier to entry for new team members because it simplifies your tests.

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
    assert_equal true, true
  end

  it "should be exceptional" do
    assert_raise(Exception) { raise }
  end

end
```

You might not agree, but I'm sticking with my old fashioned assert.

**Now get off my lawn!**

*If you like GrupyOldMan, check out [MicroTest](http://hopsoft.github.com/micro_test/) and discover just how serene testing can be.*

