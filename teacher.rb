require_relative 'person'

class Teacher < Person
  def initialize(specialization, name = 'Unknow', age = nil)
    super(name, age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
