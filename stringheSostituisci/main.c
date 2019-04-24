
sostituisci(char *dest,char *str, char *vecchia, char *nuova);

void main() {
	char str[] = "Qui sostituisci la parola sostituisci";
	char dest[255];
	sostituisci(dest,str,"sostituisci","ciao");
}