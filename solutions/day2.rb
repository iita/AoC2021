depth=0
width= 0

File.open('../inputs/day2.txt').each do |line|
    assignment = line.split(' ')
    direction = assignment[0]
    speed = assignment[1].to_i
    case direction
    when 'up'
        depth = depth-speed
    when 'down'
        depth = depth+speed
    when 'forward'
        width  = width+speed
    end
    puts depth * width
end