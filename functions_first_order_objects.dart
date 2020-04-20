// Dart apresenta uma particularidade em relacao a outras linguagens de programacao. Essa particularidade eh que funcoes podem ser usadas
// como objetos de primeira ordem. Oq isso quer dizer?? Que as funcoes em Dart funcionam exatamente como qualquer outro tipo de objeto. Ou
// seja, podemos armazenar funcoes dentro de variaveis e alem disso podemos passar funcoes como parametro de outras funcoes. Tal vantagem
// de Dart, permite que tenhamos grande flexibilidade quando trabalhando com funcoes.
// Em Dart, o tipo que representa funcoes eh o tipo "Function".


void main(){
  
  int result = calculator(4, 25, multiply);
  print(result);
  
  return;
}

int calculator(int n1, int n2, Function calculation){
  return calculation(n1, n2);
}

/* Em Dart, da para declararmos funcoes (e toda a sua parte logica) e atribuirmos essas funcoes a uma variavel do tipo "Function" */
Function calculator2 = (int a, int b, Function calculation){
  return calculation(a, b);
}


int add(int n1, int n2){
  return n1 + n2;
}

int multiply(int n1, int n2){
  return n1*n2;
}
