class Family < ActiveRecord::Base
  belongs_to :clan
  has_many :characters, dependent: :destroy

  validates_presence_of :name, :clan_name,
  						:full_clan_name, :desc,
  						:bonus_attr, :bonus_attr_pl
  validates_inclusion_of :clan_name, in: CLAN_NAMES
  validates_inclusion_of :bonus_attr, in: ATTRIBUTES
  validates_inclusion_of :bonus_attr_pl, in: ATTRIBUTES_PL

  def name_with_attribute
  	"#{name} +1 #{bonus_attr_pl}"
  end
end
