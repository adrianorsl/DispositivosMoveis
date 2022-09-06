
import 'dart:io';

main(){

  String? ler = stdin.readLineSync();

  var lista = [];
  while (ler != 'sair'){
    print("Digite uma idade, caso queira sair digite 'sair'");
    int x = int.parse(ler!);
    if( x >= 141){
      print("Valor invalido, digite entre 0 e 140");
      ler = stdin.readLineSync();
    }else{
      lista.add(x);
      ler = stdin.readLineSync();
    }
  }
  int menor = 0;
  int maior = 0;
  for(int x = 0; x < lista.length;x++) {
    if(lista[x] < 21){
      menor++;
    }else if (lista[x] > 50){
      maior++;
    }
  }
  print("Existem " + menor.toString() + " com idade menor que 21 anos");
  print("Existem " + maior.toString() + " com idade maior que 50 anos");


}