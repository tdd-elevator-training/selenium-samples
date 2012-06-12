package com.selenium.training.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/1")
@SessionAttributes({"name", "amount"})
public class FirstController {

    @RequestMapping(method = RequestMethod.GET)
    public String hi() {
        return "/1/hi";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String myName(@RequestParam("name") String name, ModelMap model) {
        model.put("name", name);
        return "/1/apple";
    }

    @RequestMapping(value = "yes")
    public String yes() {
        return "/1/howmuch";
    }

    @RequestMapping(value = "no")
    public String no() {
        return "/1/summary";
    }

    @ModelAttribute("amount")
    public Integer defaultAmount() {
        return 0;
    }

    @RequestMapping(value = "howmuch", method = RequestMethod.POST)
    public String howMuch(@RequestParam("amount") int amount, ModelMap model) {
        Integer previousAmount = (Integer) model.get("amount");
        model.put("amount", previousAmount + amount);
        return "/1/apple";
    }
}
