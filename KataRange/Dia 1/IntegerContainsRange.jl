function IntegerContainsRange(S1, S2, N1, N2, con)
    #Abierto
    if (S1 == '(')
        #abierto
        if (S2 == ')')
            if (N1 < con[1] && N2 > con[length(con)])
                res = true
            else
                res = false
            end
        #cerrado
        else
            if (N1 < con[1] && N2 >= con[length(con)])
                res = true
            else
                res = false
            end
        end
    #cerrado
    else 
        #abierto
        if (S2 == ')')
            if (N1 <= con[1] && N2 > con[length(con)])
                res = true
            else
                res = false
            end
        #cerrado
        else
            if (N1 <= con[1] && N2 >= con[length(con)])
                res = true
            else
                res = false
            end
        end
    end
end

Sim1 = '['
Sim2 = ')'
Num1 = 2
Num2 = 6
Conjunto = [-1,1,6,10]

if (IntegerContainsRange(Sim1,Sim2, Num1, Num2, Conjunto))
    println("$(Sim1)$(Num1),$(Num2)$(Sim2) Contains {$(Conjunto)}")
else
    println("$(Sim1)$(Num1),$(Num2)$(Sim2) Doesn't Contains {$(Conjunto)}")
end