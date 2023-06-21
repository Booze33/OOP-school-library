require './person'

class Student < Person
  def initialize(classroom, name = 'Unknow', age = nil, parent_permission: true)
    super(name, age, parent_permission)
    @classroom = classroom
    add_to_classroom if classroom
  end

  def add_to_classroom
    classroom.add_student(self) unless classroom.students.include?(self)
      
    end
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
