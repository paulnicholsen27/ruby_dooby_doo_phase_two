def is_isogram(str)
    my_array = []
    str = str.downcase
    my_array = str.split(//)
    if my_array.uniq.length == my_array.length
        puts true
    else
        puts false
    end
end



is_isogram("Dermatoglyphics" ) == true
is_isogram("aba" ) == false
is_isogram("moOse" ) == false