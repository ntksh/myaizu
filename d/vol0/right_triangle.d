import std.stdio;
import std.string;
import std.conv;
import std.math;

unittest {
    string case1 = "4 3 5";
    assert("YES" == is_right_triangle(case1));
    
    string case2 = "4 3 6";
    assert("NO" == is_right_triangle(case2));
    
    string case3 = "8 8 8";
    assert("NO" == is_right_triangle(case3));
}

int main() {
    string buf = strip(readln());

    while ((buf = strip(readln())) != null) {
        writeln(is_right_triangle(buf));
    }

    return 0;
}

string is_right_triangle(string data_set) {
    string[] sides = split(data_set);
    int a = to!(uint)(sides[0]);
    int b = to!(uint)(sides[1]);
    int c = to!(uint)(sides[2]);
    int max = 0;
    int s1, s2;
    if (a > b) {
        if (a > c) {
            max = a;
            s1 = b;
            s2 = c;
        } else {
            max = c;
            s1 = a;
            s2 = b;
        }
    } else {
        if (b > c) {
            max = b;
            s1 = a;
            s2 = c;
        } else {
            max = c;
            s1 = b;
            s2 = a;
        }
    }
    if (a < b + c && b < a + c && c < a + b) {
        if (pow(max, 2) == pow(s1, 2) + pow(s2, 2)) {
            return "YES";
        }

    }
    return "NO";
}
