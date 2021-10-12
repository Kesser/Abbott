# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

# Tenants
10.times do
  Tenant.create(name: Faker::Company.name)
end

# Users
users = []
20.times do
  users << User.create(name: Faker::Name.name)
end

# Questions and Answers
20.times do
  question = Question.create(title: Faker::Hipster.sentence.gsub(/\.$/, "?"),
    private: Faker::Boolean.rand, user: users.sample)
  (1 + rand(3)).times do
    question.answers.create(body: Faker::Hipster.sentence, user: users.sample)
  end
end
