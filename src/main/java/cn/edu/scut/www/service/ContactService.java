package cn.edu.scut.www.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.edu.scut.www.mapper.ContactMapper;
import cn.edu.scut.www.dto.ContactDTO;
import org.springframework.stereotype.Service;

@Service
public class ContactService extends ServiceImpl<ContactMapper, ContactDTO> {
}