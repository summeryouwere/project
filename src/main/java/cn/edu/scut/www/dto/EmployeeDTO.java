package cn.edu.scut.www.dto;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("Employee")
public class EmployeeDTO extends Model<EmployeeDTO> {
    @TableField(value = "EmployeeId")
    private Integer employeeId; // 员工ID
    @TableField(value = "LabId")
    private Integer labId; // 所属研究室ID
    @TableField(value = "Name")
    private String name; // 姓名
    @TableField(value = "Gender")
    private String gender; // 性别
    @TableField(value = "Title")
    private String title; // 职称
    @TableField(value = "Age")
    private Integer age; // 年龄
    @TableField(value = "ResearchArea")
    private String researchArea; // 研究方向
}
