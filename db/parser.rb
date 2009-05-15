matches = []
carus = []
qualifies = []
err = []

def parse_match(date, line)
  m = line.match(/^([^\(]+) \(([^\)]+)\) - ([^\(]+) \(([^\)]+)\) - ([0-9]+):([0-9]+)$/i)
  unless m.nil?
    ([date] + m[1,6]).join(";")
  else
    nil
  end
end

File.open("rakings", "r") do |file|
  i = 0
  while(!file.eof?)
    line = file.readline.strip
    i += 1
    date = line.scan(/^[0-9]{2}.[0-9]{2}.[0-9]{4}/i)
    if line.match(/\[рейтинг\]/i)
      line = file.readline.strip
      i += 1
      m = parse_match(date, line)
      m.nil? ? err << [line, i] : matches << m
      file.readline
      i += 1
    elsif line.match(/\[рейтинг-карусель\]/i)
      carus << line
      line = file.readline.strip
      i += 1
      m = parse_match(date, line)
      m.nil? ? err << [line, i] : carus << m
      line = file.readline.strip
      i += 1
      m = parse_match(date, line)
      m.nil? ? err << [line, i] : carus << m
      line = file.readline.strip
      i += 1
      m = parse_match(date, line)
      m.nil? ? err << [line, i] : carus << m
      file.readline
      i += 1
    elsif line.match(/квалификация/i)
      line = file.readline.strip
      i += 1
      m = parse_match(date, line)
      m.nil? ? err << [line, i] : qualifies << m
      file.readline
      i += 1
    else
      err << [line, i]
    end
  end
end

#puts matches
puts qualifies
#puts err
