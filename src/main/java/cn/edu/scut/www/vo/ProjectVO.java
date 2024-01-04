package cn.edu.scut.www.vo;

import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;

@Data
public class ProjectVO {
    private Long projectID;
    private Long labID;
    private Long leaderID;
    private String projectName;
    private String researchContent;
    private BigDecimal totalFunding;
    private LocalDate startDate;
    private LocalDate endDate;

    private Long subProjectID;
    private Long subProjectLeaderID;
    private Integer subProjectNumber;
    private LocalDate subProjectEndDateRequirement;
    private BigDecimal subProjectAvailableFunds;
    private String technicalIndicators;

    private Long projectMemberID;
    private LocalDate projectMemberJoinDate;
    private Integer projectMemberWorkload;
    private BigDecimal projectMemberAvailableFunds;
}
