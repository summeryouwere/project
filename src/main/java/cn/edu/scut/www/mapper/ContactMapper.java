package cn.edu.scut.www.mapper;
import cn.edu.scut.www.dto.ContactDTO;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

public interface ContactMapper extends BaseMapper<ContactDTO> {
}