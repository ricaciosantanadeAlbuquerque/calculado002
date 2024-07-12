import 'dart:io';
void main(){
  menu();
}

int menu(){
  print('======Menu Opção======');
  print('Digite [1] para somar ');
  print('Digite [2] para subtrair');
  print('Digite [3] para mutiplicar');
  print('Digite [4] para dividir');
  print('Digite [5] para sair');
  String? entradaDados = stdin.readLineSync();

  if(entradaDados != null){
    if(entradaDados.isNotEmpty){
      try{
       int op = int.parse(entradaDados);
       return op;
      }catch(e){
        throw Exception('ERRO!!! Não foi possível converte $entradaDados para inteiro.');
      }
    }else{
      print('Digite um valor válido diferente de vazio !!');
      exit(0);
    }
  }else{
    print('Digite um valor válido !!');
    exit(0);
  }
}

void escolha({required int op}){  
    switch(op){
      case 1:
      print('Digite primeiro valor');
      String? entrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? entrada2 = stdin.readLineSync();
      break;
      case 2:
      print('Digite primeiro valor');
      String? entrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? entrada2 = stdin.readLineSync();
      break;
      case 3:
      print('Digite primeiro valor');
      String? entrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? entrada2 = stdin.readLineSync();
      break;
      case 4:
      print('Digite primeiro valor');
      String? entrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? entrada2 = stdin.readLineSync();
      break;
      case 5:
      print('Digite primeiro valor');
      String? entrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? entrada2 = stdin.readLineSync();
      break;
      default:
      print('Valor fora da faixa !!');
      exit(0);
    }
}