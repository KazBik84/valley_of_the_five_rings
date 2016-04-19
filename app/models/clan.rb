class Clan < ActiveRecord::Base
  validates_presence_of :desc, :name, :clan_name
  validates_inclusion_of :name, in: CLAN_NAMES

  has_many :families, dependent: :destroy
  has_many :basic_primary_schools, dependent: :destroy
  has_many :basic_shugenja_schools, dependent: :destroy
  has_many :characters, dependent: :destroy
  has_many :basic_schools, dependent: :destroy
end
