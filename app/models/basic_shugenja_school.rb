# Model that represent shugenja class schools
class BasicShugenjaSchool < ActiveRecord::Base
  belongs_to :clan

  has_one :school_rank, as: :school_technic, dependent: :destroy

  has_many :class_of_schools, as: :school_model, dependent: :destroy
  has_many :school_classes, through: :class_of_schools

  has_many :skill_of_objects, dependent: :destroy, as: :owner_model
  has_many :skills, through: :skill_of_objects

  validates_presence_of :name, :clan_name, :bonus_attr, :bonus_attr_pl,
                        :desc, :honor, :outfit, :spells, :affinity_deficiency
  validates_inclusion_of :clan_name, in: CLAN_NAMES
  validates_inclusion_of :clan_name_pl, in: CLAN_NAMES_PL
  validates_inclusion_of :bonus_attr, in: ATTRIBUTES
  validates_inclusion_of :bonus_attr_pl, in: ATTRIBUTES_PL
end
