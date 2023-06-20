require_relative './decorate'

class Person < Nameable
  @id_counter = 0
  attr_accessor :name, :age
  attr_reader :id, :parent_permission

  def initialize(name = 'Unknown', age = nil, parent_permission: true)
    super(correct_name, name, age, parent_permission)
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age.to_i >= 18
  end

  def generate_id
    @id_counter += 1
  end

  def correct_name
    @name
  end
end
