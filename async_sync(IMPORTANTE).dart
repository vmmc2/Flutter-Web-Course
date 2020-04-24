import 'dart:io';

void main(){
  performTasks();
  return;
}

void performTasks(){
  task1();
  task2();
  task3();
  return;
}

void task1(){
  String result = 'task 1 data';
  print('Task 1 complete');
  return;
}


// Da pra simular que uma task consome bastante tempo usando um objeto
// da classe Duration. Essa classe eh responsavel por implementar uma especie
// de "delay" que vai se refletir no nosso programa.
// Existem situacoes nas quais as atividades podem consumir uma grande
// quantidade de tempo. Como, por exemplo: realizar um download da internet
// ou carregar uma imagem da internet. Ou talvez, realizar computacoes que sejam
// muito complexas.
// O metodo sleep() funciona de forma sincrona. Ou seja, eu tenho que primeiro
// passar por ele para so depois continuar com a execucao do meu codigo.
// Para simular um delay asincrono a gente usa um outro metodo chamado
// Future.delayed().
// Toda vez que a gente ver algum metodo que comece com Future significa
// que estamos lidando com metodos assincronos.

void task2(){
  Duration threeSecond = Duration(seconds: 3);
  // sleep(threeSecond);  metodo sincrono
  Future.delayed(threeSecond, () {
    String result = 'task 2 data';
    print('Task 2 complete');
  });
  return;
}

void task3(){
  String result = 'task 3 data';
  print('Task 3 complete');
  return;
}


///////////////////////////////////////////////////////////////////////
// A situacao acima eh uma situacao na qual nos usamos Future.delayed()
// para indicar que podemos continuar com a execucao do nosso programa
// enquanto aguardamos que sua execucao seja terminada para so depois
// nos preocuparmos a respeito do que fazer...
// Entretanto, existem situacoes nas quais temos uma funcao que eh executada
// de forma assincrona mas o resto do codigo depende do resultado que ta sendo
// resgatado/calculado por essa funcao assincrona. Sendo assim, devemos indicar
// que uma espera deve acontecer...
// Para poder usar a keyword "await" a gente tem que fazer ela ficar "async"

void main(){
  performTasks();
  return;
}

void performTasks() async { //Tem que por essa keyword "async"
  task1();
  String task2result = await task2(); //Faz com que a gente espere pelo resultado de task2() mesmo ela sendo uma funcao assincrona
  task3(task2result);
  return;
}

void task1(){
  String result = 'task 1 data';
  print('Task 1 complete');
  return;
}


Future<String> task2() async { //Task2() agora vai demorar para retornar algo. Logo, tem que retornar um Future ao inves de uma String.
  Duration threeSecond = Duration(seconds: 3);
  String result;
  // sleep(threeSecond);  metodo sincrono
  await Future.delayed(threeSecond, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data){
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
  return;
}
