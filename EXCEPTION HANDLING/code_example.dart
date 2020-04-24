//Exemplo de Codigo no qual a gente trata Excecoes e tenta capturar elas.
//Para fazer isso, a gente vai ter que usar as keywords: "try" e "catch".
//Observe o exemplo a seguir:

void main(){
  String s = 'abc';
  
  try{ //tento executar o codigo que ta dentro desse escopo da keyword "try".
    double sAsDouble = double.parse(s);
    print(sAsDouble);
  }catch(e){ //caso eu encontre uma excecao/erro ao executar o bloco acima, eu executo o conteudo que ta dentro do bloco abaixo. Nesse caso particular, o que vai acontecer eh que eu vou printar qual o tipo de erro que eu encontrei.
    print(e);
  }
  
  return;
}
