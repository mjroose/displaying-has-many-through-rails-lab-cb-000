class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def formatted_appointment_datetime
    # "January 11, 2016 at 20:20"
    self.appointment_datetime.strftime('%B %e, %Y at %H:%M')
  end
end
