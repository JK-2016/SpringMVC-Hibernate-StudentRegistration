package com.greatlearning.event.controller;

import com.greatlearning.event.model.Student;
import com.greatlearning.event.service.RegistrationService;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class RegistrationController {
    private RegistrationService registrationService;
    public RegistrationController(RegistrationService registratonService){
        this.registrationService = registratonService;
    }
    @RequestMapping(value="/registration", method = RequestMethod.GET)
    public String showStudentForm(Model theModel){
        Student theStudent = new Student();
       theModel.addAttribute("student",theStudent);
        return "student-form";
//        theModel.addAttribute("message",
//                "Hello World and Welcome to Spring MVC!");
        //return "student-form";
       //return "Student";
    }
    @GetMapping("/list")
    public String getAllRegisteredStudents(Model theModel){
        List<Student> theStudents = registrationService.getRegisteredStudents();
        theModel.addAttribute("students",theStudents);
        return "list-students";
    }
    @DeleteMapping("/delete")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public String deleteStudentById(@RequestParam("studentId") int theId){
        registrationService.deleteStudent(theId);
        return("redirect:/list");
    }
    @PutMapping("/updateForm")
    public String updateStudent(@RequestParam("studentId") int theId, Model theModel) {
        Student theStudent = registrationService.getStudent(theId);
        theModel.addAttribute("student",theStudent);
        return("redirect:/list");
    }

    @PostMapping("/registerStudent")
    @ResponseStatus(HttpStatus.CREATED)
    public String registerStudent(@ModelAttribute("student") Student thestudent){
        registrationService.registerStudent(thestudent);
        return "student-form";
    }






}
