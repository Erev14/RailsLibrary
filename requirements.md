# DB
  - Book
    - title (required)
    - editorial (required)
    - edition_year
    - edition_number
    - ISBN (required)
    - author (required)
  - Bookcase
    - levels (required)
    - hall (pasillo) (required)
  - Author
    - name (required)
    - father_last_name (required)
    - mother_last_name
    - nationality
    - historical_review  (text)

# Look for a book
  - hall
  - bookcase
  - bookcase level


# Business rules
 - book linked to an author
 - Add author
 - Add bookcase
 - Add book (author and bookcase needs to exist)
 - Get author/books
 - get book (with book case)
 - get book case (with books)

# Test
