def who_is_bigger (a,b,c)
    str_array = [a,b,c]
    int_array = str_array.map(&:to_i)
    m = int_array.max 

    if a == nil || b == nil || c == nil
        return "nil detected"
    elsif a > b && a > c
        return "a is bigger"
    elsif b > a && b > c
        return "b is bigger"
    elsif c > a && c > b 
        return "c is bigger"
    end
end 

def reverse_upcase_noLTA (string)
   
    a = string.reverse.upcase.delete("LTA")
    return a 
end

def array_42 (a)    
    a.include?(42)
end 


def magic_array (a)
  
    a.flatten.sort.map{|x| x*2}.delete_if{|x| x % 3 == 0}.uniq

end
