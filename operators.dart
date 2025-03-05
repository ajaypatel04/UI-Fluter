import 'dart:io';

void main() {
	
	print('Enter a: ');
	int a = int.parse(stdin.readLineSync()!);
	print('Enter b: ');
	int b = int.parse(stdin.readLineSync()!);
        stdout.writeln('The addition of a and b is:${add(a,b)}');
        stdout.writeln('The subtraction of a and b is:${sub(a,b)}'); 
        stdout.writeln('The addition of a and b is:${div(a,b)}'); 
        stdout.writeln('The addition of a and b is:${mul(a,b)}');    
        }
  int add(int a, int b){
    
   return(a+b);
   }
   int sub(int a, int b){
    
   return(a-b);
   }
   double div(int a, int b){
    
   return(a/b);
   }
int mul(int a, int b){
    
   return(a*b);
   }



        
        