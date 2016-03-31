class BasicShugenjaSchool < ActiveRecord::Base
  belongs_to :clan

  has_one :school_rank, dependent: :destroy

  has_many :shugenja_school_classes, dependent: :destroy
  has_many :school_classes, through: :shugenja_school_classes

  has_many :shugenja_school_skills, dependent: :destroy
  has_many :skills, through: :shugenja_school_skills

  validates_presence_of :name, :clan_name, :bonus_attr, :bonus_attr_pl,
                        :desc, :honor, :outfit, :spells, :affinity_deficiency
  validates_inclusion_of :clan_name, in: CLAN_NAMES
  validates_inclusion_of :clan_name_pl, in: CLAN_NAMES_PL
  validates_inclusion_of :bonus_attr, in: ATTRIBUTES
  validates_inclusion_of :bonus_attr_pl, in: ATTRIBUTES_PL
end
