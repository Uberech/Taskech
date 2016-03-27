# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fnet = Faker::Internet
fnum = Faker::Number
fhack = Faker::Hacker

      def abbreviation;  fetch(''); end
      def adjective;     fetch(''); end
      def noun;          fetch(''); end
      def verb;          fetch(''); end
      def ingverb;       fetch(''); end

Fabricator(:user) do
  email { fnet.safe_email("#{fhack.abbreviation} #{fnum.number(5)}") }
  password "password"
end

# Demo tasks are based on Faker::Hacker.say_something_smart

Fabricator(:task) do
  task { "Try to #{fhack.verb} the #{fhack.abbreviation} #{fhack.noun}" }
  due_date
  is_completed
  user
end

user = Fabricate(:user, email: 'user@user.user', password: 'useruser')

14.times do |x|
  [true,false].each do |completed|
    Fabricate(:task, user: user, is_completed: completed, due_date: x.days.from_now)
  end
end


