require 'optparse'
require 'optparse/time'
require 'ostruct'
class ParseOptions

  CODES = %w[iso-2022-jp shift_jis euc-jp utf8 binary]
  CODE_ALIASES = { "jis" => "iso-2022-jp", "sjis" => "shift_jis" }

  def self.parse(args)
  options = OpenStruct.new

  opt_parser = OptionParser.new do |opts|
    opts.banner = "Usage: rubrik.rb [options]"

    opts.separator ""
    opts.separator "Specific options:"
    opts.on('-l', '--login', "Test login to API") do |login|
      options[:login] = login;
    end
    opts.separator ""
    opts.separator "Common options:"
    opts.on('-r', '--rubrik Address', "Rubrik name in .creds") do |o|
      options[:r] = o;
    end
    opts.on('--relic INT', "Number of days since last snapshot") do |o|
      options[:relics] = o;
    end
    opts.on_tail("-h", "--help", "Show this message") do
    puts opts
    exit
    end
  end
  opt_parser.parse!(args)
   options
  end
end
