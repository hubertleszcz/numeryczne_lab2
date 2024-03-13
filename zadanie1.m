function zadanie1()
clear all
close all
format compact

n_max = 200;
a = 200;
r_max = a/2; 

[circles, index_number] = generate_circles(a, r_max, n_max);
plot_circles(a, circles, n_max); 
print -dpng zadanie1.png 

end