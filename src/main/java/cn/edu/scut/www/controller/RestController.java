package cn.edu.scut.www.controller;


import cn.edu.scut.www.dto.EmployeeDTO;
import cn.edu.scut.www.dto.LabDTO;
import cn.edu.scut.www.service.EmployeeService;
import cn.edu.scut.www.service.LabService;
import cn.edu.scut.www.service.ProjectService;
import cn.edu.scut.www.service.ResearchAchievementService;
import cn.edu.scut.www.vo.ProjectVO;
import cn.edu.scut.www.vo.ResearchAchievementVO;
import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/rest/")
public class RestController {

    @Autowired
    private LabService labService;
    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private ResearchAchievementService researchAchievementService;
    @Autowired
    private ProjectService projectService;

    @RequestMapping(value = "getLab", method = RequestMethod.GET)
    public String getLab(HttpServletRequest request) {
        JSONArray jsonArray = new JSONArray();
        for(LabDTO labDTO : this.labService.getAllLab()) {
            jsonArray.add(JSONUtil.parse(labDTO));
        }

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("code",0);
        jsonObject.put("data",jsonArray);
        return jsonObject.toString();
    }

    @GetMapping("/getLabInfo")
    public String getLabInfo(@RequestParam Long labId) {
        QueryWrapper empWrapper = new QueryWrapper();
        empWrapper.eq("LabId",labId);
        List<EmployeeDTO> list = employeeService.list(empWrapper);

        JSONArray jsonArray = new JSONArray();
        for(EmployeeDTO employeeDTO : list) {
            jsonArray.add(JSONUtil.parse(employeeDTO));
        }

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("code",0);
        jsonObject.put("data",jsonArray);
        return jsonObject.toString();
    }

    @GetMapping("/getProject")
    public String getProject() {
        List<ProjectVO> list = projectService.getAllProject();

        JSONArray jsonArray = new JSONArray();
        for(ProjectVO projectVO : list) {
            jsonArray.add(JSONUtil.parse(projectVO));
        }

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("code",0);
        jsonObject.put("data",jsonArray);
        return jsonObject.toString();
    }

    @GetMapping("/getResearchAchievement")
    public String getResearchAchievement() {
        List<ResearchAchievementVO> list = researchAchievementService.getAllResearchAchievements();

        JSONArray jsonArray = new JSONArray();
        for(ResearchAchievementVO researchAchievementVO : list) {
            jsonArray.add(JSONUtil.parse(researchAchievementVO));
        }

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("code",0);
        jsonObject.put("data",jsonArray);
        return jsonObject.toString();
    }



    @RequestMapping(value = "/addLab", method = RequestMethod.POST)
    public String creditProject(@RequestBody LabDTO labDTO, HttpServletRequest request) {
        this.labService.save(labDTO);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("code",0);
        jsonObject.put("data","成功");
        return jsonObject.toString();
    }
}