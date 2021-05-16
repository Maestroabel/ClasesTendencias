function GetAllPoints(S1, S2, N1, N2)
    #Abierto
    if (S1 == '(')
        #abierto
        if (S2 == ')')
           array = [N1+1,N2-1]
        #cerrado
        else
            array = [N1+1,N2]
        end
    #cerrado
    else 
        #abierto
        if (S2 == ')')
            array = [N1,N2-1]
        #cerrado
        else
            array = [N1,N2]
        end
    end
end

Sim1 = '['
Sim2 = ')'
Num1 = 2
Num2 = 6
EndPoint = GetAllPoints(Sim1,Sim2,Num1,Num2)

print("$(Sim1)$(Num1),$(Num2)$(Sim2) EndPoint = {$(EndPoint)}")