% Generation of element equations for a 2D heat flow problem
nodes = [0., 0.; 0., 0.0075; 0., 0.015; 0., 0.0225;
    0., 0.03; 0.015, 0.; 0.015, 0.0075; 0.015, 0.015;
    0.015, 0.0225; 0.015, 0.03; 0.03, 0.; 0.03, 0.0075;
    0.03, 0.015; 0.03, 0.0225; 0.03, 0.03; 0.045, 0.; 0.045, 0.0075;
    0.045, 0.015; 0.06, 0.; 0.06, 0.0075; 0.06, 0.015];
[kk, rQ] = HeatTriElement(45, 45, 5000000,nodes([4 10 5],:))
rq = HeatFluxTerm(3, 8000, nodes([4 10 5],:))
[kh, rh] = ConvectionTerm(2, 55, 20, nodes([4 10 5],:))
k = kk + kh
r = rq + rQ + rh