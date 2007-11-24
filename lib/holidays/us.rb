module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/us.yaml, data/north_america_informal.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/us'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module US # :nodoc:
    DEFINED_REGIONS = [:us, :ca]

    HOLIDAYS_BY_MONTH = {
      5 => [{:wday => 1, :week => -1, :name => "Memorial Day", :regions => [:us]},
            {:wday => 0, :week => 3, :type => :informal, :name => "Father's Day", :regions => [:us, :ca]}],
      0 => [{:function => lambda { |year| Holidays.easter(year)-2 }, :type => :informal, :name => "Good Friday", :regions => [:us]}],
      11 => [{:mday => 11, :name => "Veterans Day", :regions => [:us]},
            {:wday => 4, :week => 4, :name => "Thanksgiving Day", :regions => [:us]}],
      1 => [{:mday => 1, :name => "New Year's Day", :regions => [:us]},
            {:wday => 1, :week => 3, :name => "Martin Luther King, Jr. Day", :regions => [:us]},
            {:function => lambda { |year| Holidays.us_inauguration_day(year) }, :name => "Inauguration Day", :regions => [:us]}],
      12 => [{:mday => 25, :name => "Christmas Day", :regions => [:us]}],
      7 => [{:mday => 4, :name => "Independence Day", :regions => [:us]}],
      2 => [{:mday => 2, :type => :informal, :name => "Groundhog Day", :regions => [:us, :ca]},
            {:mday => 14, :type => :informal, :name => "Valentine's Day", :regions => [:us, :ca]}],
      3 => [{:wday => 1, :week => 3, :name => "Presidents' Day", :regions => [:us]},
            {:mday => 17, :type => :informal, :name => "St. Patrick's Day", :regions => [:us, :ca]}],
      9 => [{:wday => 1, :week => 1, :name => "Labor Day", :regions => [:us]}],
      4 => [{:mday => 1, :type => :informal, :name => "April Fool's Day", :regions => [:us, :ca]},
            {:mday => 22, :type => :informal, :name => "Earth Day", :regions => [:us, :ca]}],
      10 => [{:wday => 1, :week => 2, :name => "Columbus Day", :regions => [:us]},
            {:mday => 31, :type => :informal, :name => "Halloween", :regions => [:us, :ca]}]
    }
  end

# January 20, every fourth year, following Presidential election
def self.us_inauguration_day(year)
  year % 4 == 1 ? 20 : nil
end


end

Holidays.merge_defs(Holidays::US::DEFINED_REGIONS, Holidays::US::HOLIDAYS_BY_MONTH)