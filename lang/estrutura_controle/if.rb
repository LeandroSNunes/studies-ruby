if (true) then
	puts "test 1"
else
	puts "test 1 false"
end

# Syntax Sugar
if false
	puts "test 2"
else
	puts "test 2 false"
end


if false
	puts "test 3"
elsif true
	puts "test 3 elsif true"
else
	puts "test 3 false"
end


if true then puts "test 4 inline" end

puts "test 5 inline end line" if true # modificador de estrutura


if true
	puts "test 6 line one"
	puts "test 6 line two"
end

result = if false
           puts "test 2"
         else
           puts "test 2 false"
         end
