import std.stdio;
import std.string;
import std.conv;
import std.math;

unittest {
    string case1 = "5 7";
    assert(2 == calc_digit(case1));

    string case2 = "1 99";
    assert(3 == calc_digit(case2));

    string case3 = "1000 999";
    assert(4 == calc_digit(case3));
}

int main() {
    string buf;
    while ((buf = strip(readln())) != null) {
        writeln(calc_digit(buf));
    }

    return 0;
}

int calc_digit(string src) {
    string[] seed = split(src);
    int sum = to!(uint)(seed[0]) + to!(uint)(seed[1]);
    uint digit = 0;

    while (pow(10, digit) <= sum) {
        digit += 1;
    }

    return digit;
}
