def echo (string)
    return string
end 


def shout (string)
    return string.upcase
end 

def repeat (string, n = 2)

    "#{string}" + " #{string}"*(n-1)
end 

def start_of_word (string, n)  
    return string[0,n]
    
end

def first_word (string)
    return string.split.first
end  

def titleize(str)
    little_words = %w(and the)
    str.capitalize.gsub(/(\w+)/) do |word|
      little_words.include?(word) ? word : word.capitalize
    end
end