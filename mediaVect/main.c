int media(int* v, unsigned int size);

void main() {
	int v[] = { -2,-4,-6 };
	int m = media(v, sizeof(v) / sizeof(v[0]));
}