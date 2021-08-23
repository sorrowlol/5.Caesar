def caesar(string, num)
 
  string_ordnums = string.chars.map { |i| i.ord }

  cipher = string_ordnums.map do |i|
    if i > 96 && i < 123
      i = i + num
      if i > 122 
        i =  ((i - 122) % 26) + 96
      end 
    elsif i > 64 && i < 91 
      i = i + num
      if i > 90
        i = ((i - 90) % 26) + 64
      end
    else
      i 
    end
    i 
  end

  cipher_text = cipher.map { |i| i.chr }.join
  puts cipher_text

end

caesar('Johnny sucks!',22)
