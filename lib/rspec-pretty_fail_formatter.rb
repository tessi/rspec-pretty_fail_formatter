require 'rspec'
require 'rspec/core/formatters/progress_formatter'

require 'pry'

class PrettyFailFormatter < RSpec::Core::Formatters::ProgressFormatter
  RSpec::Core::Formatters.register self, :example_passed, :example_pending, :example_failed, :start_dump

  def initialize(*args)
    @failure_index = 0
    super
  end

  def example_failed(notification)
    @failure_index += 1
    output.print RSpec::Core::Formatters::ConsoleCodes.wrap('F', :failure)
    output.puts
    output.puts notification.fully_formatted(@failure_index)
  end

  def dump_failures(notification)
    return # already printed them inline
  end
end
