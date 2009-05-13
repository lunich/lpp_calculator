matches = []
carus = []
qualifies = []
err = []

File.open("rakings", "r") do |file|
  i = 0
  while(!file.eof?)
    line = file.readline
    if line.match(/\[рейтинг\]/i)
      matches << line
      while(((l = file.readline.strip) != "") && !file.eof?)
      end
    elsif line.match(/\[рейтинг-карусель\]/i)
      carus << line
      while(((l = file.readline.strip) != "") && !file.eof?)
      end
    elsif line.match(/квалификация/i)
      qualifies << line
      while(((l = file.readline.strip) != "") && !file.eof?)
      end
    else
      err << [line, i]
      
    end
    i += 1
  end
end

puts matches.size
puts carus.size
puts qualifies.size
puts err
