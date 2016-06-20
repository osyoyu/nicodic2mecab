require 'csv'

COST=6468

nicodic_file = ARGV[0]
CSV.foreach(nicodic_file) do |row|
  begin
    if row[3] == "a"
      puts "#{row[1]},0,0,#{COST},名詞,一般,*,*,*,*,#{row[2]},#{row[2]},#{row[2]}"
    end
  rescue
  end
end
