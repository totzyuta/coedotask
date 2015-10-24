class Task < ActiveRecord::Base
  def self.calc_total_time
    Task.pluck(:time).inject(&:+)
  end
end
