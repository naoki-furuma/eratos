num = ARGV[0].to_i

prime_list = []
(2..num).each do |i|
  prime_list.push(i)
end

search_list = []
loop do
  head_value = prime_list.first
  search_list.push(head_value)
  prime_list.reject! {|item| item % head_value == 0 }
  if head_value >= Math.sqrt(num)
    search_list.concat(prime_list)
    break
  end
end

puts search_list.to_s.delete("[]")