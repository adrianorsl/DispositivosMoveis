
import 'dart:io';

main(){

  calcularComissao(double a, double b){
    return ((a / 100) * b);
  }
  salarioTotal(double y, String nome, double a, double b){
    double x = y + calcularComissao(a,b);
    double z = x - y;
    print("O funcionário " + nome + " deverá receber este mês o valor " + x.toString()
          + " sendo " + y.toString() + " de salário e " + z.toString() + " de comissão");
  }



  print("Digite o nome do Funcionário");
  String? ler = stdin.readLineSync();
  String nome = ler!;
  print("Digite o salário do funcionário");
  ler = stdin.readLineSync();
  double salario = double.parse(ler!);
  print("Digite o valor total de vendas");
  ler = stdin.readLineSync();
  double vendas = double.parse(ler!);
  print("Digite o valor da comissão");
  ler = stdin.readLineSync();
  double comissao = double.parse(ler!);
  salarioTotal(salario, nome, comissao, vendas);



}