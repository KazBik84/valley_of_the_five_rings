class Clan < ActiveRecord::Base

  has_many :families, dependent: :destroy
  has_many :characters, dependent: :destroy
  has_many :basic_schools, dependent: :destroy

  validates_presence_of :desc, :name, :clan_name
  validates_inclusion_of :name, in: CLAN_NAMES  
end
