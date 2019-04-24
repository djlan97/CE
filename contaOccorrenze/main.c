unsigned int conta_occorrenze(const char* stringa, const char* parola);

void main() {
	char str[] = "ciao, io sono Dylan. Quante volte ciao c'è scritto ciao in questa stringa. ciao", word[] = "ciao";
	unsigned int n = conta_occorrenze(str, word);
}