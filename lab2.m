function lab2()
clear all
close all
format compact

n_max = 200;
a = 200;
r_max = a/2; 

[circles, index_number, circle_areas, rand_counts, counts_mean] = generate_circles(a, r_max, n_max);
plot_circles(a, circles, n_max); 
pause(5);
plot_circle_areas(circle_areas);
pause(5);
plot_counts_mean(counts_mean);
pause(5);
[numer_indeksu, Edges, I, B, A, b, r] = page_rank();
plot_PageRank(r);

end