package storage;

import model.Student;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class StudentStorage {
    private static List<Student> students = new ArrayList<Student>();

    public static void addStudent(Student student){
        students.add(student);
    }

    public static void remove(Student student){
        students.remove(student);
    }

    public static List<Student> getAllStudents(){
        if(students.isEmpty()){
            return new ArrayList<Student>();
        }
       return students.stream().collect(Collectors.toList());
    }

    public static Student findStudentbyId(long id){
        Optional<Student> result = students.stream().filter(student -> student.getId() == id).findFirst();
        if(result.isPresent()){
            return null;
        }
        return result.get();
    }

}
