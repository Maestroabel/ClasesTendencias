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

println("Escribe el primer simbolo del intervalo")
A = readline()
println("Escribe el primer numero del intervalo")
N1 = parse(Int, readline())
println("Escribe el segundo numero del intervalo")
N2 = parse(Int, readline())
println("Escribe el segundo simbolo del intervalo")
B = readline()

arreglo = GetAllPoints(A,B, N1,N2)
println("$(A)$(N1),$(N2)$(B) AllPoints = {$(arreglo)}")