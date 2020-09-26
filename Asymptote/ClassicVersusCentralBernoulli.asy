import gsl;
import graph;
import settings;

size(500*2/3, 333*2/3, IgnoreAspect);

// Classic Bernoulli Function.
real b(real x) {
    if(x == 0.0){ return 1; } 
    return -x*zeta(1 - x); 
}

// Central Bernoulli Function.
real bc(real x) {
    if(x == 1.0) { return 0; } 
    return gamma(x + 1)*(2 - 2^(2 - x))*zeta(x)*cos(x*pi/2)*(2*pi)^(-x);
}


pen mybrown = RGB(120, 0, 14);
pen myblue  = RGB(0, 14, 120);

draw(graph(b,  -0.0, 11), mybrown+linewidth(0.4mm));
draw(graph(bc, -0.0, 11), myblue+linewidth(0.4mm));

xlimits(0.0, 11.06, Crop);
ylimits(-0.1,  1.01,  Crop);

xaxis(RightTicks(Label(fontsize(12)), 
    new real[]{2, 4, 6, 8, 10}));
yaxis(Left, LeftTicks(Label(fontsize(12)), 
    new real[]{-.1, .2, .4, .6, .8, 1}));

label("$\mathbf{B}(s)$",          (9.0,0.8), mybrown+fontsize(14));
label("$\ \, \mathbf{B}^{c}(s)$", (9.0,0.7), myblue+fontsize(14));

shipout("ClassicVersusCentralBernoulli", bbox(0.25cm));
