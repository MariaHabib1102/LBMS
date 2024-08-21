# db/seeds.rb

# Assuming you have an Author model with a name attribute
author_1 = Author.create!(name: "Stephen King")
author_2 = Author.create!(name: "Agatha Christie")
author_3 = Author.create!(name: "Jane Austen")
author_4 = Author.create!(name: "Mark Twain")
author_5 = Author.create!(name: "Douglas Adams")
author_6 = Author.create!(name: "Edgar Allan Poe")
author_7 = Author.create!(name: "Nicholas Sparks")

# Seed books for the "Horror" genre
Book.create!([
  {
    title: "The Shining",
    description: "A horror novel by Stephen King about a haunted hotel and its impact on the Torrance family.",
    cover_image: "the_shining.jpg",
    published_date: Date.new(1977, 1, 28),
    author_id: author_1.id,
    genre: "Horror",
    number_of_copies: 5,
    amount: 15.99,
    status: "Available"
  },
  {
    title: "The Tell-Tale Heart",
    description: "A short story by Edgar Allan Poe that follows an unnamed narrator who insists on their sanity while describing the murder they committed.",
    cover_image: "tell_tale_heart.jpg",
    published_date: Date.new(1843, 1, 1),
    author_id: author_6.id,
    genre: "Horror",
    number_of_copies: 3,
    amount: 7.99,
    status: "Available"
  }
])

# Seed books for the "Comedy" genre
Book.create!([
  {
    title: "The Hitchhiker's Guide to the Galaxy",
    description: "A science fiction comedy by Douglas Adams about Arthur Dent's adventures through space.",
    cover_image: "hitchhikers_guide.jpg",
    published_date: Date.new(1979, 10, 12),
    author_id: author_5.id,
    genre: "Comedy",
    number_of_copies: 10,
    amount: 12.99,
    status: "Available"
  },
  {
    title: "The Adventures of Tom Sawyer",
    description: "A novel by Mark Twain that humorously portrays the adventures of a young boy growing up along the Mississippi River.",
    cover_image: "tom_sawyer.jpg",
    published_date: Date.new(1876, 6, 1),
    author_id: author_4.id,
    genre: "Comedy",
    number_of_copies: 8,
    amount: 10.99,
    status: "Available"
  }
])

# Seed books for the "Romance" genre
Book.create!([
  {
    title: "Pride and Prejudice",
    description: "A romantic novel by Jane Austen that deals with the issues of marriage, money, and love in the British Regency era.",
    cover_image: "pride_and_prejudice.jpg",
    published_date: Date.new(1813, 1, 28),
    author_id: author_3.id,
    genre: "Romance",
    number_of_copies: 7,
    amount: 11.99,
    status: "Available"
  },
  {
    title: "The Notebook",
    description: "A novel by Nicholas Sparks about the enduring power of love and memory.",
    cover_image: "the_notebook.jpg",
    published_date: Date.new(1996, 10, 1),
    author_id: author_7.id,
    genre: "Romance",
    number_of_copies: 5,
    amount: 14.99,
    status: "Checked Out"
  }
])

# Seed books for the "Mystery" genre
Book.create!([
  {
    title: "Murder on the Orient Express",
    description: "A detective novel by Agatha Christie featuring Hercule Poirot as he solves a murder mystery aboard a train.",
    cover_image: "murder_orient_express.jpg",
    published_date: Date.new(1934, 1, 1),
    author_id: author_2.id,
    genre: "Mystery",
    number_of_copies: 4,
    amount: 13.99,
    status: "Available"
  },
  {
    title: "And Then There Were None",
    description: "Another classic mystery novel by Agatha Christie where ten strangers are invited to a secluded island, only to be mysteriously killed off one by one.",
    cover_image: "and_then_there_were_none.jpg",
    published_date: Date.new(1939, 11, 6),
    author_id: author_2.id,
    genre: "Mystery",
    number_of_copies: 6,
    amount: 12.99,
    status: "Available"
  }
])
