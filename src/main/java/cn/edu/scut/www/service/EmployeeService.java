package cn.edu.scut.www.service;

import cn.edu.scut.www.dto.EmployeeDTO;
import cn.edu.scut.www.mapper.EmployeeMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService extends ServiceImpl<EmployeeMapper, EmployeeDTO> {
}