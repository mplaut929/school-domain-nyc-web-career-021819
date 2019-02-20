# code here!

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

#   def add_student(name, grade)
#       @name = name
#       @grade = grade
#     if roster.has_key?(@grade)
#       roster[@grade] << name
#     else
#       roster[@grade] = [@name]
#     end
#   end
# end

  def add_student(name, grade)
    if roster.has_key?(grade)
      roster[grade] << name
    else
      roster[grade] = [name]
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    new_hash = {}
    roster.each do |keys, values|
      new_hash[keys] = values.sort
    end
    new_hash
  end
end
