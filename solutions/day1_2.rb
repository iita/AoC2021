line_num=0
prev_line = 0
sum_line = 0
ar = Array.new()
File.open('../inputs/day1.txt').each do |line|
    ar.push(line.to_i)
    if ar.length() == 4 then 
        ar = ar.drop(1)
        ar.each { |a| sum_line+=a }
        puts "sum #{sum_line}"
        puts "prev #{prev_line}"
        if sum_line > prev_line then 
            line_num += 1 
        end
        prev_line = sum_line
        sum_line = 0
    end
    puts "#{ar}"
    puts "current #{line_num}"

end