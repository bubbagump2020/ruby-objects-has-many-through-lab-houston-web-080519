require 'pry'
class Appointment
  
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def initialize(patient, date, doctor)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
    #binding.pry
  end
  
  def self.all
    @@all
  end
  
  
end