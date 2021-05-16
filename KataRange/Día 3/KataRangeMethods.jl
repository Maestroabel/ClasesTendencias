function GetAllPoints(sim1, sim2, num1, num2)
    if (sim1 == "(")
        if (sim2 == ")")
            array = [num1 for num1 in num1+1:num2-1]
        else
            array = [num1 for num1 in num1+1:num2]
        end
    else
        if (sim2 == ")")
            array = [num1 for num1 in num1:num2-1]
        else
            array = [num1 for num1 in num1:num2]
        end
    end
end

println("Ingrese el primer simbolo del intervalo 1")
simbolo1 = readline()
println("Ingrese el primer numero del intervalo 1")
numero1 = parse(Int, readline())
println("Ingrese el segundo numero del intervalo 1")
numero2 = parse(Int, readline())
println("Ingrese el segundo simbolo del intervalo 1")
simbolo2 = readline()
arreglo1 = GetAllPoints(simbolo1, simbolo2, numero1, numero2)

println("Ingrese el primer simbolo del intervalo 2")
simbolo3 = readline()
println("Ingrese el primer numero del intervalo 2")
numero3 = parse(Int, readline())
println("Ingrese el segundo numero del intervalo 2")
numero4 = parse(Int, readline())
println("Ingrese el segundo simbolo del intervalo 2")
simbolo4 = readline()
arreglo2 = GetAllPoints(simbolo3, simbolo4, numero3, numero4)

println("Ingrese el conjunto (2,5,4....)")
Input = readline()
InputSplit = split(Input, ',')
conjunto = []
for i in InputSplit
    numero = parse(Int, i)
    push!(conjunto, numero)
end
conjunto = sort(conjunto)

println("\n-----IntegerContainsRange-----")
if (arreglo1[1] <= conjunto[1] && arreglo1[length(arreglo1)] >= conjunto[length(conjunto)])
    println("$(simbolo1)$(numero1),$(numero2)$(simbolo2) Contains {$(conjunto)}")
else
    println("$(simbolo1)$(numero1),$(numero2)$(simbolo2) doesn't Contains {$(conjunto)}")
end

if (arreglo2[1] <= conjunto[1] && arreglo2[length(arreglo2)] >= conjunto[length(conjunto)])
    println("$(simbolo3)$(numero3),$(numero4)$(simbolo4) Contains {$(conjunto)}")
else
    println("$(simbolo3)$(numero3),$(numero4)$(simbolo4) doesn't Contains {$(conjunto)}")
end

println("\n-----GetAllPoints-----")
println("$(simbolo1)$(numero1),$(numero2)$(simbolo2) AllPoints = {$(arreglo1)}")
println("$(simbolo3)$(numero3),$(numero4)$(simbolo4) AllPoints = {$(arreglo2)}")

println("\n-----ContainsRange-----")
if (arreglo1[1] <= arreglo2[1] && arreglo1[length(arreglo1)] >= arreglo2[length(arreglo2)])
    println("$(simbolo1)$(numero1),$(numero2)$(simbolo2) Contains $(simbolo3)$(numero3),$(numero4)$(simbolo4)")
else
    println("$(simbolo1)$(numero1),$(numero2)$(simbolo2) doesn't Contains $(simbolo3)$(numero3),$(numero4)$(simbolo4)")
end

println("\n-----EndPoints-----")
println("$(simbolo1)$(numero1),$(numero2)$(simbolo2) EndPoints = {$(arreglo1[1]),$(arreglo1[length(arreglo1)]))}")
println("$(simbolo3)$(numero3),$(numero4)$(simbolo4) EndPoints = {$(arreglo2[1]),$(arreglo2[length(arreglo2)]))}")

println("\n-----OverLapsRange-----")
res = false
for i in 1:length(arreglo1)
    for t in 1:length(arreglo2)
        if (arreglo1[i] == arreglo2[t])
            global res = true
        end
    end
end

if (res)
    println("$(simbolo1)$(numero1),$(numero2)$(simbolo2) OverLaps With $(simbolo3)$(numero3),$(numero4)$(simbolo4)")
else
    println("$(simbolo1)$(numero1),$(numero2)$(simbolo2) doesn't OverLaps With $(simbolo3)$(numero3),$(numero4)$(simbolo4)")
end

println("\n-----Equals-----")
if (arreglo1 == arreglo2)
    println("$(simbolo1)$(numero1),$(numero2)$(simbolo2) Equals $(simbolo3)$(numero3),$(numero4)$(simbolo4)")
else
    println("$(simbolo1)$(numero1),$(numero2)$(simbolo2) neq $(simbolo3)$(numero3),$(numero4)$(simbolo4)")
end