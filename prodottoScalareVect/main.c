int prodotto_scalare(const int* v1, const int* v2, unsigned int size);

void main() {
	int v[] = { 1,-4 }, f[] = { -5,6 };
	int a = prodotto_scalare(v, f, sizeof(v) / sizeof(v[0]));

}