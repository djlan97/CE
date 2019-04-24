void array_somma(int *v1, int *v2, int *v3, unsigned int size);

void main() {
	int arr1[] = { 1,2,3,4 }, arr2[] = { 1,2,3,4 }, arr3[4];
	array_somma(arr1, arr2, arr3, sizeof(arr1) / sizeof(arr1[0]));
}