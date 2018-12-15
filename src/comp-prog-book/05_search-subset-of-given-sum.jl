# Given a list of n numbers and a number x, is it possible to find a subset of
# numbers in the list that sum to x

function powerset(x::Vector{T}) where T
    result = Vector{T}[[]]

    for elem in x, j in eachindex(result)
        push!(result, [result[j]; elem])
    end

    return result

end


function subset_given_sum(v::Vector, x)
    does_exist = false
    mid_point = fld(length(v), 2)

    left_v = v[1:mid_point]
    right_v = v[mid_point:end]

    powersets_left_v = powerset(left_v)
    powersets_right_v = powerset(right_v)

    subset_sum_left_v = []
    subset_sum_right_v= []

    for subset in powersets_left_v
        push!(subset_sum_left_v, sum(subset))
    end

    for subset in powersets_right_v
        push!(subset_sum_right_v, sum(subset))
    end

    for subset_sum in subset_sum_left_v
        if x - subset_sum in subset_sum_right_v
            does_exist = true
        end
    end

    return does_exist

end
