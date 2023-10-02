int main()
{
   int modulo, num1, num2;
   extern unsigned int div1;
   extern unsigned int div2;
   extern unsigned int _test_start;
   num1 = (div1 > div2) ? div1 : div2;
   num2 = (div1 > div2) ? div2 : div1;

   while(num2 != 0)
   {
      modulo = num1 % num2;
      num1 = num2;
      num2 = modulo;
   }

   *(&_test_start) = num1;
}