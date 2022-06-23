module Sanghoon

# Write your package code here.

export subtypetree

# Display the entire type hierarchy starting from the specified `roottype`
# Source: Tom Kwong, Hands-on design patterns and best practices with Julia
function subtypetree(roottype, level = 1, indent = 4)
    level == 1 && println(roottype)
    for s in subtypes(roottype)
    println(join(fill(" ", level * indent)) * string(s))
    subtypetree(s, level + 1, indent)
    end
end

end
