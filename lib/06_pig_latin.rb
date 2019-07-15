def translate(str)
    array = []
    array2 = []
    if str.match(" ")
        array = str.split(" ")
        array.each do |i| array2 << translate_one(i) end
        str = array2.join(" ")
        return str
    else
        return translate_one(str)
    end
end

def translate_one(word)
    if word.match?("qu")
        square(word)
    else
        if word.start_with?(/\A[aeiou]/)
            return word+"ay"
        elsif word.start_with?(/[b-df-hj-np-tv-z]/) && word[1].match?(/[b-df-hj-np-tv-z]/) && word[2].match?(/[b-df-hj-np-tv-z]/) 
            return word[3..-1]+word[0..2]+"ay"
        elsif word.start_with?(/[b-df-hj-np-tv-z]/) && word[1].match?(/[b-df-hj-np-tv-z]/) && word[2].match?(/[aeiou]/) 
            return word[2..-1]+word[0..1]+"ay"
        elsif word.start_with?(/[b-df-hj-np-tv-z]/) && word[1].match?(/[aeiou]/)
            return word[1..-1]+word[0]+"ay"
        end
    end
end

def square(letters)
    if letters.index("qu") == 0
        return letters[2..-1]+letters[0..1]+"ay"
    elsif letters.index("qu") == 1 && letters[0].match?(/[b-df-hj-np-tv-z]/)
        return letters[3..-1]+letters[0..2]+"ay"
    end
end