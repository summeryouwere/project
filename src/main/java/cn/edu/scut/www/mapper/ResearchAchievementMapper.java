package cn.edu.scut.www.mapper;
import cn.edu.scut.www.dto.ResearchAchievementDTO;
import cn.edu.scut.www.vo.ResearchAchievementVO;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;
import java.util.List;

public interface ResearchAchievementMapper extends BaseMapper<ResearchAchievementDTO> {
    public List<ResearchAchievementVO> getAllResearchAchievements();
}