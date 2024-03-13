function [circles, index_number, circle_areas, rand_counts, counts_mean] = generate_circles(a, r_max, n_max)
    index_number = 193552; % numer Twojego indeksu
    L1 = 2;
    circleCounter=0;
    circles = zeros(n_max, 3);
    circle_areas = zeros(n_max, 1);
    rand_counts = zeros(1,n_max);
    counts_mean = zeros(1, n_max);
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
    circle_areas(1,1) = pi * circles(1,3) * circles(1,3);
    for i = 2:200
        circle_areas(i,1) = circle_areas(i-1,1) + pi * circles(i,3) * circles(i,3);
    end

    for i = 1:200
        randomizations = 0;
        while true
            randomNumber = randi(200);
            randomizations = randomizations + 1;
            if randomNumber == i
                break
            end
        end
        rand_counts(1,i) = randomizations;
        counts_mean(1,i) = mean(rand_counts(1,1:i));
    end
end
