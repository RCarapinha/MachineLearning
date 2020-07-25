function [Winner] = win(M)
A = 0;
B = 0;
C = 0;
D = 0;
E = 0;
F = 0;
G = 0;
H = 0;

%check if rows wins
for i=1:1:4
    for j=1:1:4
        for k = 1:1:4
            A = A + M(k,j,i);
            if A == 4
                A = 0;
                Winner = 1;
                return
            elseif A == -4
                A = 0;
                Winner = -1;
                return
            else
                Winner = 0;
            end
        end
        A = 0;
    end
    A = 0;
end
%--------------------------

%check if columns wins
for i=1:1:4
    for j=1:1:4
        for k=1:1:4
            B = B + M(j,k,i);
            if B == 4
                B = 0;
                Winner = 1;
                return
            elseif B == -4;
                B = 0;
                Winner = -1;
                return
            else
                Winner = 0;
            end
        end
        B = 0;
    end
    B = 0;
end
%--------------------------

%check if layer wins
for i=1:1:4
    for k=1:1:4
        C = C + M(i,i,k);
        if C == 4
            C = 0;
            Winner = 1;
            return
        elseif C == -4;
            C = 0;
            Winner = -1;
            return
        else
            Winner = 0;
        end
    end
    C = 0;
end
%--------------------------

%Check for Diagonal Wins
for p = 1:1:4
    for t = 1:1:4
        D = D + M(t,t,p);
        if D == 4
            D = 0;
            Winner = 1;
            return
        elseif D == -4
            D = 0;
            Winner = -1;
            return
        else
            Winner == 0;
        end
    end
end
%---------------------

%Check diagonals between layers
E = M(1,4,1) + M(2,3,2) + M(3,2,3) + M(4,1,4);
if E == 4
    E = 0;
    Winner = 1;
    return
elseif E == -4
    E = 0;
    Winner = -1;
    return
else
    Winner = 0;
end

F = M(4,1,1) + M(3,2,2) + M(2,3,3) + M(1,4,4);
if F == 4
    F = 0;
    Winner = 1;
    return
elseif F == -4
    F = 0;
    Winner = -1;
    return
else
    Winner = 0;
end

G = M(4,4,1) + M(3,3,2) + M(2,2,3) + M(1,1,4);
if G == 4
    G = 0;
    Winner = 1;
    return
elseif G == -4
    G = 0;
    Winner = -1;
    return
else
    Winner = 0;
end

for p = 1:1:4
    H = H + M(t,t,t);
    if H == 4
        H = 0;
        Winner = 1;
        return
    elseif H == -4
        H = 0;
        Winner = -1;
        return
    else
        Winner == 0;
    end
end
%----------------------
end