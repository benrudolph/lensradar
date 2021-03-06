require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rows = CSV.foreach('db/fixtures/lens.csv', headers: true)
Lens.create(rows.map { |r| r.to_h })

rows = CSV.foreach('db/fixtures/specs.csv', headers: true)
Spec.create(rows.map { |r| r.to_h })
