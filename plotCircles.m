function plotCircles(a,circles, n_max)
    axis equal
    axis([0 a 0 a])
    hold on
    for i = 1:n_max
        plot_circle(circles(i,3), circles(i,1), circles(i, 2))
    end
end