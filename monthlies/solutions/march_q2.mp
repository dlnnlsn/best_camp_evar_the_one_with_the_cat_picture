prologues := 3;
outputtemplate := "march_q2.mps";

u := 2in;

pair E;
E := (3/5, -4/5) scaled 1.5u;

pair G;
G := E rotated 90;

pair F;
F := E + G;

pair M;
M := 0.5 [(0, 1u), G];

pair N;
N = whatever [M, (0, 0)];
N = whatever [(-1u, 0), E];

beginfig(1);

draw (0, 0) -- (0, 1u) -- (-1u, 1u) -- (-1u, 0) -- cycle;
draw (0, 0) -- E -- F -- G -- cycle;

dotlabel.ulft(btex $D (-1, 1)$ etex, (-1u, 1u));
dotlabel.llft(btex $A (-1, 0)$ etex, (-1u, 0));
dotlabel.ulft(btex $B (0, 0)$ etex, (0, 0));
dotlabel.urt(btex $C (0, 1)$ etex, (0, 1u));

dotlabel.bot(btex $E (e_x, e_y)$ etex, E);
dotlabel.rt(btex $F$ etex, F);
dotlabel.urt(btex $G(-e_y, e_x)$ etex, G);

draw G -- (0, 1u);

dotlabel.urt(btex ${1 \over 2} (-e_y, 1 + e_x)$ etex, M);

draw (-1u, 0) -- E;
draw M -- N;
dotlabel("", N);

endfig;

end;
