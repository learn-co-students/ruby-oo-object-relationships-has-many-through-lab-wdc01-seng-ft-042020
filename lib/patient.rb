class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # Class Methods

    def self.all
        @@all
        
    end

    # Instance Methods

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end


    def appointments
        Appointment.all.select { |a| a.patient == self }
    end

    def doctors
        self.appointments.map { |a| a.doctor}
    end




end
