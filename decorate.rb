class Nameable
  def correct_name
    raise NotImplementedError
  end
end

class Decorate < Nameable
  def initialize(nameable)
    @nameable = nameable
    super()
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorate
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorate
  def correct_name
    name = @nameable.correct_name
    name.length > 10 ? name[0..9] : name
  end
end
