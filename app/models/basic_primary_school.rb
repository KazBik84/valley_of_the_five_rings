class BasicPrimarySchool < ActiveRecord::Base
  belongs_to :clan
  
  has_many :primary_school_classes, dependent: :destroy
  has_many :school_classes, through: :primary_school_classes

  validates_presence_of :name, :clan_name, :bonus_attr, :bonus_attr_pl, 
                        :desc, :honor, :outfit, :rank1_name, :rank1_desc,
                        :rank2_name, :rank2_desc, :rank3_name, :rank3_desc, :rank4_name,
                        :rank4_desc, :rank5_name, :rank5_desc
  validates_inclusion_of :clan_name, in: CLAN_NAMES                        
  validates_inclusion_of :clan_name_pl, in: CLAN_NAMES_PL
  validates_inclusion_of :bonus_attr, in: ATTRIBUTES
  validates_inclusion_of :bonus_attr_pl, in: ATTRIBUTES_PL    
end
