function GetAllPoints(S1, S2, N1, N2)
    #Abierto
    if (S1 == '(')
        #abierto
        if (S2 == ')')
           array = [N1+1 for N1 in N1:N2-1]
        #cerrado
        else
            array = [N1 for N1 in N1:N2]
        end
    #cerrado
    else 
        #abierto
        if (S2 == ')')
            array = [N1 for N1 in N1:N2-1]
        #cerrado
        else
            array = [N1 for N1 in N1:N2]
        end
    end
end

Sim1 = '['
Sim2 = ')'
Num1 = 2
Num2 = 5
array1 = GetAllPoints(Sim1,Sim2,Num1,Num2)
Sim3 = '['
Sim4 = ')'
Num3 = 7
Num4 = 10
array2 = GetAllPoints(Sim3,Sim4,Num3,Num4)

res = false
for i in 1:length(array1)  
    for t in 1:length(array2)
        if (array1[i] == array2[t])
            res = true
        end
    end
end

if (res == true) 
    print("$(Sim1)$(Num1),$(Num2)$(Sim2) OverLaps with $(Sim3)$(Num3),$(Num4)$(Sim4)")
else    
    print("$(Sim1)$(Num1),$(Num2)$(Sim2) Doesn't OverLaps with $(Sim3)$(Num3),$(Num4)$(Sim4)")
end