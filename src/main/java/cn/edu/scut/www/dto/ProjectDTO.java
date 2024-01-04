package cn.edu.scut.www.dto;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = true)
@TableName("Project")
public class ProjectDTO extends Model<ProjectDTO> {
    @TableField(value = "ProjectId")
    private Integer projectId; // 项目ID
    @TableField(value = "LabId")
    private Integer labId; // 所属研究室ID
    @TableField(value = "LeaderId")
    private Integer leaderId; // 项目负责人ID
    @TableField(value = "ProjectName")
    private String projectName; // 项目名称
    @TableField(value = "ResearchContent")
    private String researchContent; // 研究内容
    @TableField(value = "TotalFunding")
    private Double totalFunding; // 经费总额
    @TableField(value = "StartDate")
    private Date startDate; // 开工时间
    @TableField(value = "EndDate")
    private Date endDate; // 完成时间
}