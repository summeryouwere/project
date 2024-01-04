package cn.edu.scut.www.service;

import cn.edu.scut.www.dto.LabDTO;
import cn.edu.scut.www.mapper.LabMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.additional.query.impl.QueryChainWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LabService extends ServiceImpl<LabMapper, LabDTO> {
    @Autowired
    private LabMapper labMapper;

    public List<LabDTO> getAllLab(){
        return labMapper.selectList(new QueryWrapper<>());
    }
}