    
def time_string(time)
    [time / 3600, time / 60 % 60, time % 60].map{|t| t.to_s.rjust(2,'0')}.join(':')
end
