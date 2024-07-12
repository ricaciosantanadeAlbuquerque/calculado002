import 'dart:io';
void main(){
  menu();
}

void menu(){
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