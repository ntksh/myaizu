import std.stdio;

int main() {
    for (uint i = 1; i <= 9; i++) {
    	for (uint j = 1; j <= 9; j++) {
    		writefln("%dx%d=%d", i, j, i * j);
    	}
    }

    return 0;
}
