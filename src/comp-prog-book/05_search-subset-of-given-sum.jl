# Given a list of n numbers and a number x, is it possible to find a subset of
# numbers in the list that sum to x

function all_subsets_of(v::Vector)

    subsets = []

    max_length = length(v)

    for subset_length in 1:max_length


    end

    return subsets

end


function subset_given_sum(v::Vector, x)
    does_exist = false
    mid_point = fld(length(v), 2)

    left_v = v[1:mid_point]
    right_v = v[mid_point:end]



    return does_exist

end
