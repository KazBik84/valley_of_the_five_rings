module LegendopediaHelper

  def join_names_attr_with_comma(hash)
    hash.map { |x| x[:name]}.join(', ')
  end

  def write_skill(school_skill, skill_list)
    skill = school_skill.skill.name_pl
    school_skill.school_emphasis.present? ? skill += " (#{school_skill.school_emphasis})" : ""
    school_skill.value != 1 ? skill += " #{school_skill.value}" : ""
    school_skill == skill_list.last ? skill : skill += ","
  end
end