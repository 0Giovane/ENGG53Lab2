#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

#define d_inicial 4
#define o_inicial 5
#define b 160

#define t_min (7500/b)*10

 


int main(int argc, char** argv) {
    
    //Simpsons
    const char musica[] = "32p,c.6,e6,f#6,8a6,g.6,e6,c6,8a,8f#,8f#,8f#,2g"
    TRISDbits.TRISD0 = 0; //PINO D0 SETADO COMO SAIDA
    timer2_init();
    oc1_init();

    executar_musica(char musica[]);
    
    
    return (EXIT_SUCCESS);
}

void executar_musica(char musica[]){
    
    unsigned int k;
    unsigned char d, o, j, n, i = 0;
    
    do{
    o = o_inicial; //carrega o valor default para a oitava
    if(((musica[i])=='3')&&((musica[i+1])=='2')){d=32; i+=2;}
    else if(((musica[i])=='1')&&((musica[i+1])=='6')){d=16;i+=2;}
    else if((musica[i])=='8') {d=8; i++;}
    else if((musica[i])=='4') {d=4; i++;}
    else if((musica[i])=='2') {d=2; i++;}
    else if((musica[i])=='1') {d=1; i++;}
    else d = d_inicial; //carrega o valor dafault para a duração
    if((musica[i+1])=='#')
{
    switch((musica[i]))//carrega a oitava # default (4a)
    {
    case 'a': OC1R = 8579; break;//A# - Lá#
    case 'c': OC1R = 7214; break;//C# - Dó#
    case 'd': OC1R = 6426; break;//D# - Ré#
    case 'f': OC1R = 5403; break;//F# - Fá#
    case 'g': OC1R = 4813; break;//G# - Sól#
    }
    i+=2;
}
else
     {
    switch((musica[i]))//carrega a oitava default (4a)
     {
    case 'a': OC1R = 9090; break;//A - Lá
    case 'b': OC1R = 8098; break;//B - Si
    case 'c': OC1R = 7643; break;//C - Dó
    case 'd': OC1R = 6809; break;//D - Ré
    case 'e': OC1R = 6065; break;//E - Mi
    case 'f': OC1R = 5724; break;//F - Fá
    case 'g': OC1R = 5099; break;//G - Sol
    case 'p': stop_pwm(); break;//p = pausa
     }
    i++;
     }
    n = 32/d; //tempo de duração de cada nota musical

    if((musica[i])=='.'){n=n+(n/2); i++;}//duração 50% >
    if((musica[i])=='4') { o=4; i++;}
    else if((musica[i])=='5'){ o=5; i++;}
    else if((musica[i])=='6'){ o=6; i++;}
    else if((musica[i])=='7'){ o=7; i++;}
    if((musica[i])=='.'){n=n+(n/2); i++;}// duração 50% >
    switch(o)//troca a oitava se não for a default (o = 4)
     {
    case 5: OC1R = OC1R>>1; break; //divide por 2
    case 6: OC1R = OC1R>>2; break; //divide por 4
    case 7: OC1R = OC1R>>4; break; //divide por 8
     }
     //------------------------------------------------------------------------
    for(j=0;j<n;j++)//nr de repetições para a nota 1/32
     {
    for(k=t_min;k!=0;k--) delay_us(100);
     }
     //------------------------------------------------------------------------
    rerun_pwm(); //habilita o som 
    } while((musica[i++])==','); //leitura até o final da música 
}
