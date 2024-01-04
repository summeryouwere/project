package cn.edu.scut.www.vo;

import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;

@Data
public class ResearchAchievementVO {

    private Long achievementID;
    private Long projectID;
    private String achievementName;
    private LocalDate acquisitionDate;
    private Long contributorID;
    private Integer rank;
    private String projectName;
    private String researchContent;
    private BigDecimal totalFunding;
    private LocalDate projectStartDate;
    private LocalDate projectEndDate;
    private Long contributorEmployeeID;
    private String contributorName;
    private String contributorGender;
    private String contributorTitle;
    private Integer contributorAge;
    private String contributorResearchArea;

}