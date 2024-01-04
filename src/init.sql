-- 创建研究室表
CREATE TABLE Lab (
 LabID INT PRIMARY KEY,
 LabName VARCHAR(255) NOT NULL,
 ResearchArea TEXT
);

-- 创建科研人员表
CREATE TABLE Employee (
  EmployeeID INT PRIMARY KEY,
  LabID INT,
  Name VARCHAR(255) NOT NULL,
  Gender VARCHAR(10),
  Title VARCHAR(100),
  Age INT,
  ResearchArea TEXT
);

-- 创建科研项目表
CREATE TABLE Project (
 ProjectID INT PRIMARY KEY,
 LabID INT,
 LeaderID INT,
 ProjectName VARCHAR(255) NOT NULL,
 ResearchContent TEXT,
 TotalFunding DECIMAL(15, 2),
 StartDate DATE,
 EndDate DATE
);

-- 创建合作者表
CREATE TABLE Collaborator (
  CollaboratorID INT PRIMARY KEY,
  ProjectID INT,
  CollaboratorName VARCHAR(255) NOT NULL,
  Address TEXT,
  ContactPerson VARCHAR(255),
  ContactPhone VARCHAR(20)
);

-- 创建子课题表
CREATE TABLE SubProject (
  SubProjectID INT PRIMARY KEY,
  ProjectID INT,
  LeaderID INT,
  SubProjectNumber INT,
  EndDateRequirement DATE,
  AvailableFunds DECIMAL(15, 2),
  TechnicalIndicators TEXT
);

-- 创建项目成员表
CREATE TABLE ProjectMember (
  MemberID INT PRIMARY KEY,
  ProjectID INT,
  EmployeeID INT,
  JoinDate DATE,
  Workload INT,
  AvailableFunds DECIMAL(15, 2)
);

-- 创建科研成果表
CREATE TABLE ResearchAchievement (
  AchievementID INT PRIMARY KEY,
  ProjectID INT,
  AchievementName VARCHAR(255) NOT NULL,
  AcquisitionDate DATE,
  ContributorID INT,
  Rank INT
);

-- 创建贡献人表
CREATE TABLE Contributor (
 ContributorID INT PRIMARY KEY,
 EmployeeID INT
);

-- 创建专利表
CREATE TABLE Patent (
  PatentID INT PRIMARY KEY,
  AchievementID INT,
  PatentType VARCHAR(50) NOT NULL
);

-- 创建论文表
CREATE TABLE Paper (
   PaperID INT PRIMARY KEY,
   AchievementID INT,
   JournalName VARCHAR(255),
   Title TEXT
);

-- 创建软件著作权表
CREATE TABLE SoftwareCopyright (
   SoftwareID INT PRIMARY KEY,
   AchievementID INT,
   SoftwareName VARCHAR(255) NOT NULL
);

-- 创建联系人表
CREATE TABLE Contact (
 ContactID INT PRIMARY KEY,
 Name VARCHAR(255) NOT NULL,
 OfficePhone VARCHAR(20),
 MobilePhone VARCHAR(20),
 Email VARCHAR(255)
);

-- 创建成果贡献人关联表
CREATE TABLE AchievementContributor (
  AchievementID INT,
  ContributorID INT,
  PRIMARY KEY (AchievementID, ContributorID)
);

-- 创建项目合作者关联表
CREATE TABLE ProjectCollaboratorRelation (
 ProjectID INT,
 CollaboratorID INT,
 PRIMARY KEY (ProjectID, CollaboratorID)
);


-- 测试数据
-- 插入研究室数据
INSERT INTO Lab (LabID, LabName, ResearchArea) VALUES
                                                   (1, '物理实验室', '量子力学'),
                                                   (2, '生物实验室', '基因和进化');

-- 插入科研人员数据
INSERT INTO Employee (EmployeeID, LabID, Name, Gender, Title, Age, ResearchArea) VALUES
                                                                                     (1, 1, '张三', '男', '研究科学家', 35, '量子力学'),
                                                                                     (2, 1, '李四', '女', '助理研究员', 28, '量子力学'),
                                                                                     (3, 2, '王五', '男', '高级研究员', 40, '基因和进化'),
                                                                                     (4, 2, '赵六', '女', '初级研究员', 30, '基因和进化');

