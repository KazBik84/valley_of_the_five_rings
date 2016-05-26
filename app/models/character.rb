class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :clan
  belongs_to :family

  has_many :basic_school_of_characters, dependent: :destroy
  has_many :basic_schools, through: :basic_school_of_characters

  has_many :skill_of_objects, dependent: :destroy, as: :owner_model
  has_many :skills, through: :skill_of_objects
  accepts_nested_attributes_for :skill_of_objects, allow_destroy: true

  has_many :school_ranks, as: :school_technic, dependent: :destroy
  accepts_nested_attributes_for :school_ranks, allow_destroy: true

  validates_presence_of :name, :school_class, :honour, :outfit, :stamina,
                        :willpower, :strength, :perception, :agility,
                        :intelligence, :reflexes, :awareness, :void
end
