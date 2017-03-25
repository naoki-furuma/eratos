num = ARGV[0].to_i

search_list = []
(2..num).each do |i|
  search_list << i
end

prime_list = []
loop do
  head_value = search_list.first
  prime_list << head_value
  search_list.reject! {|item| item % head_value == 0 }
  if head_value >= Math.sqrt(num)
    prime_list.concat(search_list)
    break
  end
end

puts prime_list.to_s.delete('[]')