package cn.edu.scut.www.mapper;
import cn.edu.scut.www.dto.SubProjectDTO;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

public interface SubProjectMapper extends BaseMapper<SubProjectDTO> {
}