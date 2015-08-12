# Pretty Fail Formatter

An rspec formatter which is concise on success and pretty on failures. It behaves like the standard formatter, printing only nice green dots.
Except when a spec failes, then it prints the failing spec verbosely, so that you instantly see what's wrong.

    $ bundle exec rspec spec/models/admin_spec.rb -f PrettyFailFormatter
    ....F

      1) Admin#does something stupid
         Failure/Error: expect(subject.stupid).to be true

           expected: true
                got: false

           (compared using ==)

           Diff:
           @@ -1,2 +1,2 @@
           -true
           +false

         # ./spec/models/admin_spec.rb:44:in `block (3 levels) in <top (required)>'
    ...........

    Finished in 1.24 seconds (files took 3.64 seconds to load)
    16 examples, 1 failure

    Failed examples:

    rspec ./spec/models/admin_spec.rb:37 # Admin#does something stupid

## Installation

Put it in your `Gemfile`

    gem 'rspec-pretty_fail_formatter'

Run `bundle install`

If you don't user Bundler you can install it using the `gem` command:

    $ gem install rspec-pretty_fail_formatter

# Usage

Add the following to your `spec/spec_helper.rb` file:

    require 'rspec-pretty_fail_formatter'

Add (or change) the following in your `.rspec` file:

    --format PrettyFailFormatter

Alternatively, you can add the following to the `spec/spec_helper.rb` file:

    RSpec.configure {|c| c.add_formatter PrettyFailFormatter }

or run rspec with the propper command line argument:

    $ rspec --f PrettyFailFormatter


## Contributing

 * Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
 * Check out the github issues to make sure someone already hasn't requested it and/or contributed it
 * Fork the project
 * Start a feature/bugfix branch
 * Commit and push until you are happy with your contribution

## Copyright

Copyright (c) 2015 Philipp Tessenow. This project is MIT licensed, see LICENSE.md for details.

