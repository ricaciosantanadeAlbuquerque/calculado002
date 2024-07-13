import 'dart:io';
void main(){
  escolha(op: menu());
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

      if(entrada1 != null && entrada2 != null){
        if(entrada1.isNotEmpty && entrada2.isNotEmpty){
           try{
             num num1 = num.parse(entrada1);
             num num2 = num.parse(entrada2);
             print(soma(num1: num1, num2: num2));
           }catch(e){
            throw Exception('ERRO! Os valores $entrada1 e $entrada2 não podem ser convertidos.');
           }
        }else{
          print('ERRO!!! Valor vazio !!');
          exit(0);
        }
      }else{
       print('ERRO! valor nulo!! Digite valores válidos.');
       exit(0);
      }
      break;
      case 2:
      print('Digite primeiro valor');
      String? entrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? entrada2 = stdin.readLineSync();

       if (entrada1 != null && entrada2 != null) {
        if (entrada1.isNotEmpty && entrada2.isNotEmpty) {
          try {
            num num1 = num.parse(entrada1);
            num num2 = num.parse(entrada2);
            print(subtracao(num1: num1, num2: num2));
          } catch (e) {
            throw Exception('ERRO! Os valores $entrada1 e $entrada2 não podem ser convertidos.');
          }
        } else {
          print('ERRO!!! Valor vazio !!');
          exit(0);
        }
      } else {
        print('ERRO! valor nulo!! Digite valores válidos.');
        exit(0);
      }
      break;
      case 3:
      print('Digite primeiro valor');
      String? entrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? entrada2 = stdin.readLineSync();

       if (entrada1 != null && entrada2 != null) {
        if (entrada1.isNotEmpty && entrada2.isNotEmpty) {
          try {
            num num1 = num.parse(entrada1);
            num num2 = num.parse(entrada2);
          } catch (e) {
            throw Exception('ERRO! Os valores $entrada1 e $entrada2 não podem ser convertidos.');
          }
        } else {
          print('ERRO!!! Valor vazio !!');
          exit(0);
        }
      } else {
        print('ERRO! valor nulo!! Digite valores válidos.');
        exit(0);
      }
      break;
      case 4:
      print('Digite primeiro valor');
      String? entrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? entrada2 = stdin.readLineSync();

       if (entrada1 != null && entrada2 != null) {
        if (entrada1.isNotEmpty && entrada2.isNotEmpty) {
          try {
            num num1 = num.parse(entrada1);
            num num2 = num.parse(entrada2);
          } catch (e) {
            throw Exception('ERRO! Os valores $entrada1 e $entrada2 não podem ser convertidos.');
          }
        } else {
          print('ERRO!!! Valor vazio !!');
          exit(0);
        }
      } else {
        print('ERRO! valor nulo!! Digite valores válidos.');
        exit(0);
      }    
      break;
      case 5:
      print('Valor [$op] fora da faixa !!');
      exit(0);
    }
}

num soma({required num num1,required num num2}){
   var result = num1 + num2;
   return result;
}

num subtracao({required num num1, required num num2}){
  var result = num1 - num2 ;
  return result;
}

void multiplicacao({required num num1,required num num2}){
 var result = num1 * num2 ;
}