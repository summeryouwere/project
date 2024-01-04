package cn.edu.scut.www.service;

import cn.edu.scut.www.vo.ResearchAchievementVO;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.edu.scut.www.mapper.ResearchAchievementMapper;
import cn.edu.scut.www.dto.ResearchAchievementDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResearchAchievementService extends ServiceImpl<ResearchAchievementMapper, ResearchAchievementDTO> {
    @Autowired
    private ResearchAchievementMapper researchAchievementMapper;

    public List<ResearchAchievementVO> getAllResearchAchievements(){
        return this.researchAchievementMapper.getAllResearchAchievements();
    }
}