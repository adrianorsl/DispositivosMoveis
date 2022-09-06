
import 'dart:io';


class Conta {
  late int numero;
  late String nome;
  late double saldo;

  String mostar(){
    String x = "O número da conta é: $numero\nO nome do cliente é: $nome\n" +
                "O saldo da conta é: $saldo";
    
    return x;
  }

}
void main(){

  var clientes = [];
  print("Para sair digite 1 para iniciar ou -999 para sair");
  String? ler = stdin.readLineSync();
  while (ler != '-999'){
    var cliente = new Conta();
    print("Para sair digite -999");
    print("Digite o número da conta");
    ler = stdin.readLineSync();
    if((ler == "-999") || (clientes.length == 10000)){
      break;
    }
    cliente.numero = int.parse(ler!);
    print("Digite o nome da conta");
    ler = stdin.readLineSync();
    cliente.nome = ler!;
    print("Digite o saldo da conta");
    ler = stdin.readLineSync();
    cliente.saldo = double.parse(ler!);
    if (clientes.length <= 10000){
      clientes.add(cliente);
    }else{
      print("limite de contas atingido");
    }
  }
  int positivo = 0;
  int negativo = 0;
  double saldoAgencia = 0;
  for(int x = 0; x < clientes.length; x++){
    var clienteMostra = new Conta();
    clienteMostra = clientes[x];
    print(clienteMostra.mostar());
    if (clienteMostra.saldo > 0){
      print("POSITIVO");
      positivo++;
      saldoAgencia += clienteMostra.saldo;
    }else{
      print("NEGATIVO");
      negativo++;
      saldoAgencia += clienteMostra.saldo;
    }
  }
  print("Existem $positivo contas POSITIVAS e $negativo NEGATIVAS");
  print("O saldo total da Agencia é: $saldoAgencia");
}
