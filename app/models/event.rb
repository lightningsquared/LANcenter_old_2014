class Event < ActiveRecord::Base
  attr_accessible :name, :status, :capacity,
                  :start_time, :end_time,
                  :preregistration_end_time, :preregistration_start_time

  validates_presence_of :name, :start_time, :end_time
end
