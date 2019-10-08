// Objective 
max: 0.1 x1 y1+0.130 x2 y2+0.073 x3 y3+0.090 x4 y4+0.1145 x5 y5+0.167x6 y6+0.280x7 y7+0.25x8 y8;

// Constraints

40x1 y1+50x2 y2+80x3 y3+60x4 y4+45x5 y5+60x6 y6+30x7 y7+25x8 y8<=2500000;

40 x1 y1+ 50 x2 y2+ 80 x3 y3<=1000000;
60 x4 y4+ 45 x5 y5+ 60 x6 y6<=1000000;
30 x7 y7+ 25 x8 y8<=1000000;

//Invest atleast 

40 x1 y1>=100000;
50 x2 y2>=100000;
80 x3 y3>=100000;
60 x4 y4>=100000;
45 x5 y5>=100000;
60 x6 y6>=100000;
30 x7 y7>=100000;
25 x8 y8>=100000;

// Multiples


bin x1, x2, x3, x4, x5, x6, x7, x8;

int y1;
int y2;
int y3;
int y4;
int y5;
int y6;
int y7;
int y8;
