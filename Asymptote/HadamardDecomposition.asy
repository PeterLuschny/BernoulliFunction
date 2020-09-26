import gsl;
import graph;
import settings;

size(500*2/3, 333*2/3, IgnoreAspect);

// Function.
real Bernoulli(real x) {
    if(x == 0){ return 1; } else { return -x*zeta(1 - x); }
}

real Xi(real x) {
    if(x == 1){ return 1/2; }
    return pi^(-x/2)*(x - 1)*zeta(x)*gamma(x/2 + 1); 
}

real BdivXi(real x) { 
    return Bernoulli(x) / Xi(x); 
}

pen mybrown = RGB(120, 0, 14);
pen myblue  = RGB(0, 14, 120);

draw(graph(BdivXi,  0, 9), mybrown+linewidth(0.45mm));
draw(graph(Xi, 0, 9), myblue+linewidth(0.45mm));

xlimits(0, 9, Crop);
ylimits(-0.25, 2.0, Crop);

xaxis(Bottom, RightTicks(Label(fontsize(12)), new real[]{ 3, 6, 9}));
yaxis(Left, LeftTicks(Label(fontsize(12)), new real[]{-.25, 0, .5, 1, 1.5, 2}));

label("$\mathbf{\xi}(s)       $",  (7.65, 0.65), myblue+fontsize(13));
label("$\mathbf{B}(s) / \mathbf{\xi}(s)$",  (7.2, 0.425), mybrown+fontsize(13));

shipout("HadamardDecomposition", bbox(0.25cm));
