function [Row,Column,Layer] = ai(M)

A = 0;
B = 0;
C = 0;
D = 0;
E = 0;
F = 0;
G = 0;
H = 0;

%Check rows
for k = 1:1:4
    for i = 1:1:4
        A = 0;
        for j = 1:1:4
            A = A + M(j,i,k);
            if A >= 3
                if M(1,i,k) == 0
                    Row = 1;
                    Column = i;
                    Layer = k;
                    return
                elseif M(2,i,k) == 0
                    Row = 2;
                    Column = i;
                    Layer = k;
                    return
                elseif M(3,i,k) == 0
                    Row = 3;
                    Column = i;
                    Layer = k;
                    return
                elseif M(4,i,k) == 0
                    Row = 4;
                    Column = i;
                    Layer = k;
                    return
                end
            end
        end
    end
end
%--------------------

%Check columns
for q = 1:1:4
    for w = 1:1:4
        B = 0;
        for e = 1:1:4
            B = B + M(w,e,q);
            if B >= 3
                if M(w,1,q) == 0
                    Row = w;
                    Column = 1;
                    Layer = q;
                    return
                elseif M(w,2,q) == 0
                    Row = w;
                    Column = 2;
                    Layer = q;
                    return
                elseif M(w,3,q) == 0
                    Row = w;
                    Column = 3;
                    Layer = q;
                    return
                elseif M(w,4,q) == 0
                    Row = w;
                    Column = 4;
                    Layer = q;
                    return
                end
            end
        end
    end
end
%-----------

%Check layers
for r = 1:1:4
    C = 0;
    for f = 1:1:4
        C = C + M(r,r,f);
        if C >= 3
            if M(r,r,1) == 0
                Row = r;
                Column = r;
                Layer = 1;
                return
            elseif M(r,r,2) == 0
                Row = r;
                Column = r;
                Layer = 3;
                return
            elseif M(r,r,3) == 0
                Row = r;
                Column = r;
                Layer = 3;
                return
            elseif M(r,r,4) == 0
                Row = r;
                Column = r;
                Layer = 4;
                return
            end
        end
    end
end
%------------

%Check diagonals between layers
for c = 1:1:4
    D = D + M(c,c,c);
    if D >= 3
        if M(1,1,1) == 0
            Row = 1;
            Column = 1;
            Layer = 1;
            return
        elseif M(2,2,2) == 0
            Row = 2;
            Column = 2;
            Layer = 2;
            return
        elseif M(3,3,3) == 0
            Row = 3;
            Column = 3;
            Layer = 3;
            return
        elseif M(4,4,4) == 0
            Row = 4;
            Column = 4;
            Layer = 4;
            return
        end
    end
end

E = M(1,4,1) + M(2,3,2) + M(3,2,3) + M(4,1,4);
if E >= 3
    if M(1,4,1) == 0
        Row = 1;
        Column = 4;
        Layer = 1;
        return
    elseif M(2,3,2) == 0
        Row = 2;
        Column = 3;
        Layer = 2;
        return
    elseif M(3,2,3) == 0
        Row = 3;
        Column = 2;
        Layer = 3;
        return
    elseif M(4,1,4) == 0
        Row = 4;
        Column = 1;
        Layer = 4;
        return
    end
end

F = M(4,1,1) + M(3,2,2) + M(2,3,3) + M(1,4,4);
if F >= 3
    if M(4,1,1) == 0
        Row = 4;
        Column = 1;
        Layer = 1;
        return
    elseif M(3,2,2) == 0
        Row = 3;
        Column = 2;
        Layer = 2;
        return
    elseif M(2,3,3) == 0
        Row = 2;
        Column = 3;
        Layer = 3;
        return
    elseif M(1,4,4) == 0
        Row = 1;
        Column = 4;
        Layer = 4;
        return
    end
end

G = M(4,4,1) + M(3,3,2) + M(2,2,3) + M(1,1,4);
if G >= 3
    if M(4,4,1) == 0
        Row = 4;
        Column = 4;
        Layer = 1;
        return
    elseif M(3,3,2) == 0
        Row = 3;
        Column = 3;
        Layer = 2;
        return
    elseif M(2,2,3) == 0
        Row = 2;
        Column = 2;
        Layer = 3;
        return
    elseif M(1,1,4) == 0
        Row = 1;
        Column = 1;
        Layer = 4;
        return
    end
end
%----------------

%Check diagonals
for p = 1:1:4
    H = 0;
    for t = 1:1:4
        H = H + M(t,t,p);
        if H >= 3
            if M(1,1,p) == 0
                Row = 1;
                Column = 1;
                Layer = p;
                return
            elseif M(2,2,p) == 0
                Row = 2;
                Column = 2;
                Layer = p;
                return
            elseif M(3,3,p) == 0
                Row = 3;
                Column = 3;
                Layer = p;
                return
            elseif M(4,4,p) == 0
                Row = 4;
                Column = 4;
                Layer = p;
                return
            end
        end
    end
end
%----------------

Row = randi(4,1);
Column = randi(4,1);
Layer = randi(4,1);

end