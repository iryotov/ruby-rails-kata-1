require 'csv'

module WorkCsvParser
  module_function

  def parse(csv_path)
    csv_text = File.read(csv_path)
    csv = CSV.parse(csv_text, headers: true, col_sep: ';')

    works = []
    csv.each do |csv_row|
      row = csv_row.to_hash
      row['authors'] = row['authors'].split(',')
      works << row
    end

    works
  end
end
