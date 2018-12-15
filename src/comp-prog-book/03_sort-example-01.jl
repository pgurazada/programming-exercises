# Return the position where the value of the function changes

function inflection_point(v::Vector{Bool})

    # v should be a sorted boolean array
    # The function returns the largest value of x for which v(x) changes sign

    for i in 1:length(v)

        if (i != length(v)) && (v[i] != v[i+1]) 
            return i+1
        end
    end

    return "No inflection point"
end
