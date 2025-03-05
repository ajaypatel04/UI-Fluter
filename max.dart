import 'dart:io';

void main() {
	
	print('Enter a: ');
	int a = int.parse(stdin.readLineSync()!);
	print('Enter b: ');
	int b = int.parse(stdin.readLineSync()!);
        print('Enter c: ');
	int c = int.parse(stdin.readLineSync()!);
     
      if(a>b && a>c){
        stdout.write('the max value is a:$a');
      }
     else if(b>a && b>c){
         stdout.write('the max value is b:$b');
       }
      else{
       stdout.write('the max value is c:$c');
    }

}