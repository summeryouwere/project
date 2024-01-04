package cn.edu.scut.www.service;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.edu.scut.www.mapper.PaperMapper;
import cn.edu.scut.www.dto.PaperDTO;
import org.springframework.stereotype.Service;

@Service
public class PaperService extends ServiceImpl<PaperMapper, PaperDTO> {
}