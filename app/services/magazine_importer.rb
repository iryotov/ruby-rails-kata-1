module MagazineImporter
  module_function

  def import(csv_path)
    magazines = WorkCsvParser.parse(csv_path)

    magazines.each do |magazine|
      Magazine.create! title: magazine['title'],
                       isbn: magazine['isbn'],
                       published_at: magazine['publishedAt'],
                       authors: Author.where(email: magazine['authors'])
    end

    true
  end
end
