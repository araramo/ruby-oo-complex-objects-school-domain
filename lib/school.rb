# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(year)
        @roster[year]
    end

    def sort
        @roster.each do |s,g|
            g.sort!
        end
    end
    
end