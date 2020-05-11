require 'csv'

module AuthorCsvParser
  module_function

  def parse(csv_path)
    csv_text = File.read(csv_path)
    csv = CSV.parse(csv_text, headers: true, col_sep: ';')

    authors = []
    csv.each do |csv_row|
      authors << csv_row.to_hash
    end

    authors
  end
end
