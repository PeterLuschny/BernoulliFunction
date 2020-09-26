import graph;
import settings;

size(500*2/3, 333*2/3, IgnoreAspect);
ylimits(0, 0.33, Crop);

// Function.
real f(real x) {
    return - (1/4)*log((x^2 + 1/4)) / (cosh(pi * x)^2) ; 
}

pen myblue  = RGB(0, 14, 120);
draw(graph(f, -1, 1), myblue+linewidth(0.45mm));

label("$\log(2)/2$", (0.3, 0.35), black+fontsize(12));

// Axes.
xaxis( Label("$x$"), Ticks(new real[]{-1, -0.5, 0, 0.5, 1}), 
    xmin = -1, xmax = 1);
yaxis( Label("$y$"), Ticks(new real[]{0.1, 0.2, 0.3}),
    ymin = 0, ymax=0.345);

shipout("GammaPiIntegrand", bbox(0.25cm));
