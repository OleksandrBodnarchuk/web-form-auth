package pl.alex.webformauth.calculator;

public class Calculator {
   static Result calculate(double firstValue, double secondValue, String operator){
       double result = switch (operator) {
           case "+" -> firstValue + secondValue;
           case "-" -> firstValue - secondValue;
           case "/" -> firstValue / secondValue;
           case "*" -> firstValue * secondValue;
           default -> throw new IllegalArgumentException("Wrong operator - " + operator);
       };
       return new Result(firstValue,secondValue,operator,result);
   }
}
