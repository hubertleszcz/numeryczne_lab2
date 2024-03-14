function plot_circles(a,circles, index_number)
    axis equal
    axis([0 a 0 a])
    hold on
    for i = 1:size(circles,1)
        plot_circle(circles(i,3), circles(i,1), circles(i, 2))
        pause(0.02)
    end
    hold off
    print -dpng zadanie1.png 
end