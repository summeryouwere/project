package cn.edu.scut.www.dto;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("Patent")
public class PatentDTO extends Model<PatentDTO> {
    @TableField(value = "PatentId")
    private Integer patentId; // 专利ID
    @TableField(value = "AchievementId")
    private Integer achievementId; // 科研成果ID
    @TableField(value = "PatentType")
    private String patentType; // 专利类型
}
