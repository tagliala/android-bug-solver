class Issue
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Token

  SCAPEGOATS = ['Qualcomm', 'LGE', 'Motorola', 'Asus', 'Verizon', 'Samsung', 'HTC', 'Corning', 'ARM']

  belongs_to :device

  token

  field :device
  field :description

  field :stars, type: Integer
  field :closed_on, type: Date
  field :closed_by
  field :reason

  validates :device, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  before_save do
    self.stars = rand(100..2000)
    self.closed_by = "#{('a'..'z').to_a.shuffle.first(2).join}...@google.com"
    self.closed_on = rand(1.year.from_now..3.years.from_now)
    self.reason = give_me_a_reason
  end

  def obsolete?
    device.obsolete_on < closed_on
  end

  def to_s
    token
  end

  private
  def give_me_a_reason
    # TODO: fix this. Provide "status" column
    if obsolete?
      '(No comment was entered for this change.)'
    elsif rand(11) <= 8
      "looks like internal issue http://b/#{rand(10000000..99999999)} which seems to be blocked on #{device.scapegoats.sample}?"
    else
      'contact customer support.'
    end
  end
end
