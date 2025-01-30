#include <iostream>

int main() {

  int i = 0;
  int n = 0;
  int r;

  try
  {
    throw 20;   // Throw: generazione dell'eccezione con un codice identificativo associato scelto da noi.
    r = i / n;
  }

  catch (int e)
  {
    std::cout << "Divisione non consentita\n" << "Codice errore: " << e << std::endl;
  }
  return 0;
}