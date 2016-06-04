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

  def full_name(character)
    "#{character.family.name} #{character.name}"
  end

  def character_school_names(character)
    names = []
    character.basic_schools.each do |school|
      names << school.name
      names = names.join(' ')
      return names
    end
  end

  def ring_value(attr1, attr2)
    attr1 < attr2 ? attr1:attr2
  end

end
