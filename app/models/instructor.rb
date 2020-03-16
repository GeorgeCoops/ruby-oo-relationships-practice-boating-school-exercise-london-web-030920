class Instructor

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def pass_student(student, test_name)
        passing_test = BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.name == test_name}
        if passing_test
            passing_test.status= "passed"
        else
          BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student, test_name)
        failing_test = BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.name == test_name}
        if failing_test
            failing_test.status = "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

end
