class Device
  include Mongoid::Document

  has_many :issues

  field :name
  field :released_on, type: Date
  field :scapegoats, type: Array

  validates :name, presence: true
  validates :released_on, presence: true
  validates :scapegoats, presence: true

  def to_s
    name
  end

  def obsolete_on
    released_on + 18.months
  end
end
