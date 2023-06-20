class Nameable
  def correct_name
    raise NotImplementedError "Subclasses must implement correct_name method"
  end
end

class Decorate < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
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
    @nameable.correct_name[0...10] if @nameable.correct_name.length > 10
  end
end
