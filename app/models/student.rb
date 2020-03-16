class Student

    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all 
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
       new_test = BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        self.all.find{|student| student.first_name == name}
    end

    def grade_percentage
        all_tests = BoatingTest.all.find_all{|test| test.student.first_name == self.first_name}
        all_tests_length = all_tests.length.to_f
        total_passed = all_-tests.find_all{|test| test.status == "passed"}
        number_passed= total_passed.length.to_f
        numPassed / totalTests * 100
    end
end
