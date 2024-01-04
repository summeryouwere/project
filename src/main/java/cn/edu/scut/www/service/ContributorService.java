package cn.edu.scut.www.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.edu.scut.www.mapper.ContributorMapper;
import cn.edu.scut.www.dto.ContributorDTO;
import org.springframework.stereotype.Service;

@Service
public class ContributorService extends ServiceImpl<ContributorMapper, ContributorDTO> {
}
