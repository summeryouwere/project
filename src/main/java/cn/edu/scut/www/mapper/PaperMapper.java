package cn.edu.scut.www.mapper;
import cn.edu.scut.www.dto.PaperDTO;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
public interface PaperMapper extends BaseMapper<PaperDTO> {
}