package cn.edu.scut.www.dto;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("Collaborator")
public class CollaboratorDTO extends Model<CollaboratorDTO> {
    @TableField(value = "CollaboratorId")
    private Integer collaboratorId; // 合作者ID
    @TableField(value = "ProjectId")
    private Integer projectId; // 项目ID
    @TableField(value = "CollaboratorName")
    private String collaboratorName; // 合作者名称
    @TableField(value = "Address")
    private String address; // 地址
    @TableField(value = "ContactPerson")
    private String contactPerson; // 联系人
    @TableField(value = "ContactPhone")
    private String contactPhone; // 联系电话
}