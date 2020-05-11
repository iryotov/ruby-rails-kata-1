module AuthorImporter
  module_function

  def import(csv_path)
    authors = AuthorCsvParser.parse(csv_path)

    authors.each do |author|
      Author.create! email: author['email'],
                     first_name: author['firstname'],
                     last_name: author['lastname']
    end

    true
  end
end
