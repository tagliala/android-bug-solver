FactoryGirl.define do
  factory :issue do
    description 'Issue description'

    Issue::DEVICES.each do |device|
      trait device.to_sym do
        device device
      end
    end
  end
end
