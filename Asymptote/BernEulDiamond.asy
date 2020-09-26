
size(750);

string[] primor = {
"$\mathbf{Andr\acute{e}\ numbers}$",
"$\mathbf{Euler\ secant}$",
"$\mathbf{Euler\ tangent}$",
"$\mathbf{Bernoulli\ secant}$",
"$\mathbf{Bernoulli\ tangent}$",
"$\mathbf{Bernoulli\ extended}$",
"$\mathbf{Euler\ zeta\ numbers}$"};

string[] qrimor = {
"$1,1,1,2,5,16,61,\ldots$",                                               // "$Andr\'e numbers$"
"$1,0,1,0,5,0,61,0,\ldots$",                                              // "$Euler\ classic$",
"$0,1,0,2,0,16,0,272,\ldots$",                                            // "$Euler\ tangent$",
"$0,\frac12,0,\frac{3}{56},0,\frac{25}{992},0,\frac{427}{16256},\ldots$", // "$Bernoulli\ secant$",
"$1,0,\frac16,0,\frac{1}{30},0,\frac{1}{42},0,\ldots$",                   // "$Bernoulli\ classic$",
"$1,\frac12,\frac16,\frac{3}{56},\frac{1}{30},\frac{25}{992},\frac{1}{42},\ldots$", // "$Bernoulli\ extended$",
"$1,1,\frac{1}{2},\frac{1}{3},\frac{5}{24},\frac{2}{15},\frac{61}{720},\ldots$"};   // "$Euler\ zeta\ number$"

pen circpen  = gray(0.85)+linewidth(3*linewidth());
pen labelpen = brown+fontsize(14);
pen cpen = black;
pair m = (0,0.75);

pair[] pos = {
   (0.5,4),   
   (3.5,1), 
   (3.5,7),
   (11.0,1), 
   (10.2,7),
   (14,4), 
   (7,4)
};

pair[] posL = {
   (7/2-2.3, 5/2-0.2),
   (7/2-2.3,11/2+0.2),
   (29/2-1.3,5/2-0.2),
   (29/2-1.3,11/2+0.2),
   (7, 0.5),
   (7, 7.5),
   (3.65, 4.5), 
   (10.5, 4.5)
};

label("$[n\ even]$",    posL[0],labelpen);
label("$[n\ odd]$",     posL[1],labelpen);
label("$[n\ odd]$",     posL[2],labelpen);
label("$[n\ even]$",    posL[3],labelpen);
label("$(4^n - 2^n)/n$",posL[4],labelpen);
label("$(4^n - 2^n)/n$",posL[5],labelpen);
label("$n!$",           posL[6],labelpen);
label("$n!/(4^n - 2^n)$",posL[7],labelpen);

void zeige(int i, int k)
{
   real s = 1/3;
   if( i==3 & k==1) { s = 2/5; }
   if( i==4 & k==2) { s = 2/5; }
   if( i==6 ) { s = 2/5; }
   pair a = pos[i] + (pos[k]-pos[i])*s;
   pair b = pos[i] + (pos[k]-pos[i])*(1-s);
   draw(a--b, Arrow);
}

void male(int i)
{
   Label L;
   if(i==6)
      L = Label(qrimor[i], pos[i],labelpen);
   else
      L = Label(qrimor[i], pos[i],fontsize(14));
   draw( L, ellipse, xmargin=1.5, ymargin=4, circpen);
   label(primor[i],pos[i]-m,cpen);
}

zeige(0,1); zeige(0,2); 
zeige(3,1); zeige(4,2);
zeige(5,3); zeige(5,4); 
zeige(6,0); zeige(6,5);

for (int i=0;i<pos.length;++i) { male(i); }

//label("$The\ Euler-Bernoulli\ number\ family.$",(7.2,-1),blue);
//label("$Values\ unsigned,\ transforms\ for\ n > 0.$",(7.2,-1.5),black+fontsize(11));


shipout("Fig18EulerBernoulliFamily"); //, bbox(0.3cm));
