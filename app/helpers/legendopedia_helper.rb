module LegendopediaHelper

  def join_names_attr_with_comma(hash, attr_name)
    hash.map { |x| x[attr_name]}.join(', ')
  end

  def write_skill(school_skill, skill_list)
    this_skill = school_skill.skill.name_pl
    school_skill.skill_emphasis.present? ? this_skill += " (#{school_skill.skill_emphasis})" : ""
    school_skill.value != 1 ? this_skill += " #{school_skill.value}" : ""
    school_skill == skill_list.last ? this_skill : this_skill += ","
  end
end