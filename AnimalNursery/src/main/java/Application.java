import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class Application {

    public static void main(String[] args) {
        start();
    }

    public static void start() {
        System.out.println("\nHi! This is an Animal nursery application");
        Nursery nursery = new Nursery();
        boolean flag = true;
        while (flag) {
            System.out.println("\nChoose what do You want:\n" +
                    "1 - View the list of all animals;\n" +
                    "2 - View the list of animal skills;\n" +
                    "3 - Add new animal;\n" +
                    "4 - Teach an animal a new skill;\n" +
                    "5 - Close the app;");
            Scanner sc = new Scanner(System.in);
            int choice = sc.nextInt();
            switch (choice) {
                case 1:
                    nursery.printAnimalsList();
                    break;
                case 2:
                    printAnimalSkills();
                    break;
                case 3:
                    try (Counter counter = new Counter()) {
                        addNewAnimal(nursery);
                        counter.add();
                        System.out.println("\nNew animal successfully added!");
                    } catch (ParseException e) {
                        System.out.println(e.getMessage());
                        System.out.println("\nNo new animal added");
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                    break;
                case 4:
                    addAnimalSkill();
                    break;
                case 5:
                    System.out.println("\nThe application has been stopped. Goodbye!");
                    flag = false;
                    break;
                default:
                    System.out.println("\nInput error. Enter a number from the available options");
                    break;
            }
        }
    }

    public static void addNewAnimal(Nursery nursery) throws ParseException {
        Scanner sc = new Scanner(System.in);
        System.out.println("\nEnter the name of the new animal: ");
        String name = sc.nextLine();
        System.out.println("\nEnter the date of birth of the new animal (YYYY-MM-DD): ");
        String birthday = sc.nextLine();
        SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
        Date birth = s.parse(birthday);
        System.out.println("\nEnter the type number of the new animal:\n" +
                "1 - Dog\n" + "2 - Cat\n" + "3 - Hamster\n" + "4 - Horse\n" + "5 - Camel\n" + "6 - Donkey");
        int animalType = sc.nextInt();
        switch (animalType) {
            case 1 -> {
                String typeAnimal = "Dog";
                Dog dog = new Dog(name, birth, typeAnimal);
                nursery.addAnimal(dog);
            }
            case 2 -> {
                String typeAnimal = "Cat";
                Cat cat = new Cat(name, birth, typeAnimal);
                nursery.addAnimal(cat);
            }
            case 3 -> {
                String typeAnimal = "Hamster";
                Hamster hamster = new Hamster(name, birth, typeAnimal);
                nursery.addAnimal(hamster);
            }
            case 4 -> {
                String typeAnimal = "Horse";
                Horse horse = new Horse(name, birth, typeAnimal);
                nursery.addAnimal(horse);
            }
            case 5 -> {
                String typeAnimal = "Camel";
                Camel camel = new Camel(name, birth, typeAnimal);
                nursery.addAnimal(camel);
            }
            case 6 -> {
                String typeAnimal = "Donkey";
                Donkey donkey = new Donkey(name, birth, typeAnimal);
                nursery.addAnimal(donkey);
            }
            default -> System.out.println("\nInput error. Enter a number from the available options");
        }
    }

    public static void printAnimalSkills() {
        boolean mark = true;
        while (mark) {
            if (Nursery.getAnimals().isEmpty()) {
                break;
            } else {
                mark = false;
                Scanner sc = new Scanner(System.in);
                System.out.println("\nEnter Id of the animal whose skills You want to see: ");
                int idAnimal = sc.nextInt();
                for (Animal animal : Nursery.getAnimals()) {
                    if (animal.getId() == idAnimal) {
                        animal.printSkills();
                    }
                }
            }
        }
    }

    public static void addAnimalSkill() {
        boolean mark = true;
        while (mark) {
            if (Nursery.getAnimals().isEmpty()) {
                break;
            } else {
                mark = false;
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter Id of the animal You want to teach a new skill: ");
                String id = sc.nextLine();
                int idAnimal = Integer.parseInt(id);
                for (Animal animal : Nursery.getAnimals()) {
                    if (animal.getId() == idAnimal) {
                        System.out.println("Enter the skill which you want to train the animal: ");
                        String newSkill = sc.nextLine();
                        animal.pumpSkill(newSkill);
                    }
                }
            }
        }
    }
}
