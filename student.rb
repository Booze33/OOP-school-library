require_relative './person.rb'

class Student < Person
  def initialize(classroom, name='Unknow', age=nil, parent_permission = true)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end