public class Crivello {
    public static void main(String[] args) {
        // Scegliamo il limite massimo
        int limite = 50;

        // Creiamo un array per segnare quali numeri sono primi
        boolean[] numeriPrimi = new boolean[limite + 1];

        // Inizializziamo l'array: assumiamo che tutti i numeri siano primi
        for (int i = 0; i <= limite; i++) {
            numeriPrimi[i] = true;
        }

        // Sappiamo che 0 e 1 non sono primi
        numeriPrimi[0] = false;
        numeriPrimi[1] = false;

        // Calcoliamo i numeri primi
        for (int i = 2; i <= limite; i++) {
            if (numeriPrimi[i]) { // Se il numero è primo
                for (int j = i * 2; j <= limite; j += i) {
                    numeriPrimi[j] = false; // Segniamo i multipli come non primi
                }
            }
        }

        // Stampiamo i numeri primi
        System.out.println("Numeri primi fino a " + limite + ":");
        for (int i = 2; i <= limite; i++) {
            if (numeriPrimi[i]) {
                System.out.print(i + " ");
            }
        }
    }
}