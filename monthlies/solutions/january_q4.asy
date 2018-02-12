size(10cm, 0);

int rows = 7;
int columns = 7;

path p = box((0, 0), (1, 1));
pen[][] cols = {{red, blue}, {green, yellow}};

for (int y = 0; y < rows; ++y) {
    for (int x = 0; x < columns; ++x) {
        fill(shift(x, y) * p, cols[y % 2][x % 2]);
    }
}

pen lines = linewidth(1pt);

for (int y = 0; y <= rows ; ++y) {
    draw((0, y) -- (columns + 0.5, y), lines);
}

for (int x = 0; x <= rows ; ++x) {
    draw((x, 0) -- (x, rows + 0.5), lines);
}

draw((0, 0) -- (10, 0), lines);
draw((0, 0) -- (0, 10), lines);

Label dots = "$\cdots$";
pen font = fontsize(20pt);

int midHeight = floor((rows + 1) / 2);
int midWidth = floor((columns + 1) / 2);

label(dots, (columns + 2, midHeight), p = font);
label(rotate(90) * dots, (midWidth, rows + 2), p = font);
label(rotate(45) * dots, (columns + 2, rows + 2), p = font);

