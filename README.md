# SimpleDelegate

## Install

Add to your Gemfile and bundle.

```ruby
gem "simple_delegate"
```

## How to use

Add to your class and start delegating:

```ruby
class MyClass
  include SimpleDelegate
  
  delegate :something, to: :another_method
  
  def another_method
    SomeModel.new
  end
end
```

```ruby
class MyClass
  include SimpleDelegate
  
  delegate :something, to_instance_variable: :some_variable
  
  def initialize
    @some_variable = SomeModel.new
  end
end
```

## Contributing to simple_delegate
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2016 kaspernj. See LICENSE.txt for
further details.
