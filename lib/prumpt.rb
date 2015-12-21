require "prumpt/version"

module Prumpt
  def self.get(str, type)
    if type == :Bool
      print "#{str} (y/n): "
    else
      print "#{str}: "
    end

    input = STDIN.gets.chomp

    case type
    when :String
      input
    when :Int
      input.to_i
    when :Bool
      case input
      when 'y'
        true
      when 'n'
        false
      else
        Prompt.get(str, type)
      end
    when :Array
      input.gsub(',', ' ').split(/\s+/)
    else
      abort('undefined data type in Prompt')
    end
  end
end
