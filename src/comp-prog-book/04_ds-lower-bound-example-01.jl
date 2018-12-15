# `lower_bound(x)` should return the index of the smallest element in the vector
# that is at least x, i.e, smallest element in the set >= x

function lower_bound(v::Vector, x)

    lowers = []

    for item in v
        if item >= x
            push!(lowers, item)
        end
    end

    return findall(v .== minimum(lowers))

end
