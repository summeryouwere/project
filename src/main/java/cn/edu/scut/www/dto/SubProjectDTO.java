package cn.edu.scut.www.dto;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = true)
@TableName("SubProject")
public class SubProjectDTO extends Model<SubProjectDTO> {
    @TableField(value = "SubProjectId")
    private Integer subProjectId; // 子课题ID
    @TableField(value = "ProjectId")
    private Integer projectId; // 项目ID
    @TableField(value = "LeaderId")
    private Integer leaderId; // 负责人ID
    @TableField(value = "SubProjectNumber")
    private Integer subProjectNumber; // 子课题编号
    @TableField(value = "EndDateRequirement")
    private Date endDateRequirement; // 完成时间要求
    @TableField(value = "AvailableFunds")
    private Double availableFunds; // 可支配经费
    @TableField(value = "TechnicalIndicators")
    private String technicalIndicators; // 技术指标
}
