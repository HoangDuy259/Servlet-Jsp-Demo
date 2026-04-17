public class Student {
    private long id;
    private String name;
    private int age;
    private int classNumber;

    public Student(String name, int age, int classNumber) {
        this.name = name;
        this.age = age;
        this.classNumber = classNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getClassNumber() {
        return classNumber;
    }

    public void setClassNumber(int classNumber) {
        this.classNumber = classNumber;
    }
}