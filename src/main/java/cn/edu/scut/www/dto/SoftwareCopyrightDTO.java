package cn.edu.scut.www.dto;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("SoftwareCopyright")
public class SoftwareCopyrightDTO extends Model<SoftwareCopyrightDTO> {
    @TableField(value = "SoftwareId")
    private Integer softwareId; // 软件著作权ID
    @TableField(value = "AchievementId")
    private Integer achievementId; // 科研成果ID
    @TableField(value = "SoftwareName")
    private String softwareName; // 软件名称
}
