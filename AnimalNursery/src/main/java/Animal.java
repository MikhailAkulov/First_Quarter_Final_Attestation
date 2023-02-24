import java.util.ArrayList;
import java.util.Date;

public class Animal {

    private static int count = 1;
    private int id;
    private String name;
    private Date birthday;
    private ArrayList<String> skills = new ArrayList<>();
    private String typeAnimal;

    public Animal(String name, Date birthday, String typeAnimal) {
        this.typeAnimal = typeAnimal;
        this.id = count++;
        this.name = name;
        this.birthday = birthday;
    }

    public void pumpSkill(String newSkill) {
        skills.add(newSkill);
        System.out.println("New animal skill successfully added!");
    }

    public void printSkills() {
        if (skills.size() == 0) {
            System.out.println("The animal doesn't have the skills yet. Add a new skill to the animal");
        } else {
            System.out.printf("%s have skills:\n", name);
            for (String skill : skills) {
                System.out.println(skill);
            }
        }
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public ArrayList<String> getSkills() {
        return skills;
    }

    public void setSkills(ArrayList<String> skills) {
        this.skills = skills;
    }

    @Override
    public String toString() {
        return "id = " + id +
                ", typeAnimal = " + typeAnimal + '\t' +
                ", name = " + name + '\t' +
                ", birthday = " + birthday;
    }
}
