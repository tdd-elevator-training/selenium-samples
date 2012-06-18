package com.selenium.training.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/" + Controller1.ROOT)
@SessionAttributes({"name", "amount"})
public class Controller1 {

    public static final String ROOT = "1";

    @RequestMapping(method = RequestMethod.GET)
    public String hi() {
        return ROOT + "/hi";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String myName(@RequestParam("name") String name, ModelMap model) {
        model.put("name", name);
        model.put("amount", 0);
        return ROOT + "/apple";
    }

    @RequestMapping(value = "yes")
    public String yes() {
        return ROOT + "/howmuch";
    }

    @RequestMapping(value = "no")
    public String no() {
        return ROOT + "/summary";
    }

    @ModelAttribute("amount")
    public Integer defaultAmount() {
        return 0;
    }

    @RequestMapping(value = "howmuch", method = RequestMethod.POST)
    public String howMuch(@RequestParam("amount") int amount, ModelMap model) {
        Integer previousAmount = (Integer) model.get("amount");
        model.put("amount", previousAmount + amount);
        return ROOT + "/apple";
    }
}
