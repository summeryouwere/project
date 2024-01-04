package cn.edu.scut.www.dto;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = true)
@TableName("ProjectMember")
public class ProjectMemberDTO extends Model<ProjectMemberDTO> {
    @TableField(value = "MemberId")
    private Integer memberId; // 项目成员ID
    @TableField(value = "ProjectId")
    private Integer projectId; // 项目ID
    @TableField(value = "EmployeeId")
    private Integer employeeId; // 科研人员ID
    @TableField(value = "JoinDate")
    private Date joinDate; // 参加时间
    @TableField(value = "Workload")
    private Integer workload; // 工作量
    @TableField(value = "AvailableFunds")
    private Double availableFunds; // 可支配经费
}
