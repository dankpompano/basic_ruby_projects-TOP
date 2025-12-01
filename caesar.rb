def caesar_cipher(text, shift)
  buffer = ""
  text.each_char do |char|
    # char = char.ord - 'a'.ord 
    if char =~ /[a-z]/
      char = char.ord - 'a'.ord
      char = (char + shift) % 26      
      char += 'a'.ord
      buffer += char.chr

    elsif char =~ /[A-Z]/
      char = char.ord - 'A'.ord
      char = (char + shift) % 26      
      char += 'A'.ord
      buffer += char.chr

    else
    buffer += char.chr
    end
  end
  puts buffer
end

caesar_cipher("hot dog", 10)