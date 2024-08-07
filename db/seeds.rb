# db/seeds.rb

# Ensure that the Author model exists and has some records
# Create or find authors to associate with books
author1 = Author.find_or_create_by(name: 'J.K. Rowling')
author2 = Author.find_or_create_by(name: 'George R.R. Martin')

# Seed books
Book.create!(
  title: 'Harry Potter and the Sorcerer\'s Stone',
  description: 'A young wizard embarks on an adventure at Hogwarts School of Witchcraft and Wizardry.',
  cover_image: 'harry_potter_sorcerers_stone.jpg',
  published_date: '1997-06-26',
  author: author1
)

Book.create!(
  title: 'A Game of Thrones',
  description: 'The first book in the epic fantasy series A Song of Ice and Fire.',
  cover_image: 'game_of_thrones.jpg',
  published_date: '1996-08-06',
  author: author2
)

Book.create!(
  title: 'The Hobbit',
  description: 'A fantasy novel about the adventures of Bilbo Baggins, a hobbit.',
  cover_image: 'hobbit.jpg',
  published_date: '1937-09-21',
  author: author1
)

# Add more books as needed
