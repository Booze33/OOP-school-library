class Person
  @@id_counter = 0
  attr_accessor :id, :name, :age
  def initialize(name = "Unknown", age = nil, parent_permission = true)
    @id = generate_id
    @name = name
    @age  = age
    @parent_permission = parent_permission
  end

  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age.to_i >= 18
  end

  def generate_id
    @@id_counter += 1
  end
end