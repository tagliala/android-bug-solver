class Device
  include Mongoid::Document

  has_many :issues

  field :name
  field :released_at, type: DateTime
  field :scapegoats, type: Array

  validates :name, presence: true
  validates :released_at, presence: true
  validates :scapegoats, presence: true

  def to_s
    name
  end

  def obsolete_at
    released_at + 18.months
  end
end
