# encoding: utf-8
module Holidays
  module Gusto # :nodoc:
    def self.defined_regions
      [:gusto]
    end

    def self.holidays_by_month
      {
          1 => [{:mday => 1, :name => "New Year's Day", :regions => [:gusto]}],
          5 => [{:wday => 1, :week => -1, :name => "Memorial Day", :regions => [:gusto]}],
          7 => [{:mday => 4, :observed => lambda { |date| Holidays.to_monday_if_sunday(date) }, :observed_id => "to_monday_if_sunday", :name => "Independence Day", :regions => [:gusto]}],
          9 => [{:wday => 1, :week => 1, :name => "Labor Day", :regions => [:gusto]}],
          11 => [{:wday => 4, :week => 4, :name => "Thanksgiving", :regions => [:gusto]},
                {:wday => 5, :week => 4, :name => "Day After Thanksgiving", :regions => [:gusto]}],
          12 => [{:mday => 25, :name => "Christmas Day", :regions => [:us, :gusto]}]
      }
    end
  end
end

Holidays.merge_defs(Holidays::Gusto.defined_regions, Holidays::Gusto.holidays_by_month)
