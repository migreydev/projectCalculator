package calculadora;

public class Calculadora {
	
	private String operator;
	private String number;
	private String result;
	
	/**
	 * Calcula el resultado de una cadena que contiene números y operadores + y -.
	 *
	 * @param result La cadena de entrada que contiene la operacion a calcular.
	 * @return El resultado de la expresión como una cadena.
	 */

	public static String calcularTextArea(String result) {
	    double number = 0;
	    int posicion = 0;

	    for (int i = 0; i < result.length(); i++) {
	        if (result.charAt(i) == '+' || result.charAt(i) == '-') {
	        	// Si encontramos un carácter de suma (+) o resta (-),
	        	 // Utilizamos el método substring para extraer la subcadena que contiene el número
	        	// desde la posición 'posicion' (el inicio del número, 0) hasta 'i' (justo antes del operador).
	        	// Luego, convertimos esa subcadena en un número double
	            number += Double.parseDouble(result.substring(posicion, i));
	            
	            // Actualizamos 'posicion' para apuntar al carácter la posicion del operador.
	            posicion = i; // en este momento, 'posicion' adquiere el valor actual de 'i'
	        }
	    }

	    // Suma el último número en la cadena result al número existente.
	    // Esto asegura que el último número se incluya en el cálculo,
	    number += Double.parseDouble(result.substring(posicion));

	    return String.valueOf(number);
	}
}

