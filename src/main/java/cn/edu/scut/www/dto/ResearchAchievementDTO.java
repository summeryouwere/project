package cn.edu.scut.www.dto;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = true)
@TableName("ResearchAchievement")
public class ResearchAchievementDTO extends Model<ResearchAchievementDTO> {
    @TableField(value = "AchievementId")
    private Integer achievementId; // 科研成果ID
    @TableField(value = "ProjectId")
    private Integer projectId; // 项目ID
    @TableField(value = "AchievementName")
    private String achievementName; // 科研成果名称
    @TableField(value = "AcquisitionDate")
    private Date acquisitionDate; // 取得时间
    @TableField(value = "ContributorId")
    private Integer contributorId; // 贡献人ID
    @TableField(value = "Rank")
    private Integer rank; // 排名
}
