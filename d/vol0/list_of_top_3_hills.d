import std.stdio;
import std.conv;
import std.algorithm;
import std.string;

int main(string[] args) {
	uint i;
	uint[] hills;
	hills.length = 10;

	uint t;
	string buf;
	uint count = 0;
    while ((buf = readln()) != null) {
    	hills[count] = to!(uint)(strip(buf));
    	count++;
    }

	sort!("a > b")(hills);

	for (i = 0; i < 3; i++) {
		writeln(hills[i]);
	}

	return 0;
}
