package cn.edu.scut.www.dto;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
@TableName("Lab")
public class LabDTO extends Model<LabDTO> {
    @TableField(value = "LabId")
    private Integer labId; // 研究室ID
    @TableField(value = "LabName")
    private String labName; // 研究室名称
    @TableField(value = "ResearchArea")
    private String researchArea; // 研究方向
}