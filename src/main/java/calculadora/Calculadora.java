package calculadora;

public class Calculadora {
	
	private String operator;
	private String number;
	private String result;

	public static String calcularTextArea(String result) {
	    double resultado = 0;
	    String number = "";
	    char operador = '+';

	    for (int i = 0; i < result.length(); i++) {
	        char caracter = result.charAt(i);

	        if (Character.isDigit(caracter)){
	            number += caracter;
	            
	        } else if (caracter == '+' || caracter == '-'){
	            double numero = Double.parseDouble(number);

	            if (operador == '+') {
	                resultado += numero;
	            } else if (operador == '-'){
	                resultado -= numero;
	            }

	            operador = caracter;
	            number = "";
	        }
	    }

	    double numeroFinal = Double.parseDouble(number);
	    if (operador == '+') {
	        resultado += numeroFinal;
	    } else if (operador == '-') {
	        resultado -= numeroFinal;
	    }

	    return String.valueOf(resultado);
	}
}