-- 插入项目数据
INSERT INTO Project (ProjectID, LabID, LeaderID, ProjectName, ResearchContent, TotalFunding, StartDate, EndDate) VALUES
                                                                                                                     (1, 1, 1, '量子计算项目', '发展量子计算机', 100000, '2023-01-01', '2025-01-01'),
                                                                                                                     (2, 2, 3, '基因测序项目', '人类基因图谱绘制', 150000, '2023-02-01', '2024-12-31');

-- 插入合作者数据
INSERT INTO Collaborator (CollaboratorID, ProjectID, CollaboratorName, Address, ContactPerson, ContactPhone) VALUES
                                                                                                                 (1, 1, '科技创新有限公司', '123 科技大道', '张科技', '123-456-7890'),
                                                                                                                 (2, 1, '量子科技解决方案', '456 量子街', '艾丽斯量子', '987-654-3210'),
                                                                                                                 (3, 2, '生物研究公司', '789 生物街', '鲍勃生物', '111-222-3333');

-- 插入子项目数据
INSERT INTO SubProject (SubProjectID, ProjectID, LeaderID, SubProjectNumber, EndDateRequirement, AvailableFunds, TechnicalIndicators) VALUES
                                                                                                                                          (1, 1, 2, 1, '2024-06-30', 30000, '量子计算速度'),
                                                                                                                                          (2, 1, 2, 2, '2024-12-31', 20000, '量子通信技术');

-- 插入项目成员数据
INSERT INTO ProjectMember (MemberID, ProjectID, EmployeeID, JoinDate, Workload, AvailableFunds) VALUES
                                                                                                    (1, 1, 1, '2023-01-01', 50, 30000),
                                                                                                    (2, 1, 2, '2023-01-01', 40, 20000),
                                                                                                    (3, 2, 3, '2023-02-01', 45, 25000),
                                                                                                    (4, 2, 4, '2023-02-01', 35, 18000);

-- 插入科研成果数据
INSERT INTO ResearchAchievement (AchievementID, ProjectID, AchievementName, AcquisitionDate, ContributorID, Rank) VALUES
                                                                                                                      (1, 1, '量子计算机原型', '2025-01-15', 1, 1),
                                                                                                                      (2, 1, '量子通信技术论文', '2025-02-01', 2, 2),
                                                                                                                      (3, 2, '人类基因图谱', '2024-12-31', 3, 1),
                                                                                                                      (4, 2, '基因测序技术专利', '2025-01-10', 4, 2);

-- 插入贡献人数据
INSERT INTO Contributor (ContributorID, EmployeeID) VALUES
                                                        (1, 1),
                                                        (2, 2),
                                                        (3, 3),
                                                        (4, 4);

-- 插入专利数据
INSERT INTO Patent (PatentID, AchievementID, PatentType) VALUES
                                                             (1, 4, '发明专利'),
                                                             (2, 4, '实用新型专利'),
                                                             (3, 4, '外观专利');

-- 插入论文数据
INSERT INTO Paper (PaperID, AchievementID, JournalName, Title) VALUES
                                                                   (1, 2, '量子科学杂志', 'Quantum Communication Techniques'),
                                                                   (2, 3, '生物研究期刊', 'Human Genome Mapping');

-- 插入软件著作权数据
INSERT INTO SoftwareCopyright (SoftwareID, AchievementID, SoftwareName) VALUES
                                                                            (1, 1, 'QuantumSimulator v1.0'),
                                                                            (2, 4, 'GeneSequencer Pro');

-- 插入联系人数据
INSERT INTO Contact (ContactID, Name, OfficePhone, MobilePhone, Email) VALUES
                                                                           (1, '张科技', '123-456-7890', '987-654-3210', 'zhang.tech@example.com'),
                                                                           (2, '艾丽斯量子', '111-222-3333', '444-555-6666', 'alice.quantum@example.com'),
                                                                           (3, '鲍勃生物', '777-888-9999', '111-111-1111', 'bob.bio@example.com');