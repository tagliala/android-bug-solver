# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Device.create! name: 'Nexus 7 (Wi-Fi)',         released_on: '2012-06-27', scapegoats: %w(Qualcomm ARM Corning Asus)
Device.create! name: 'Nexus 7 (Mobile)',        released_on: '2012-06-27', scapegoats: %w(Qualcomm ARM Corning Asus Verizon)
Device.create! name: 'Nexus 10',                released_on: '2012-10-29', scapegoats: %w(Qualcomm ARM Corning Samsung)
Device.create! name: 'Nexus 4',                 released_on: '2012-11-13', scapegoats: %w(Qualcomm ARM Corning LGE)
Device.create! name: 'Nexus 7 [2013] (Wi-Fi)',  released_on: '2013-07-24', scapegoats: %w(Qualcomm ARM Corning Asus)
Device.create! name: 'Nexus 7 [2013] (Mobile)', released_on: '2013-07-24', scapegoats: %w(Qualcomm ARM Corning Asus Verizon)
Device.create! name: 'Nexus 5',                 released_on: '2013-10-31', scapegoats: %w(Qualcomm ARM Corning LGE)
Device.create! name: 'Nexus 6',                 released_on: '2014-11-01', scapegoats: %w(Qualcomm ARM Corning Motorola)
Device.create! name: 'Nexus 9 (Wi-Fi)',         released_on: '2014-11-03', scapegoats: %w(Qualcomm ARM Corning HTC)
Device.create! name: 'Nexus 9 (Mobile)',        released_on: '2014-11-03', scapegoats: %w(Qualcomm ARM Corning HTC)
Device.create! name: 'Nexus 5X',                released_on: '2015-09-29', scapegoats: %w(Qualcomm ARM Corning LGE)
Device.create! name: 'Nexus 6P',                released_on: '2015-09-29', scapegoats: %w(Qualcomm ARM Corning Huawei)
Device.create! name: 'Pixel',                   released_on: '2016-10-04', scapegoats: %w(Qualcomm ARM Corning HTC)
Device.create! name: 'Pixel XL',                released_on: '2016-10-04', scapegoats: %w(Qualcomm ARM Corning HTC)
