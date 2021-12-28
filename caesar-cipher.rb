def caesar_cipher(string, shift_factor)
    cipher_array = string.split("").map do |char| 
        ord = char.ord
        if ord.between?(65,90)
            (((ord-65)+shift_factor)%26+65).chr
        elsif ord.between?(97,122)
            (((ord-97)+shift_factor)%26+97).chr
        else
            char
        end
    end
    return cipher_array.join("")
end

caesar_cipher("What a string!", 5)