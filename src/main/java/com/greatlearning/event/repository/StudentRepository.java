package com.greatlearning.event.repository;

import com.greatlearning.event.model.Student;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class StudentRepository {
    private List<Student> students = new ArrayList<>();

    public Student registerStudent(Student student){
        students.add(student);
        return student;
    }

    public List<Student> getRegisteredStudents(){
        return students;
    }
    public Student updateStudentDetails(int id,Student updatedStudent){

            Optional<Student> studentOptional = students
                                               .stream()
                                               .filter(order -> order.getId() == id)
                                                .findAny();
            if(studentOptional.isPresent()) {
                Student studentFetchedFromList = studentOptional.get();
                studentFetchedFromList.setName(updatedStudent.getName());
                studentFetchedFromList.setDepartment(updatedStudent.getDepartment());
                studentFetchedFromList.setId(updatedStudent.getId());
                studentFetchedFromList.setCountry(updatedStudent.getCountry());
                return studentFetchedFromList;
            }
            return null;
    }

    public void deleteStudentbyId(int id){
        students.removeIf(student -> student.getId()==id);
    }


    public Student getStudentbyId(int id) {
        return null;
    }
}
