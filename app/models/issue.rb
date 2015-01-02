class Issue
  include Mongoid::Document
  include Mongoid::Token

  SCAPEGOATS = ['Qualcomm', 'LGE', 'Motorola', 'Asus', 'Verizon', 'Samsung', 'HTC', 'Corning', 'ARM']
  DEVICES = %w(nexus4 nexus5 nexus6 nexus7 nexus7g nexus7_2013 nexus7g_2013 nexus9 nexus9g nexus10)
  ACTUAL_DEVICES = %w(nexus6 nexus9)

  token

  field :device
  field :description

  field :closed_at, type: DateTime
  field :closed_by
  field :reason

  validates :device, presence: true, inclusion: DEVICES
  validates :description, presence: true, length: { maximum: 500 }

  before_save do
    self.closed_at = rand(2.years.from_now..3.years.from_now)
    self.closed_by = "#{('a'..'z').to_a.sample}...@google.com"
    self.reason = give_me_a_reason
  end

  def obsolete?
    ACTUAL_DEVICES.exclude? device
  end

  def to_s
    token
  end

  private
  def give_me_a_reason
    if obsolete?
      '(No comment was entered for this change.)'
    else
      "looks like internal issue http://b/#{rand(10000000..99999999)} which seems to be blocked on #{SCAPEGOATS.sample}?"
    end
  end
end
