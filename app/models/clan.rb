class Clan < ActiveRecord::Base

  validates_presence_of :desc, :name, :clan_name
  validates_inclusion_of :name, in: CLAN_NAMES

  has_many :families, dependent: :destroy
end
