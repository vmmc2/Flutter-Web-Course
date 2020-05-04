//Basicamente a keyword "static" quando usada em variaveis dentro de uma classe serve para dizer que essa variavel existe dentro da classe. Sendo assim, eu nao preciso criar um objeto/instancia para ter acesso a essa variavel.
//Por exemplo, vamos supor que eu tenho uma classe chamada Car. Observe o exemplo abaixo:
class Car{
  static String id = "meu_carro";
  String name = "dale";
  
  Car({this.name});
}

//Para acessar o parametro "name", eu preciso criar um objeto/instancia dessa classe. Observe o exemplo abaixo:
print(Car().name);
//Mas para acessar o parametro "id", eu nao preciso criar um objeto/instancia da classe. Por que essa property "vive" dentro da classe com o valor: "meu_carro".
//Portanto, para acessar tal property, basta eu codar o seguinte:
print(Car.id);

//Oq eh interessante a respeito do uso da "static" keyword eh que a gente pode ir fazendo modificacoes nessa variavel "static" por meio da classe.
//Entretanto, nao da pra ter acesso a variaveis "static" por meio de uma instancia da classe (objeto).
