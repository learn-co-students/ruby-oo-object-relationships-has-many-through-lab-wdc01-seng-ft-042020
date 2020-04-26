class Appointment
    @@all = []
    attr_accessor :date, :patient, :doctor
    def initialize(date, patient, doctor)
        @date, @patient, @doctor = date, patient, doctor
        
        @@all << self
    end

    def self.all
        @@all
    end



end
