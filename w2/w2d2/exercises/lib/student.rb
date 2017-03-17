class Student
  attr_reader :courses, :first_name, :last_name
  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
    @courses = []
  end
  
  def name
    "#{first_name} #{last_name}"
  end

  def enroll(course)
    if courses.include?(course)
      return
    elsif self.has_conflict?(course)
      raise "course would cause conflict!"
    else
      self.courses << course
      course.students << self
    end
  end

  def course_load
    this_student_load = Hash.new(0)
    self.courses.each do |course|
      this_student_load[course.department] += course.credits
    end
    this_student_load
  end

  def has_conflict?(new_course)
    self.courses.any? do |enrolled_course|
      new_course.conflicts_with?(enrolled_course)
    end
  end
end
