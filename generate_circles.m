function [circles, index_number] = generate_circles(a, r_max, n_max)
    index_number = 193552; % numer Twojego indeksu
    L1 = 2;
    circleCounter=0;
    circles = zeros(n_max, 3);
    while circleCounter < n_max
        X = rand * a;
        Y = rand * a;
        R = rand * r_max;
        if X == 0 || Y == 0 || R == 0
            continue
        end
        if X - R < 0 || Y - R < 0 || X+R > a || Y+R >a
            continue
        end
        validCircle = 1;
        for i = 1:circleCounter
            X1 = circles(i,1);
            Y1 = circles(i,2);
            R1 = circles(i,3);
            if sqrt(power(X-X1,2) + power(Y-Y1,2)) <= R1+R
                validCircle = 0;
                break
            end
        end
        
        if validCircle == 1
            circleCounter = circleCounter + 1;
            circles(circleCounter,:) = [X Y R];
        end
    end
end
