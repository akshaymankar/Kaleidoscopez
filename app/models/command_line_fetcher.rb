require File.dirname(__FILE__) + ('/../boot')
class CommandLineFetcher
  def self.fetch
    CommandLine.all.each do |cl|
        cl.read_items
    end
  end
end

CommandLineFetcher.fetch