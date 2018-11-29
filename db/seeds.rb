Survey.destroy_all

survey = Survey.create!(name: 'Test Strive Survey')

[ 'What\'s your favorite color?',
  'What\'s your pet name?',
  'Where do you work?',
  'What are your hobbies?',
  'What\'s your favorite dish?'
].each do |question|
  Question.create!(survey: survey, text: question)
end
