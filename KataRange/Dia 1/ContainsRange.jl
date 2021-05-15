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
Num3 = 3
Num4 = 10
array2 = GetAllPoints(Sim3,Sim4,Num3,Num4)

if (array1[1] < array2[1] && array1[length(array1)] > array2[length(array2)])
    print("$(Sim1)$(Num1),$(Num2)$(Sim2) Contains $(Sim3)$(Num3),$(Num4)$(Sim4)")
else
    print("$(Sim1)$(Num1),$(Num2)$(Sim2) doesn't Contains $(Sim3)$(Num3),$(Num4)$(Sim4)")
end