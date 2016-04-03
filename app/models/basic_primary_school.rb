class BasicPrimarySchool < ActiveRecord::Base
  belongs_to :clan

  has_many :school_ranks, as: :school_technic, dependent: :destroy

  has_many :class_of_schools, as: :school_model, dependent: :destroy
  has_many :school_classes, through: :class_of_schools

  has_many :primary_school_skills, dependent: :destroy
  has_many :skills, through: :primary_school_skills

  validates_presence_of :name, :clan_name, :bonus_attr, :bonus_attr_pl,
                        :desc, :honor, :outfit
  validates_inclusion_of :clan_name, in: CLAN_NAMES
  validates_inclusion_of :clan_name_pl, in: CLAN_NAMES_PL
  validates_inclusion_of :bonus_attr, in: ATTRIBUTES
  validates_inclusion_of :bonus_attr_pl, in: ATTRIBUTES_PL
end
