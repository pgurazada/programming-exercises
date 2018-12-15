using Random: seed!

seed!(20130810)

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


function test_time_complexity(algos_vec::Vector{Function},
                              n = [10^2, 10^3, 10^4])

    algo_times = Dict()

    for algo in algos_vec
        algo_times[string(algo)] = []
    end

    for n_i in n
        v = rand(n_i)
        for algo in algos_vec
            println("Testing algorithm ", string(algo), " for $(n_i)")
            t = @elapsed algo(v)
            push!(algo_times[string(algo)], t)
        end
    end

    return algo_times

end

test_time_complexity([sub_array_sum_algo1, 
                      sub_array_sum_algo2, 
                      sub_array_sum_algo3])
