class BoatingTest

    attr_accessor :test_status
    attr_reader :student, :test_name, :instuctor

    @@all = []

    def initialize(student, test_name, test_status, instuctor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instuctor = instuctor
        @@all << self
    end

    def self.all
        @@all
    end

end
