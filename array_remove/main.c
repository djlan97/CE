void array_remove(int* v, unsigned int *size, unsigned int pos);

void main(){
	int v[] = { 2,4,5,1,6 };
	unsigned int n = sizeof(v) / sizeof(v[0]);
	array_remove(v, &n, 1);
}