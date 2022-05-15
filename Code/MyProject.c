sbit LCD_RS at RC2_bit;
sbit LCD_EN at RC3_bit;
sbit LCD_D4 at RC4_bit;
sbit LCD_D5 at RC5_bit;
sbit LCD_D6 at RC6_bit; 
sbit LCD_D7 at RC7_bit;

sbit LCD_RS_Direction at TRISC2_bit;
sbit LCD_EN_Direction at TRISC3_bit;
sbit LCD_D4_Direction at TRISC4_bit;
sbit LCD_D5_Direction at TRISC5_bit;
sbit LCD_D6_Direction at TRISC6_bit;
sbit LCD_D7_Direction at TRISC7_bit;

int hr=0;
int mn=0;
int sec=0;
char str[7];
char str2[7];
char str3[7];
int k=1;

void main() {
Lcd_init();
lcd_cmd(_LCD_CURSOR_OFF);

TRISD.F7=1; //input pin
TRISD.F6=1;
TRISD.F5=1;

lcd_out(1,5,"welcome");
delay_ms(2000);
lcd_cmd(_LCD_CLEAR);
lcd_out(1,5,"Stopwatch");
lcd_out(2,5,"00");
lcd_out(2,7,":");
lcd_out(2,8,"00");
lcd_out(2,10,":");
lcd_out(2,11,"00");
while(1)
{
if(PORTD.F5){
k=1;
while(k){
  intToStr(sec,str);
  ltrim(str);
  lcd_out(1,5,"Running..");
  if(sec<=9)
  lcd_out(2,12,str);
  if(sec>9)
  lcd_out(2,11,str);
  delay_ms(1000);
  sec=sec+1;
  if(sec==60)
    {
      mn=mn+1;
      sec=0;
      
      if(mn==60)
      {
        hr=hr+1;
        sec=0;
        mn=0;
        intTostr(hr,str3);
        ltrim(str3);
        lcd_out(2,11,"00");
        lcd_out(2,8,"00");
        if(hr<=9)
        lcd_out(2,6,str3);
        if(hr>9)
        lcd_out(2,5,str3);
      }
      intToStr(mn,str2);
      ltrim(str2);
      lcd_out(2,11,"00");
      if(mn<=9)
      lcd_out(2,9,str2);
      if(mn>9)
      lcd_out(2,8,str2);
    }
   if(PORTD.F6)  //for pausing the time or continuing
   {
   lcd_out(1,5,"paused   ");
   k=0;
   }
   if(PORTD.f7)
   {
   k=0;
   sec=0;
   mn=0;
   hr=0;
   lcd_out(1,5,"Start?   ");
   lcd_out(2,11,"00");
   lcd_out(2,11,"00");
   lcd_out(2,8,"00");
   }
}

}
   if(PORTD.f7)
   {
   k=0;
   sec=0;
   mn=0;
   hr=0;
   lcd_out(1,5,"Start?   ");
   lcd_out(2,11,"00");
   lcd_out(2,11,"00");
   lcd_out(2,8,"00");
   }
}

}