def to_roman(num)
    case num 
    when 1
        "I"
    when 5
        "V"
    when 10
        "X"
    when 50
        "L"
    when 100
        "C"
    when 500
        "D"
    when 1000
        "M"
    else
        ""
    end
end