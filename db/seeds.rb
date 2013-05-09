# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Charset.create(
  [
    { caption: "UTF-8"},
    { caption: "ASCII"},
    { caption: "CP1256"},
    { caption: "ISO-8859-1"},
    { caption: "ISO-8859-2"},
    { caption: "ISO-8859-2"},
    { caption: "ISO-8859-6"},
    { caption: "ISO-8859-15"},
    { caption: "Windows-1252"}
  ]
)
