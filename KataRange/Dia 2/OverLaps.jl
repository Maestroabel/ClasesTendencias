function GetAllPoints(a, b, n1, n2)
    if (a == "(")
        if (b == ")")
            array = [n1+1 for n1 in n1:n2-1]
        else
            array = [n1+1 for n1 in n1:n2]
        end
    else
        if (b == ")")
            array = [n1 for n1 in n1:n2-1]
        else
            array = [n1 for n1 in n1:n2]
        end
    end
end

println("Escribe el primer simbolo del intervalo 1")
A = readline()
println("Escribe el primer numero del intervalo 1")
N1 = parse(Int, readline())
println("Escribe el segundo numero del intervalo 1")
N2 = parse(Int, readline())
println("Escribe el segundo simbolo del intervalo 1")
B = readline()
arreglo_1 = GetAllPoints(A,B,N1,N2)

println("Escribe el primer simbolo del intervalo 2")
A1 = readline()
println("Escribe el primer numero del intervalo 2")
N3 = parse(Int, readline())
println("Escribe el segundo numero del intervalo 2")
N4 = parse(Int, readline())
println("Escribe el segundo simbolo del intervalo 2")
B1 = readline()
arreglo_2 = GetAllPoints(A1,B1,N3,N4)

res = false
for i in 1:length(arreglo_1) 
    for t in 1:length(arreglo_2) 
        if (arreglo_1[i] == arreglo_2[t])
           global res = true
        end
    end
end

if (res == true)
    println("$(A)$(N1),$(N2)$(B) OverLaps with $(A1)$(N3),$(N4)$(B1)")
else
    println("$(A)$(N1),$(N2)$(B) Doesn't OverLaps with $(A1)$(N3),$(N4)$(B1)")
end