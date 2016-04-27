module CharactersHelper
  def attr_value(name)
    val = 2
    name == @selected_family.bonus_attr.to_sym ? val += 1 : nil
    name == @selected_school.bonus_attr.to_sym ? val += 1 : nil
    return val
  end
end
