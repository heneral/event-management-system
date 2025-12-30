# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create test users
User.find_or_create_by!(email: 'test@example.com') do |user|
  user.password = 'password123'
  user.password_confirmation = 'password123'
end

User.find_or_create_by!(email: 'organizer@example.com') do |user|
  user.password = 'password123'
  user.password_confirmation = 'password123'
end

# Create sample events
test_user = User.find_by(email: 'test@example.com')
organizer = User.find_by(email: 'organizer@example.com')

# Create events if they don't already exist
Event.find_or_create_by!(title: 'Tech Conference 2025') do |event|
  event.description = 'A comprehensive technology conference featuring the latest in AI, web development, and emerging technologies.'
  event.date = 1.month.from_now
  event.location = 'San Francisco Convention Center'
  event.organizer = organizer
end

Event.find_or_create_by!(title: 'Music Festival') do |event|
  event.description = 'An outdoor music festival with multiple stages and international artists.'
  event.date = 2.months.from_now
  event.location = 'Central Park, New York'
  event.organizer = organizer
end

Event.find_or_create_by!(title: 'Startup Pitch Night') do |event|
  event.description = 'Local entrepreneurs pitch their innovative ideas to investors and the community.'
  event.date = 3.weeks.from_now
  event.location = 'Innovation Hub, Austin'
  event.organizer = test_user
end

Event.find_or_create_by!(title: 'Art & Design Workshop') do |event|
  event.description = 'A creative workshop for designers and artists to learn new techniques and network with peers.'
  event.date = 6.weeks.from_now
  event.location = 'Creative Arts Center, Los Angeles'
  event.organizer = organizer
end

Event.find_or_create_by!(title: 'Food & Wine Festival') do |event|
  event.description = 'A culinary extravaganza featuring local chefs, wine tastings, and gourmet food experiences.'
  event.date = 8.weeks.from_now
  event.location = 'Riverside Park, Chicago'
  event.organizer = test_user
end
