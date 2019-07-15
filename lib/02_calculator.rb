def add (a,b)

    c = a + b 

    return c 
end     

def subtract (a,b)

    c = a - b 

    return c
end     

def sum (a)

    c = a.inject(0){|sum,x| sum + x }

    return c
end    

def multiply (a,b)

    c = a * b 

    return c 
end 

def power (a,b)

    c = a**b 
    return  c  
end

def factorial (n)
    
    if n < 0
        return nil 
    
    elsif n == 0
        return 1 
    
    else 
        c = 1
        while n > 0
            c = c*n
            n  -= 1 
        end 
    end
    return c
end 

print factorial(10)