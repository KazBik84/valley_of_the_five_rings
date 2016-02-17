class BasicShugenjaSchool < ActiveRecord::Base
  belongs_to :clan
  validates_presence_of :name, :clan_name, :bonus_attr, :bonus_attr_pl, 
                        :desc, :honor, :outfit, :spells, :shugenja_tech_name,
                        :shugenja_tech_desc, :affinity_deficiency
  validates_inclusion_of :clan_name, in: CLAN_NAMES                        
  validates_inclusion_of :clan_name_pl, in: CLAN_NAMES_PL
  validates_inclusion_of :bonus_attr, in: ATTRIBUTES
  validates_inclusion_of :bonus_attr_pl, in: ATTRIBUTES_PL  

end
