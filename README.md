# Where did my assert go?

GrumpyOldMan is an RSpec shim that provides old school assert methods.

---

I love several things about RSpec.

* Its beautiful output from the test runner
* Its declarative approach to writing tests

  * Well at the the outer wrapper e.g. `describe Thing it 'should do stuff'`

But... I lament the fact that the rest of RSpec is an over engineered solution to a simple problem.
`assert true`

---

My contention is that its better to write tests in the same fashion that you write the app.

This approach is faster since it does away with the context switching between app logic and a wonky DSL.

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

Asserts allow me to write code that more closely resembles the app logic itself.

... and this feels much more natural.

You might not agree, but I'm sticking with my old fashioned assert.

**Now get off my lawn!**
