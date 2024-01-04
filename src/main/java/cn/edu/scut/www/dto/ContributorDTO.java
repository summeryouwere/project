package cn.edu.scut.www.dto;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("Contributor")
public class ContributorDTO extends Model<ContributorDTO> {
    @TableField(value = "ContributorId")
    private Integer contributorId; // 贡献人ID
    @TableField(value = "EmployeeId")
    private Integer employeeId; // 科研人员ID
}
