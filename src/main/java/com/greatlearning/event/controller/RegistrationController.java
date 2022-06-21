package com.greatlearning.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class RegistrationController {
    @RequestMapping(value="/registration", method = RequestMethod.GET)
    public String showStudentForm(Model theModel){
        //Student theStudent = new Student();
       //theModel.addAttribute("student",theStudent);
       // return "student-form";
//        theModel.addAttribute("message",
//                "Hello World and Welcome to Spring MVC!");
        return "student-form";
       //return "Student";
    }
    @GetMapping("/list")
    public String getAllRegisteredStudents(Model theModel){
//        List<Student> theStudents = registrationService.getRegisteredStudents();
//        theModel.addAttribute("students",theStudents);
        return "list-students";
    }



}
