import graph;
import settings;

size(500*2/3, 333*2/3, IgnoreAspect);

pair[] BernoulliConstants = {
(-0.600000, 0.003989),
(-0.575815, 0.077739),
(-0.554772, 0.140979),
(-0.531106, 0.210812),
(-0.507284, 0.279470),
(-0.483575, 0.345908),
(-0.461594, 0.405601),
(-0.438834, 0.465273),
(-0.415295, 0.524489),
(-0.391832, 0.580788),
(-0.367697, 0.635656),
(-0.346439, 0.681278),
(-0.322508, 0.729449),
(-0.298478, 0.774272),
(-0.275321, 0.813974),
(-0.254292, 0.846965),
(-0.229287, 0.882300),
(-0.208104, 0.908855),
(-0.183463, 0.935781),
(-0.161652, 0.956014),
(-0.137722, 0.974292),
(-0.114935, 0.987870),
(-0.091159, 0.998058),
(-0.080242, 1.001379),
(-0.069325, 1.003850),
(-0.057549, 1.005566),
(-0.045774, 1.006303),
(-0.033542, 1.006038),
(-0.021311, 1.004733),
(-0.010664, 1.002756),
(-0.000016, 1.000005),
(0.022983, 0.991454),
(0.046743, 0.978952),
(0.069988, 0.963217),
(0.092478, 0.944801),
(0.117450, 0.920816),
(0.139888, 0.896223),
(0.163846, 0.866943),
(0.185555, 0.837854),
(0.209289, 0.803436),
(0.231621, 0.768713),
(0.254964, 0.730173),
(0.277786, 0.690450),
(0.301679, 0.646900),
(0.324690, 0.603249),
(0.348223, 0.557083),
(0.371561, 0.509978),
(0.393006, 0.465709),
(0.417584, 0.414027),
(0.439567, 0.367134),
(0.463006, 0.316643),
(0.485440, 0.268027),
(0.510349, 0.213934),
(0.531919, 0.167178),
(0.556402, 0.114411),
(0.578715, 0.066774),
(0.603121, 0.015361),
(0.624180, -0.028265),
(0.648164, -0.076952),
(0.671331, -0.122811),
(0.694483, -0.167336),
(0.717550, -0.210257),
(0.739710, -0.250009),
(0.763665, -0.291220),
(0.786496, -0.328674),
(0.810525, -0.366055),
(0.832277, -0.398001),
(0.856317, -0.431121),
(0.879343, -0.460614),
(0.902313, -0.487792),
(0.926305, -0.513726),
(0.948403, -0.535348),
(0.971034, -0.555208),
(0.996021, -0.574421),
(1.018645, -0.589341),
(1.041783, -0.602161),
(1.065313, -0.612671),
(1.086942, -0.620097),
(1.109997, -0.625677),
(1.132877, -0.628861),
(1.157352, -0.629716),
(1.178949, -0.628325),
(1.203869, -0.624286),
(1.226356, -0.618466),
(1.248607, -0.610743),
(1.272533, -0.600340),
(1.296556, -0.587800),
(1.318414, -0.574651),
(1.341625, -0.558970),
(1.364278, -0.542055),
(1.388833, -0.522038),
(1.410080, -0.503404),
(1.434484, -0.480618),
(1.457424, -0.457965),
(1.480143, -0.434468),
(1.502879, -0.410006),
(1.526070, -0.384201),
(1.550651, -0.356039),
(1.573189, -0.329609),
(1.595438, -0.303060),
(1.619221, -0.274295),
(1.642952, -0.245324),
(1.664252, -0.219195),
(1.689484, -0.188217),
(1.710597, -0.162372),
(1.735291, -0.132350),
(1.758858, -0.104016),
(1.779902, -0.079069),
(1.803567, -0.051503),
(1.827389, -0.024376),
(1.851098, 0.001909),
(1.873079, 0.025567),
(1.895840, 0.049267),
(1.919378, 0.072854),
(1.942842, 0.095364),
(1.966976, 0.117406),
(1.988234, 0.135840),
(2.012166, 0.155441),
(2.036195, 0.173853),
(2.059353, 0.190354),
(2.080381, 0.204255),
(2.105387, 0.219417),
(2.126569, 0.231083),
(2.151210, 0.243279),
(2.173021, 0.252836),
(2.196951, 0.261981),
(2.219739, 0.269390),
(2.243515, 0.275781),
(2.265349, 0.280457),
(2.288900, 0.284240),
(2.313362, 0.286814),
(2.334657, 0.287954),
(2.357656, 0.288067),
(2.381416, 0.287003),
(2.404661, 0.284843),
(2.427152, 0.281742),
(2.452123, 0.277189),
(2.474562, 0.272151),
(2.498519, 0.265840),
(2.520229, 0.259342),
(2.543962, 0.251446),
(2.566294, 0.243318),
(2.589637, 0.234159),
(2.612460, 0.224607),
(2.636352, 0.214042),
(2.659364, 0.203383),
(2.682896, 0.192058),
(2.706234, 0.180466),
(2.727679, 0.169553),
(2.752257, 0.156804),
(2.774241, 0.145239),
(2.797679, 0.132799),
(2.820113, 0.120843),
(2.845023, 0.107573),
(2.866593, 0.096138),
(2.891075, 0.083278),
(2.913388, 0.071718),
(2.937795, 0.059300),
(2.958854, 0.048815),
(2.982837, 0.037177),
(3.006004, 0.026282),
(3.029156, 0.015773),
(3.052223, 0.005712),
(3.074383, -0.003539),
(3.098338, -0.013054),
(3.121170, -0.021627),
(3.145198, -0.030105),
(3.166950, -0.037281),
(3.190990, -0.044643),
(3.214016, -0.051124),
(3.236986, -0.057022),
(3.260979, -0.062571),
(3.283076, -0.067127),
(3.305707, -0.071241),
(3.330695, -0.075136),
(3.353319, -0.078083),
(3.376456, -0.080534),
(3.399986, -0.082455),
(3.421615, -0.083722),
(3.444671, -0.084561),
(3.467551, -0.084889),
(3.492025, -0.084704),
(3.513623, -0.084098),
(3.538542, -0.082910),
(3.561030, -0.081412),
(3.583280, -0.079554),
(3.607207, -0.077168),
(3.631230, -0.074396),
(3.653087, -0.071574),
(3.676299, -0.068291),
(3.698951, -0.064831),
(3.723507, -0.060828),
(3.744754, -0.057179),
(3.769157, -0.052808),
(3.792097, -0.048552),
(3.814816, -0.044227),
(3.837553, -0.039816),
(3.860743, -0.035260),
(3.885324, -0.030400),
(3.907863, -0.025942),
(3.930111, -0.021566),
(3.953894, -0.016938),
(3.977625, -0.012400),
(4.000000, -0.008215)
};

guide g;
for(int i = 0; i < BernoulliConstants.length; ++i)
    g=g--(BernoulliConstants[i].x,BernoulliConstants[i].y);

path BernoulliConstantsPath = g;

// pen mybrown = RGB(120, 0, 14);
pen myblue  = RGB(0, 14, 120);
draw(BernoulliConstantsPath, myblue+linewidth(0.5mm));

xlimits(-0.6, 4.0, Crop);
ylimits(-0.65, 1.01, Crop);

xaxis(RightTicks(Label(fontsize(12)), 
    new real[]{1, 2, 3, 4}));
yaxis(LeftTicks(Label(fontsize(12)),  
    new real[]{-.6, -.4, -.2, .2, .4, .6, .8, 1.0}));

pair gamma = (1.0, -0.577215);
dot(gamma, red, FillDraw);

label("$-\gamma$", (1.13, -0.52), fontsize(12));

shipout("BernoulliConstants", bbox(0.25cm));
