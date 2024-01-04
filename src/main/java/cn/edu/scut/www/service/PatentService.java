package cn.edu.scut.www.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.edu.scut.www.mapper.PatentMapper;
import cn.edu.scut.www.dto.PatentDTO;
import org.springframework.stereotype.Service;

@Service
public class PatentService extends ServiceImpl<PatentMapper, PatentDTO> {
}