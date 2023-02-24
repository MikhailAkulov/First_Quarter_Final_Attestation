import java.util.ArrayList;

public class Nursery {

    private static ArrayList<Animal> animals = new ArrayList<>();

    public void addAnimal(Animal animal) {
        animals.add(animal);
    }

    public void printAnimalsList() {
        if (animals.size() == 0) {
            System.out.println("\nAnimal nursery is empty. Add a new animal");
        } else {
            for (Animal animal : animals) {
                System.out.println(animal);
            }
        }
    }

    public static ArrayList<Animal> getAnimals() {
        if (animals.size() == 0) {
            System.out.println("\nThe nursery is empty. No animals, no skills. First add the animal");
        }
        return animals;
    }

    public Nursery() {

    }
}
