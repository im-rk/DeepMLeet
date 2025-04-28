function matrix_dot_vector(a::Array{<:Real,2}, b::Array{<:Real,1})
    if isempty(a) || size(a, 2) != length(b)
        return -1
    end

    result = []
    for row in eachrow(a)
        dot_product = sum(row .* b)
        push!(result, dot_product)
    end

    return result
end

# ===== Example Input and Output =====
a = [1 2 3;
     4 5 6]

b = [7, 8, 9]

# Call the function
output = matrix_dot_vector(a, b)

# Print the result
println("The output is: ", output)
