def caesar (string, shift)
    return "ERROR" unless shift.is_a?(Integer)
    return "ERROR" unless shift.positive?
    shift %= 26
    string_array = string.unpack('c*')
    shifted_array = string_array.map do |char_int|
        case char_int
        when 65..90
            char_int += shift
            if char_int > 90
                char_int -=26
            else char_int
            end
        when 97..122
            char_int += shift
            if char_int > 122
                char_int -= 26
            else char_int
            end
        else char_int
        end
    end
    puts shifted_array.pack('c*')
    shifted_array.pack('c*')
end

caesar('abc', 2)

