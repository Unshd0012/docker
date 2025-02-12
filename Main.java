import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in);
        
      
        System.out.print("Por favor, introduzca su nombre: ");
        String nombre = scanner.nextLine();
        

        System.out.println("Su nombre es: " + nombre);
        
   
        scanner.close();
    }
}
