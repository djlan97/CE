void encrypt(char *v, unsigned int size);

void main() {
	char str[] = "stringa da criptare";
	encrypt(str, sizeof(str) / sizeof(str[0]));
	encrypt(str, sizeof(str) / sizeof(str[0]));
}