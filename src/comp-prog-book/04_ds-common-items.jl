# Given two lists A and B, count the number of elements that are in both lists

function count_common_elements1(A::Vector, B::Vector)

    # O(n^2) solution

    common_count = 0

    for item in A
        if item in B
            common_count += 1
        end
    end

    return common_count
end

function count_common_elements2(A::Vector, B::Vector)

    # O(nlogn) solution

    common_count = 0

    set_A = Set(A)

    for item in B
        if item in set_A
            common_count += 1
        end
    end

    return common_count
end

function count_common_element3(A::Vector, B::Vector)
    
    common_count = 0

    sort!(A)
    sort!(B)

    for item in A
        if item in B
            common_count += 0
        end
    end

    return common_count
end



