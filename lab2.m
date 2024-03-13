function [circles, index_number] = generate_circles(a, r_max, n_max)
index_number = 193552; % numer Twojego indeksu
L1 = 2;
circles = zeros(n_max, 3);
    validCircle = 1;
    for i = 1:n_max
        if validCircle == 0
            i = i-1;
            validCircle = 1;
            continue
        end

        while true
            X = rand * a;
            Y = rand * a;
            R = rand * r_max;
            if X ~= 0 && Y ~= 0 && R ~= 0
                break;
            end
        end
        circles(i, :) = [X, Y, R];
        if X-R < 0 || X+R > a || Y-R < 0 || Y+R > a
            validCircle = 0;
        end
        for j = 1:i-1
            X1 = circles(j,1);
            Y1 = circles(j,2);
            R1 = circles(j,3);
            if sqrt(power(X-X1,2)+power(Y-Y1,2)) <= R1+R
                validCircle = 0;
            end
        end
    end

end
