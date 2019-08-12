require 'pry'
class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(doctor_name)
    @name = doctor_name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    result = []
    Appointment.all.each do |appointment|
      
    end
  end
  
  def new_appointment(date, patient_name)
    Appointment.new(date, patient_name, self)
  end

  def patients
    result = []
    patient_array = []
    Patient.all.each do |patient|
      result << patient
    end
    return result
  end

  
end