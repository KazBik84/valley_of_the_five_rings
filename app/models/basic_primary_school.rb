class BasicPrimarySchool < ActiveRecord::Base
  belongs_to :clan

  has_many :school_ranks, dependent: :destroy
  has_many :primary_school_classes, dependent: :destroy
  has_many :school_classes, through: :primary_school_classes

  has_many :primary_school_skills, dependent: :destroy
  has_many :skills, through: :primary_school_skills

  validates_presence_of :name, :clan_name, :bonus_attr, :bonus_attr_pl,
                        :desc, :honor, :outfit
  validates_inclusion_of :clan_name, in: CLAN_NAMES
  validates_inclusion_of :clan_name_pl, in: CLAN_NAMES_PL
  validates_inclusion_of :bonus_attr, in: ATTRIBUTES
  validates_inclusion_of :bonus_attr_pl, in: ATTRIBUTES_PL
end
