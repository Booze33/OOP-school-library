require_relative './person.rb'

class Teacher < Person
  def initialize(specialization, name='Unknow', age=nil, parent_permission = true)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end