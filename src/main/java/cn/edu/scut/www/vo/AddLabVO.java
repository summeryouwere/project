package cn.edu.scut.www.vo;


import lombok.Data;

import java.util.Date;

@Data
public class AddLabVO {
    private Long labID;
    private String labName;
    private String researchArea;
    private Long directorID;
    private String directorName;
    private Date directorStartDate;
    private Integer directorTerm;
    private Long secretaryID;
    private String secretaryName;
    private String secretaryGender;
    private Integer secretaryAge;
    private Date secretaryStartDate;
    private String secretaryResponsibility;
}