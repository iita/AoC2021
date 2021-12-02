depth=0
aim= 0
width = 0

File.open('../inputs/day2.txt').each do |line|
    assignment = line.split(' ')
    direction = assignment[0]
    speed = assignment[1].to_i
    case direction
    when 'up'
        aim = aim-speed
    when 'down'
        aim = aim+speed
    when 'forward'
        width  = width+speed
        depth = depth + (speed * aim)
    end
    puts "a#{aim} d#{depth} w#{width}"
    puts depth * width
end