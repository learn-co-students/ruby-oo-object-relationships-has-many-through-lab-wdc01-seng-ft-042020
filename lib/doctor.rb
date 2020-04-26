class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select {|ap| ap.doctor == self}
    end

    def new_appointment(pt, dt)
        Appointment.new(dt, pt, self)
    end

    def patients
        appointments.map {|ap| ap.patient}
    end

    def self.all
        @@all
    end
end
