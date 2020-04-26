class Patient
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doc, date)
        Appointment.new(date, self, doc)
    end

    def appointments
        Appointment.all.select {|ap| ap.patient ==self}
    end

    def doctors
        appointments.map {|ap| ap.doctor}
    end

    def self.all
        @@all
    end

end
