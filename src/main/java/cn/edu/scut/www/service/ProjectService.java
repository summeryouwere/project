package cn.edu.scut.www.service;
import cn.edu.scut.www.dto.ProjectDTO;
import cn.edu.scut.www.mapper.ProjectMapper;
import cn.edu.scut.www.mapper.ResearchAchievementMapper;
import cn.edu.scut.www.vo.ProjectVO;
import cn.edu.scut.www.vo.ResearchAchievementVO;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectService extends ServiceImpl<ProjectMapper, ProjectDTO> {
    @Autowired
    private ProjectMapper projectMapper;

    public List<ProjectVO> getAllProject(){
        return this.projectMapper.getAllProject();
    }
}