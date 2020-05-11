module BookImporter
  module_function

  def import(csv_path)
    books = WorkCsvParser.parse(csv_path)

    books.each do |book|
      Book.create! title: book['title'],
                   isbn: book['isbn'],
                   description: book['description'],
                   authors: Author.where(email: book['authors'])
    end

    true
  end
end
