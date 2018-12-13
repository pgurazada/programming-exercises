using Random

# algorithm 1
# The time complexity of this algorithm is O(n3)

# Algorithm 1
function sub_array_sum_algo1(v::Vector)

    n = length(v)

    best = 0

    for a in 1:n
        for b in a:n
            sum = 0
            for k in a:b
                sum += v[k]
            end

            best = max(best, sum)
        end
    end

    return best
end

# The time complexity of algorithm 1 can be reduced by taking out one loop from
# the proceedings 

# Algorithm 2

function sub_array_sum_algo2(v::Vector)

    n = length(v)
    best = 0

    for a in 1:n
        sum = 0
        for b in a:n
            sum += v[b]
            best = max(best, sum)
        end
    end

    return best
end

# The best algorithm has time complexity O(n) by defining a different sub
# problem. Find the maximum-sum subarray that ends at position k. We then vary 
# for each position in the array and return the maximum of those sums

# Algorithm 3

function sub_array_sum_algo3(v::Vector)

    best, sum = 0, 0

    for k in 1:length(v)
        sum = max(v[k], sum+v[k])
        best = max(best, sum)
    end

    return best
end


function test_time_complexity(vf::Vector{Function},
                              n = [10^2, 10^3, 10^4, 10^5, 10^6, 10^7])

    for n_i in n


    


