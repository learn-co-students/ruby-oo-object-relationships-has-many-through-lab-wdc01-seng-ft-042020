class Doctor


    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # Class Method

    def self.all
        @@all
    end


    #Instance Methods 

    def appointments
        Appointment.all.select { |a| a.doctor == self }
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end


    def patients
        self.appointments.map { |a| a.patient }
    end





end
