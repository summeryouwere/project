package cn.edu.scut.www.dto;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("Paper")
public class PaperDTO extends Model<PaperDTO> {
    @TableField(value = "PaperId")
    private Integer paperId; // 论文ID
    @TableField(value = "AchievementId")
    private Integer achievementId; // 科研成果ID
    @TableField(value = "JournalName")
    private String journalName; // 期刊名称
    @TableField(value = "Title")
    private String title; // 论文标题
}
