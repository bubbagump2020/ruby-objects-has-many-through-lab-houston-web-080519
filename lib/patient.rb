require 'pry'
class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(patient_name)
    @name = patient_name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
  
  def appointments
    result = []
    Appointment.all.select do |appointment|
      appointment.date
      
      #binding.pry
    end
    result
  end
  
  def doctors
    result = []
    Doctor.all.each do |doctor|
      result << doctor.name
    end
  end

end