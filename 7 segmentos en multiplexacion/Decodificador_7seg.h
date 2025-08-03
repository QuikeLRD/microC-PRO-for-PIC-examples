char deco_cc(char num){
     char var;
     
     switch(num){
      case 0: var = 63; break;
      case 1: var =  6; break;
      case 2: var = 91; break;
      case 3: var = 79; break;
      case 4: var =102; break;
      case 5: var =109; break;
      case 6: var =125; break;
      case 7: var =  7; break;
      case 8: var =127; break;
      case 9: var =103; break;
      
     }
     return var;
}
char deco_ac(char num){
     char var;

     switch(num){
      case 0: var = 63; break;
      case 1: var =  6; break;
      case 2: var = 91; break;
      case 3: var = 79; break;
      case 4: var =102; break;
      case 5: var =109; break;
      case 6: var =125; break;
      case 7: var =  7; break;
      case 8: var =127; break;
      case 9: var =103; break;

     }
     return (255-var);
}