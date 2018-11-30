puts 'Deleting existing surveys'

Survey.destroy_all

puts 'Creating test survey'
survey = Survey.create!(name: 'Test Strive Survey')

puts 'Creating 5 questions'

[ 'What\'s your favorite color?',
  'What\'s your pet name?',
  'Where do you work?',
  'What are your hobbies?',
  'What\'s your favorite dish?'
].each do |question|
  Question.create!(survey: survey, text: question)
end

puts 'Done!'
