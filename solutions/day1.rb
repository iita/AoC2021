line_num=0
prev_line = 0
File.open('../inputs/day1.txt').each do |line|
    if line.to_i > prev_line and prev_line!=0 then 
        line_num += 1 
    end
    prev_line = line.to_i
    print "#{line_num} #{line}"

end