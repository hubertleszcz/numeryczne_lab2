function [circles, index_number] = generate_circles(a, r_max, n_max)
    index_number = 193552; % numer Twojego indeksu
    L1 = 2;
    circles = matrix(n_max, 3);
    circles(0) = [randi(a/2) randi(a/2), randi(r_max/2)]
    for i = 2:n_max
    end


end
