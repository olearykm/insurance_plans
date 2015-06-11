# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'states.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  q = State.new
  q.state = row['state']
  q.save
end

puts "there are now #{State.count} rows in the states table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'counties.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  q = County.new
  q.county = row['county']
  q.save
end

puts "there are now #{County.count} rows in the counties table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'plan_numbers.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  q = PlanNumber.new
  q.plan_number = row['plan_number']
  q.save
end

puts "there are now #{PlanNumber.count} rows in the plan numbers table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'insurers.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  q = Insurer.new
  q.insurer = row['insurer']
  q.save
end

puts "there are now #{Insurer.count} rows in the insurers table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'insuranceplandatanew.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  q = Plan.new
  q.ind_40_prem = row['ind_40_prem']
  q.ind_27_prem = row['ind_27_prem']
  q.insurer_id = row['insurer_id']
  q.county_id = row['county_id']
  q.plan_number_id = row['plan_number_id']
  q.plan_name = row['plan_name']
  q.state_id = row['state_id']
  q.plan_type_id = row['plan_type_id']
  q.year_id = row['year_id']
  q.metal_level_id = row['metal_level_id']
  q.save
end

puts "there are now #{Plan.count} rows in the plans table"


csv_text = File.read(Rails.root.join('lib', 'seeds', 'years.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  q = Year.new
  q.year = row['year']
  q.save
end

puts "there are now #{Year.count} rows in the year table"


csv_text = File.read(Rails.root.join('lib', 'seeds', 'plan_type.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  q = PlanType.new
  q.plan_type = row['plan_type']
  q.save
end

puts "there are now #{PlanType.count} rows in the plan_type table"



csv_text = File.read(Rails.root.join('lib', 'seeds', 'metal_level.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  q = MetalLevel.new
  q.metal_level = row['metal_level']
  q.save
end

puts "there are now #{MetalLevel.count} rows in the metal_level table"
