package cn.edu.scut.www.controller;


import cn.edu.scut.www.service.LabService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    private LabService labService;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public ModelAndView index(ModelAndView modelAndView) {
        return new ModelAndView("index",new HashMap<>());
    }

    @RequestMapping(value = "getLab", method = RequestMethod.GET)
    public ModelAndView getLab(ModelAndView modelAndView) {
        return new ModelAndView("lab",new HashMap<>());
    }

    @RequestMapping(value = "labEmployee", method = RequestMethod.GET)
    public ModelAndView labEmployee(ModelAndView modelAndView,@RequestParam Long labId) {
        Map<String,Long> map = new HashMap<>();
        map.put("labId",labId);
        return new ModelAndView("labEmployee",map);
    }

    @RequestMapping(value = "getResearchAchievement", method = RequestMethod.GET)
    public ModelAndView getResearchAchievement(ModelAndView modelAndView) {
        return new ModelAndView("getResearchAchievement",new HashMap<>());
    }

    @RequestMapping(value = "getProject", method = RequestMethod.GET)
    public ModelAndView getProject(ModelAndView modelAndView) {
        return new ModelAndView("getProject",new HashMap<>());
    }

}