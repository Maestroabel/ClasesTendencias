function IntegerContains(a, b, n1, n2, conjunto)
    if (a == "(")
        if (b == ")")
            if (n1+1 < conjunto[1] && n2-1 > conjunto[length(conjunto)])
                res = true
            else
                res = false
            end
        else
            if (n1+1 < conjunto[1] && n2 >= conjunto[length(conjunto)])
                res = true
            else
                res = false
            end
        end
    else
        if (b == ")")
            if (n1 <= conjunto[1] && n2-1 > conjunto[length(conjunto)])
                res = true
            else
                res = false
            end
        else
            if (n1 <= conjunto[1] && n2 >= conjunto[length(conjunto)])
                res = true
            else
                res = false
            end
        end
    end
end

println("Escribe el primer simbolo del intervalo")
A = readline()
println("Escribe el primer numero del intervalo")
N1 = parse(Int, readline())
println("Escribe el segundo numero del intervalo")
N2 = parse(Int, readline())
println("Escribe el segundo simbolo del intervalo")
B = readline()
println("Escribe el conjunto (2,3,4...)")
array = readline()
Conjunto = split(array, ',')
Conj = []
for i in Conjunto
    numero = parse(Int, i)
    push!(Conj, numero)
end

if (IntegerContains(A,B,N1,N2,Conj) == true)
    println("$(A)$(N1),$(N2)$(B) Contains {$(Conj)}")
else
    println("$(A)$(N1),$(N2)$(B) Doesn't Contains {$(Conj)}")
end
