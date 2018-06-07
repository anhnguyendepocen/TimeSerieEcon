format long g;
data = data/3;
A = zeros(504,1);
i = 1
    for j = 1:3:504
        A(j) = data(i);
        i = i+1
    end
    for k = 1:504
        if A(k) == 0
            A(k)=A(k-1);
        end
    end

    for t = 4:504
        lincg(t) = (A(t-1)+A(t-2))./(A(t-2)+A(t-3));
    end