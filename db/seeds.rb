Category.create([
	{name: 'eguitar', full_name: 'Electric Guitar', department: 'guitars'},
	{name: 'aguitar', full_name: 'Acoustic Guitar', department: 'guitars'},
	{name: 'cguitar', full_name: 'Classical Guitar', department: 'guitars'},
	{name: 'guitaracc', full_name: 'Guitar Accessories', department: 'guitars'},
	{name: 'ebass', full_name: 'Electric Bass', department: 'bass'},
	{name: 'abass', full_name: 'Acoustic Bass', department: 'bass'},
	{name: 'combos', full_name: 'Combos', department: 'amplifiers'},
	{name: 'tubes', full_name: 'Tubes', department: 'amplifiers'},
	{name: 'heads', full_name: 'Heads', department: 'amplifiers'},
	{name: 'cabinets', full_name: 'Cabinets', department: 'amplifiers'},
	{name: 'stacks', full_name: 'Stacks', department: 'amplifiers'},
	{name: 'preamps', full_name: 'Preamps', department: 'amplifiers'},
	{name: 'ampacc', full_name: 'Amp Accessories', department: 'amplifiers'},
	{name: 'epedals', full_name: 'Effects Pedals', department: 'effects'},
	{name: 'mepedals', full_name: 'Multi-Effects Pedals', department: 'effects'},
	{name: 'bpedals', full_name: 'Bass Pedals', department: 'effects'},
	{name: 'vepedals', full_name: 'Vocal Effects Pedals', department: 'effects'},
	{name: 'fxacc', full_name: 'Effects Accessories', department: 'effects'},
	{name: 'adrums', full_name: 'Acoustic Drums', department: 'drums'},
	{name: 'edrums', full_name: 'Electric Drums', department: 'drums'},
	{name: 'cymbals', full_name: 'Cymbals', department: 'drums'},
	{name: 'drumacc', full_name: 'Drum Accessories', department: 'drums'},
	{name: 'percussion', full_name: 'Percussion', department: 'drums'},
	{name: 'dpianos', full_name: 'Digital Pianos', department: 'keyboards'},
	{name: 'synthesizers', full_name: 'Synthesizers', department: 'keyboards'},
	{name: 'workstations', full_name: 'Workstations', department: 'keyboards'},
	{name: 'mcontrollers', full_name: 'MIDI Controllers', department: 'keyboards'},
	{name: 'minterfaces', full_name: 'MIDI Interfaces', department: 'keyboards'},
	{name: 'keyacc', full_name: 'Keyboard Accessories', department: 'keyboards'},
	{name: 'active', full_name: 'Active PA Speakers', department: 'live'},
	{name: 'passive', full_name: 'Passive PA Speakers', department: 'live'},
	{name: 'stagemon', full_name: 'Stage Monitors', department: 'live'},
	{name: 'poweramp', full_name: 'Power Amplifiers', department: 'live'},
	{name: 'subwoofers', full_name: 'Subwoofers', department: 'live'},
	{name: 'studiomon', full_name: 'Studio Monitors', department: 'recording'},
	{name: 'audioint', full_name: 'Audio Interfaces', department: 'recording'},
	{name: 'audiocon', full_name: 'Audio Converters', department: 'recording'},
	{name: 'software', full_name: 'Software', department: 'recording'},
	{name: 'recacc', full_name: 'Recording Accessories', department: 'recording'},
	{name: 'dynamic', full_name: 'Dynamic', department: 'microphones'},
	{name: 'condenser', full_name: 'Condenser', department: 'microphones'},
	{name: 'tube', full_name: 'Tube', department: 'microphones'},
	{name: 'ribbon', full_name: 'Ribbon', department: 'microphones'},
	{name: 'drum', full_name: 'Drum', department: 'microphones'},
	{name: 'usb', full_name: 'USB', department: 'microphones'},
	{name: 'micacc', full_name: 'Microphone Accessories', department: 'microphones'},
	{name: 'other', full_name: 'Other', department: 'other'}
	])

50.times do
	User.create(username: Faker::Name.name, email: Faker::Internet.email, password: '123', address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zipcode: Faker::Address.zip, rating: Faker::Number.between(20, 100))
end

400.times do
	condition = ['New', 'Used - Like New', 'Used - Good', 'Used - Acceptable', 'Refurbished']
	status = ['Available', 'Closed']
	Post.create(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, wanted: Faker::Lorem.paragraph, condition: condition.sample, status: status.sample, user_id: User.all.sample.id, category_id: Category.all.sample.id)
end












# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
