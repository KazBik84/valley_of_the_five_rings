module CharactersHelper
  def attr_value(name)
    val = 2
    name == @selected_family.bonus_attr.to_sym ? val += 1 : nil
    name == @selected_school.bonus_attr.to_sym ? val += 1 : nil
    return val
  end

  def any_skill_types(skill_emphasis = 'Godna lub Bugei lub Kupiecka lub Niegodna')
    new_skill_emphasis = skill_emphasis.split
    new_skill_emphasis.delete('lub')
    new_skill_emphasis
  end
end
