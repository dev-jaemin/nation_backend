CREATE TABLE analyst(
    id INT AUTO_INCREMENT,
    gender VARCHAR(10),
    class VARCHAR(50) NOT NULL,
    nation VARCHAR(255),
    region VARCHAR(255),
    hairStyle VARCHAR(255),
    glasses VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO analyst (gender, class, nation, region, hairStyle, glasses) VALUES
("man","브라질_남", "당신은 열정이 가득합니다 아니면 말구요", "","", "",""),  
("man","미국_남", "당신은 중후한 매력과 섹시한 매력을 지닌 사나이입니다. 네? 나이가 아직 어리다구요? 어쩌라구요.", "","", "",""),  
("man","일본_남", "당신은 열정이 가득합니다 아니면 말구요", "","", "",""),  
("man","프랑스_남", "당신은 열정이 가득합니다 아니면 말구요", "","", "",""),  
("man","나이지리아_남", "당신은 열정이 가득합니다 아니면 말구요", "","", "",""),  
("woman","브라질_여", "당신은 열정이 가득합니다 아니면 말구요", "","", "",""),  
("woman","미국_여", "당신은 열정이 가득합니다 아니면 말구요", "","", "",""),  
("woman","일본_여", "당신은 열정이 가득합니다 아니면 말구요", "","", "",""),  
("woman","프랑스_여", "당신은 열정이 가득합니다 아니면 말구요", "","", "",""),  
("woman","나이지리아_여", "당신은 열정이 가득합니다 아니면 말구요", "","", "","");
