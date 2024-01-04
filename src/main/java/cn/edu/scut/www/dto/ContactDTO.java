package cn.edu.scut.www.dto;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
@TableName("Contact")
public class ContactDTO extends Model<ContactDTO> {
    @TableField(value = "ContactId")
    private Integer contactId; // 联系人ID
    @TableField(value = "Name")
    private String name; // 姓名
    @TableField(value = "OfficePhone")
    private String officePhone; // 办公电话
    @TableField(value = "MobilePhone")
    private String mobilePhone; // 移动电话
    @TableField(value = "Email")
    private String email; // 邮件
}