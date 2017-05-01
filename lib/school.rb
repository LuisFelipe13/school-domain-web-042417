# code here!
require "pry"
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] = [] if roster[grade] == nil
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = @roster[grade].sort
    end
  end
end
