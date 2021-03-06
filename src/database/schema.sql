CREATE TABLE analyst(
    id INT AUTO_INCREMENT,
    gender VARCHAR(10),
    class VARCHAR(50) NOT NULL,
    nation VARCHAR(255),
    personalColor VARCHAR(255),
    hairStyle VARCHAR(255),
    glasses VARCHAR(255),
    img VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO analyst (gender, class, nation, personalColor, hairStyle, glasses, img) VALUES
-- 나라
("man","미국", "미국인들은 대체적으로 솟은 광대, 넓은 턱을 선호합니다.
인상적이고 남성적인 멋을 선호하는 것인데요.
비록 국내에서 당신은 특별히 잘생겼단 얘기를 못 들어봤어도,
미국에서는 인기가 많겠어요! 아마도요..", "","", "", "https://an-al-yst.kro.kr/img/nation-usm.jpg"),  
("man","멕시코", "멕시코인들은 까무잡잡한 피부와 잘 정돈된 수염을 굉장히 멋지다고 생각해요.
국내에선 당신이 뽐내는 멋진 개성을 잘 이해하지 못 했을 지라도,
중남미에선 당신을 최고로 멋진 남성으로 꼽으니 당장 멕시코로 떠나봅시다!", "","", "", "https://an-al-yst.kro.kr/img/nation-mexicom.jpg"),  
("man","프랑스", "유럽인들은 대체적으로 강한 남성미를 선호하는 편이지만,
프랑스에서는 꽃미남도 굉장히 인기가 많습니다.
남자다우면서도 꽃미남 같은 당신은 파리와 어울리는 군요.", "","", "", "https://an-al-yst.kro.kr/img/nation-francem.jpg"),  
("man","독일", "독일인들은 라틴 계열의 스페인 사람들을 멋지다고 생각합니다.
즉 부드러우면서도 느끼하지 않고,
담백한 매력의 당신 같은 사람을 멋지다고 생각하는 거죠.", "","", "", "https://an-al-yst.kro.kr/img/nation-germanym.jpg"),  
("man","이탈리아", "사랑의 나라 이탈리아에서 인기 많은 당신은
뚜렷한 이목구비를 가지고 있습니다.
이탈리아에서 사랑을 쟁취해봅시다.", "","", "", "https://an-al-yst.kro.kr/img/nation-italym.jpg"), 
("man","스웨덴", "흰피부를 가지고 있는 당신은 스웨덴에서 인기가 많을 것 같습니다.
뿐만 아니라 인상적인 눈을 가지고 계시네요.
스웨덴의 흰 피부, 푸른 눈은 전세계적으로 인기가 많아요.
비록 푸른 눈은 아니지만 멋진 눈빛을 하고 있는 당신은
스웨덴을 넘어서 전세계적으로 사랑 받을 것 같아요!", "","", "", "https://an-al-yst.kro.kr/img/nation-swedenm.jpg"),  
("man","중국", "진한 쌍커풀를 선호하는 중국에서는 당신의 두 눈을 굉장히 멋지다고 생각해요.
또한 당신의 진한 인상도 중국에서 인기가 많습니다.
14억 인구한테 사랑을 받는 다니..부럽습니다.", "","", "", "https://an-al-yst.kro.kr/img/nation-chinam.jpg"),  
("man","일본", "꽃미남을 선호하는 일본은 당신과 같은 매력의 소유자를 선호합니다.
선한 인상과 무쌍의 소유자는 요즘 들어 더더욱 인기가 많죠.
이웃나라에 가서 당신의 매력을 펼쳐보아요.", "","", "", "https://an-al-yst.kro.kr/img/nation-japanm.jpg"),  
("man","태국", "태국과 동남아에서는 당신의 흰 피부를 멋지다고 생각해요.
시원시원한 인상도 태국에서는 굉장히 좋아하죠.
동남아에 여행을 가서 인기쟁이가 되어보아요.", "","", "", "https://an-al-yst.kro.kr/img/nation-thailandm.jpg"),  
("man","이란", "이란에서는 까무잡잡한 태닝 피부가 매력의 기준입니다.
또한 진한 눈도 이란에서는 굉장히 멋지다고 생각하죠.
당신은 중동에서 인기가 많을 것입니다.", "","", "", "https://an-al-yst.kro.kr/img/nation-iranm.jpg"),  

("woman","미국", "미국에서는 각진 얼굴과 돋보이는 광대를 선호합니다.
안젤리나 졸리를 생각해보시면 이해가 가실 겁니다.
혹여나 광대가 컴플렉스이셨다면 이제부턴 자신감을 가지세요!", "","", "", "https://an-al-yst.kro.kr/img/nation-us.jpg"),  
("woman","멕시코", "멕시코에서는 여리여리한 것보단 건강미를 중요시합니다.
태닝한 듯한 피부와 진한 인상이 예쁘다고 생각합니다.
정열적인 매력을 지닌 당신은 멕시코 뿐만 아니라 중남미 전체에서 인기가 많을 거예요.", "","", "", "https://an-al-yst.kro.kr/img/nation-mexico.jpg"),  
("woman","프랑스", "프랑스에서는 자연스러운 예쁨을 선호합니다.
진한 화장보다는 수수한 매력과 그 속에서 나오는 우아함을 좋아하죠.
우아한 매력을 지닌 당신은 잔잔한 프랑스와 어울립니다.", "","", "", "https://an-al-yst.kro.kr/img/nation-france.jpg"),  
("woman","독일", "독일에서는 두터운 입술과 갸름한 얼굴, 광대뼈가 미의 기준입니다.
이는 독일 게르만 족이 덩치가 큰 편이라서,
라틴 계열의 모델 같은 느낌을 선호하기 때문에 그렇습니다.
즉, 당신이 모델 같은 멋을 지녔다는 말입니다!", "","", "", "https://an-al-yst.kro.kr/img/nation-germany.jpg"),  
("woman","이탈리아", "중남미 라틴 계열의 뚜렷한 이목구비, 태닝 피부를 지닌 당신,
사랑의 나라 이탈리아에서 제일 선호하는 외모를 지녔습니다.
이탈리아 가면 수많은 구애를 받을 테니 조심하세요!", "","", "", "https://an-al-yst.kro.kr/img/nation-italy.jpg"), 
("woman","스웨덴", "스웨덴 특유의 하얀 피부를 지닌 당신은 엘프같은 매력을 지녔습니다.
귀여우면서도 몽환적인 매력을 지닌 당신은 스웨덴 뿐만 아니라,
전 세계적으로 선망의 대상입니다.", "","", "", "https://an-al-yst.kro.kr/img/nation-sweden.jpg"),  
("woman","중국", "중국에서 미의 기준은 흰 얼굴과 쌍커풀, 긴 턱선입니다.
즉 당신의 시원시원한 매력을 선호합니다.
14억 인구한테서 사랑을 받는 다는 것..무슨 기분이신가요?", "","", "", "https://an-al-yst.kro.kr/img/nation-china.jpg"),  
("woman","일본", "일본에서는 흰 피부의 귀여운 얼굴을 선호합니다.
또한 요즘은 무쌍이 일본에서 인기가 많다고 합니다.
한국 연예인 중에서 김고은님이 인기가 무척 많다고 합니다.
귀여우면서도 매력적인 당신, 인스타 감성이 넘치는 느낌이네요! ", "","", "", "https://an-al-yst.kro.kr/img/nation-japan.jpg"),  
("woman","태국", "태국에서는 흰 피부를 지닌 당신과 같은 외모를 선호합니다.
작은 얼굴에 이목구비도 뚜렷한 당신은 태국을 넘어
동남아 전체에서 인기가 많을 것입니다.", "","", "", "https://an-al-yst.kro.kr/img/nation-thailand.jpg"),  
("woman","이란", "이란에서는 얼굴의 전체를 대외적으로 공개를 할 수가 없기에,
얼굴의 일부가 미의기준이 된다고 하는데요, 그 곳은 코입니다.
코가 오똑하며 예쁜 당신은 중동 국가에서 인기가 많겠군요!", "","", "", "https://an-al-yst.kro.kr/img/nation-iran.jpg");

-- 지역
INSERT INTO analyst (gender, class, nation, personalColor, hairStyle, glasses, img) VALUES

("man","봄 웜", "","당신에게 잘 받는 색은 노랑이 대표적이고 밝고 맑은 색상들이 많이 있습니다.
봄 웜은 경쾌하고 젊어보이는 톤입니다. 
과한 음영과 그라데이션은 피해주시는 게 좋겠습니다. 
봄 웜톤의 대표 남자 연예인: 조인성", "","", "https://an-al-yst.kro.kr/img/personalColor-spring.png"),  
("man","여름 쿨", "","여름 쿨톤의 당신은 너무 밝거나 어두운 색, 
혹은 과하게 채도가 높은 쨍한 색은 어울리지 않습니다. 
스모키한 중간색이나 밝고 시원한 색상이 잘 어울립니다. 파스텔 톤도 잘 어울리죠. 
발랄하고 쿨하며 지적인 이미지를 줍니다. 
여름 쿨톤의 대표 남자 연예인: 엑소 백현", "","", "https://an-al-yst.kro.kr/img/personalColor-summer.png"),  
("man","가을 웜", "","당신은 깊이 있는 중간 또는 세피아 색상이 어울립니다. 
잘 어울리는 색이 많지만 파스텔 톤은 피해주는 게 좋습니다. 
세련되고 어른스러운 분위기를 풍기며 도시적인 이미지를 줍니다.
가을 웜톤의 대표 연예인: 원빈, 소지섭", "","", "https://an-al-yst.kro.kr/img/personalColor-autumn.png"),  
("man","겨울 쿨", "","겨울 쿨톤의 소유자인 당신은 선명하고 역동적이며 인상적인 이미지를 줍니다. 
갈색 헤어보다는 검은색 헤어가 어울립니다. 
옷은 하늘색과 검은 색의 조합 등 대비 되는 색으로 대비감을 주시면 좋겠습니다. 
밝은 노랑 등 채도가 높고 명도가 높은 색은 피해주세요. 
겨울 쿨톤의 대표 연예인: SF9 휘영", "","", "https://an-al-yst.kro.kr/img/personalColor-winter.png"),  

("woman","봄 웜", "","잘 받는 색은 노랑이 대표적이고 밝고 맑은 색상들이 많이 있습니다. 
경쾌하고 젊어보이는 톤입니다. 
과한 음영과 그라데이션은 피해주시는 게 좋습니다. 
봄 웜톤의 대표 연예인: 아이유", "","", "https://an-al-yst.kro.kr/img/personalColor-spring.png"),  
("woman","여름 쿨", "","스모키 중간색이나 밝고 시원한 색상이 잘 어울립니다.
파스텔 톤도 잘 어울리죠. 
발랄하고 쿨하며 지적인 이미지를 줍니다. 
여름 쿨톤의 대표 연예인: 김연아, 이영애", "","", "https://an-al-yst.kro.kr/img/personalColor-summer.png"),  
("woman","가을 웜", "","깊이 있는 중간 또는 세피아 색상이 어울립니다. 
잘 어울리는 색이 많지만 파스텔 톤은 피해주는 게 좋습니다. 
세련되고 어른스러운 분위기를 풍기며 도시적인 이미지를 줍니다. 
가을 웜톤의 대표 연예인: 제니, 박보영", "","", "https://an-al-yst.kro.kr/img/personalColor-autumn.png"),  
("woman","겨울 쿨", "","겨울 쿨톤의 당신은 선명한 단색이나 흰색에 가까운 밝은 색상이 어울립니다. 
채도가 낮고 쨍한 검은색도 어울리죠. 
이런 색 배합과 함께면 선명하고 역동적이며 인상적인 이미지를 줄 것입니다. 
겨울 쿨톤의 대표 연예인: 현아", "","", "https://an-al-yst.kro.kr/img/personalColor-winter.png");

-- 어울리는 헤어스타일 by 얼굴형
INSERT INTO analyst (gender, class, nation, personalColor, hairStyle, glasses,img) VALUES

("man","댄디컷","", "","긴 얼굴형을 가진 당신은 가로라인으로 시선을 분산시키는 댄디컷을 하는 것이 좋습니다.
바로 앞머리를 내려서 시선을 분산 시켜주는 것인데요,
가르마를 타더라도 이마를 전부 드러내는 것은 피해주는 것이 좋습니다. 
긴 얼굴 형의 대표 연예인: 김우빈, 제이홉", "", "https://an-al-yst.kro.kr/img/hairstyle-longm.jpg"),  
("man","가르마펌","","", "다이아몬드형, 즉 광대돌출형의 얼굴형인 당신은 남성적 이미지가 강합니다.
서양권에서 인기가 많은 얼굴형이며 이마를 보여주는 스타일링으로 남성미를 돋보이게 할 수 있습니다.
이마를 까는 것이 부담스러우시면 정수리쪽 볼륨을 살리는 가르마펌을 하는 것이 좋습니다.
다이아몬드 형의 대표 연예인: 류준열, 공유", "", "https://an-al-yst.kro.kr/img/hairstyle-diamondm.jpg"),  
("man","포마드","", "","둥근 얼굴형을 가진 당신은 어려보이고 둥글한 이미지를 가지고 있습니다.
자칫 어리숙해보일 수도 있어서 샤프한 느낌을 최대한 살리는 것이 중요합니다.
포마드같은 스타일링으로 앞머리를 세워서 세로폭을 늘리는 것이 좋습니다. 
둥근 얼굴 형의 대표 연예인: 조정석",  "", "https://an-al-yst.kro.kr/img/hairstyle-roundm.jpg"),
("man","리프컷", "","","역삼각형 얼굴형은 가로폭이 좁고 세로폭이 길다는 특징이 있습니다.
기장감이 있는 리프컷을 통해서 가로폭을 늘리면,
하관이 길어보일 수 있는 점이 보완 됩니다.
역삼각형 얼굴형의 대표 연예인: 이동욱, 이종석","", "https://an-al-yst.kro.kr/img/hairstyle-trim.jpg"),  
("man","모든 헤어스타일","", "","계란형 얼굴은 가진 당신은 어떤 헤어스타일이든 다 잘 어울립니다.
중요한 건 너무 세로, 가로 한 쪽으로만 볼륨을 주게 되면
이미 잘 잡혀있는 밸런스가 무너지게 됩니다.
즉 당신은 자연스러운 스타일링을 해주는 것이 제일 좋을 것 같습니다. 
계란형 얼굴형의 대표 연예인: 지민, 송중기 ", "", "https://an-al-yst.kro.kr/img/hairstyle-eggm.jpg"),  
("man","아이비리그컷", "","","사각턱 형, 즉 턱선이 발달한 당신은 남성적인 매력을 풍깁니다.
웨이브를 넣어줘서 각진 느낌을 커버할 수도 있겠지만
짧게 세운 헤어스타일을 하면 남성미를 한 층 더 부각 시킬 수 있습니다.
사각턱 얼굴형의 대표 연예인: 전현무, 김종국", "", "https://an-al-yst.kro.kr/img/hairstyle-squarem.jpg"),  

("woman","레이어드 S컬펌", "","", "계란형 얼굴은 포니테일이나 끝을 가볍게 표현해주는
레이어드 S컬펌으로 갸름한 얼굴형을 더욱 예쁘게 보여줄 수 있어요.
이마를 가리는 무거운 느낌의 뱅은 
답답한 느낌을 줄 수 있기 때문에 피하는게 좋습니다.
계란형 얼굴형의 대표 연예인: 수지 ", "", "https://an-al-yst.kro.kr/img/hairstyle-egg.jpg"), 
("woman","단발 굵은 S컬펌", "","","네모형 얼굴은 턱선이 짙은 얼굴형으로 이마 쪽 넓이와 턱 쪽의 넓이 비슷한 경우가 많아요.
각진 얼굴을 갸름하게 보여줄 수 있는 단발 굵은 S컬펌,
미디엄 길이의 레이어드 C컬펌이 잘 어울려요.
특히 옆머리에 가볍게 S자로 웨이브를 줘서 각진 얼굴을 갸름하게 보여줄 수 있습니다.
5:5정가르마, 반듯한 일자 앞머리는 피해주는게 좋습니다.
네모형 얼굴형의 대표 연예인: 제니 정유미",  "", "https://an-al-yst.kro.kr/img/hairstyle-square.jpg"), 
("woman","레이어드 C컬펌","","", "둥근형은 세로폭을 늘려주는 것이 중요합니다.
위쪽에 볼륨을 준 뿌리볼륨펌과 머리가 얼굴 쪽으로 들어와
얼굴의 윤곽을 갸름하게 보여주는 레이어드 C컬펌이 잘 어울립니다.
어중간한 길이는 동그란 얼굴을 더욱 강조할 수 있기 때문에 피하는게 좋고,
턱선까지 오는 단발이나 아예 가슴중간을 넘는 긴 기장이 좋아요.
둥근 얼굴형의 대표 연예인: 신민아, 소희",  "", "https://an-al-yst.kro.kr/img/hairstyle-round.jpg"),  
("woman","웨이브 앞머리", "", "","다이아몬드형 얼굴은 광대가 도드라지고 이마쪽으로 갈수록 좁아지는 얼굴형을 뜻해요.
대부분의 스타일이 잘 어울리는 얼굴형입니다.
머리를 옆으로 넘겨 위쪽에 자연스럽게 웨이브로 볼륨을 준 앞머리로
도드라지는 광대를 부드러워 보이게 만들어 줄 수 있어요.
다이아몬드 얼굴형의 대표 연예인: 고준희", "", "https://an-al-yst.kro.kr/img/hairstyle-diamond.jpg"),  
("woman","롱기장의 루즈한 S컬펌", "", "","긴네모형은 광대가 부족하며 세로폭이 가로폭보다 커서 얼굴 광대뼈 부분을 강조해주는 5:5가르마,
옆머리에 S자로 자연스러운 웨이브로 볼륨감을 주는 스타일이나
롱기장의 루즈한 S컬펌이 잘 어울리는 얼굴형이예요.
긴 얼굴이 강조될 수 있는 턱선에 닿는 길이의 단발은 피해주시는게 좋습니다.
긴 얼굴형의 대표 연예인: 려원, 티파니", "", "https://an-al-yst.kro.kr/img/hairstyle-long.jpg"),  
("woman","머리를 한쪽으로 넘겨 웨이브를 준 스타일", "", "","하트형은 머리 위쪽은 넓어보이나 턱선으로 올수록 좁아지는 얼굴형입니다.
이런 얼굴형은 귀 높이에서부터 웨이브가 들어간 헤어스타일이 좋아요.
C컬펌 또는 무거운 느낌의 굵은 S컬펌이 잘 어울리고,
머리를 한쪽으로 넘겨 웨이브를 준 스타일은 좁은 턱에 비해 상대적으로 강해보이는 광대뼈를 커버해주면서
여성스러운 매력을 높여줄 수 있는 스타일 중 하나입니다.
하트형 얼굴형의 대표 연예인: 황정음", "", "https://an-al-yst.kro.kr/img/hairstyle-heart.jpg");  

-- 안경 by 얼굴형
INSERT INTO analyst (gender, class, nation, personalColor, hairStyle, glasses,img) VALUES

("man","아래쪽이 유테, 위쪽이 무테","", "","","긴 얼굴형을 가진 당신은 아래쪽이 유테,
위쪽이 무테거나 가로로 긴 타입의 안경으로 
시선을 중간으로 모이게 하면서 긴 느낌을 줄일 수 있습니다.
위가 유테고 아래쪽이 무테인 안경은 위가 강조되면서
오히려 얼굴이 더 길어보일 수 있습니다. 
긴 얼굴형의 대표 연예인: 김우빈, 제이홉", "https://an-al-yst.kro.kr/img/glasses-down.png"),  
("man","라운드 형","","","", "다이아몬드형, 즉 광대돌출형을 가진 당신은 각진 느낌이 강하게 들 수 있습니다.
동그란 안경으로 광대나 턱 등 윤곽선에 집중되지 않을 수 있도록 할 수 있습니다.
광대가 부각되는 만큼 눈 사이 거리가 있는 안경테는 옆으로 넓어보일 수 있으니 피해주세요.
다이아몬드 얼굴형의 대표 연예인: 류준열, 공유", "https://an-al-yst.kro.kr/img/glasses-round.png"),  
("man","스퀘어 형","", "","","둥근 얼굴형을 가진 당신은 어려보이고 둥글한 이미지를 가지고 있습니다.
각이 있는 스퀘어 형이나 라운드 스퀘어 형의 안경으로 어려보이는 이미지를 더 지적이게 만들 수 있습니다.
너무 진한 테의 둥근 모양은 얼굴의 동그란 모양을 부각 시키니 기피해주시는 게 좋아요. 
둥근 얼굴형의 대표 연예인: 조정석", "https://an-al-yst.kro.kr/img/glasses-square.jpg"),
("man","아래쪽이 무테, 위쪽이 유테", "","","","역삼각형 얼굴형은 뾰족한 턱이 특징이에요.
아래쪽이 무테, 위쪽이 유테인 형식이나,
얇은 테의 라운드 스퀘어형으로 날카로워보이는 이미지를 잡아줄 수 있습니다.
안경알이 몰려있는 듯한 둥근 모양은 얼굴이 커보이니 피해주세요.
역삼각형 얼굴형의 대표 연예인: 이동욱, 이종석", "https://an-al-yst.kro.kr/img/glasses-up.jpg"),  
("man","모든 안경","", "","","계란형 얼굴은 가진 당신은 어떤 안경이든 다 잘 어울립니다.
둥근 라운드부터 각진 스퀘어,
심지어 도전하기 쉽지 않은 캣츠아이 테까지 다 소화하실 수 있습니다.
계란형 얼굴형의 대표 연예인: 지민, 송중기 ", "https://an-al-yst.kro.kr/img/glasses-catseye.jpg"),  
("man","얇은 라운드 형", "","","","사각턱 형, 즉 턱선이 발달한 당신은 강한 분위기를 가지고 있습니다.
굵은 스퀘어 형은 더욱 강하게 보이기 때문에,
얇은 테나 라운드 형으로 이미지를 유하게 만들어보세요.
사각턱 얼굴형의 대표 연예인: 전현무, 김종국", "https://an-al-yst.kro.kr/img/glasses-thickround.png"),  

("woman","모든 안경","", "","","계란형 얼굴은 가진 당신은 어떤 안경이든 다 잘 어울립니다.
둥근 라운드부터 각진 스퀘어,
심지어 도전하기 쉽지 않은 캣츠아이 테까지 다 소화하실 수 있습니다.
계란형 얼굴형의 대표 연예인: 수지 ", "https://an-al-yst.kro.kr/img/glasses-catseye.jpg"),  
("woman","얇은 라운드 형", "","","","사각턱 형, 즉 턱선이 발달한 당신은 강한 분위기를 가지고 있습니다.
굵은 스퀘어 형은 더욱 강하게 보이기 때문에,
얇은 테나 라운드 형으로 이미지를 유하게 만들어보세요.
사각턱 얼굴형의 대표 연예인: 제니, 정유미", "https://an-al-yst.kro.kr/img/glasses-thickround.png"),  
("woman","스퀘어 형","", "","","둥근 얼굴형을 가진 당신은 어려보이고 둥글한 이미지를 가지고 있습니다.
각이 있는 스퀘어 형이나 라운드 스퀘어 형의 안경으로 어려보이는 이미지를 더 지적이게 만들 수 있습니다.
너무 진한 테의 둥근 모양은 얼굴의 동그란 모양을 부각 시키니 기피해주시는 게 좋아요.
둥근 얼굴형의 대표 연예인: 신민아, 소희", "https://an-al-yst.kro.kr/img/glasses-square.jpg"),
("woman","라운드 형","","","", "다이아몬드형, 즉 광대돌출형을 가진 당신은 각진 느낌이 강하게 들 수 있습니다.
동그란 안경으로 광대나 턱 등 윤곽선에 집중되지 않을 수 있도록 할 수 있습니다.
광대가 부각되는 만큼 눈 사이 거리가 있는 안경테는 옆으로 넓어보일 수 있으니 피해주세요.
다이아몬드 얼굴형의 대표 연예인: 고준희", "https://an-al-yst.kro.kr/img/glasses-round.png"),  
("woman","아래쪽이 유테, 위쪽이 무테","", "","","긴 얼굴형을 가진 당신은 아래쪽이 유테, 위쪽이 무테거나 가로로 긴 타입의 안경으로
시선을 중간으로 모이게 하면서 긴 느낌을 줄일 수 있습니다.
위가 유테고 아래쪽이 무테인 안경은 위가 강조되면서 오히려 얼굴이 더 길어보일 수 있습니다.
긴 얼굴형의 대표 연예인: 려원, 티파니", "https://an-al-yst.kro.kr/img/glasses-down.png"),  
("woman","아래쪽이 무테, 위쪽이 유테", "","","","하트형 얼굴형은 뾰족한 턱이 특징이에요.
아래쪽이 무테, 위쪽이 유테인 형식이나,
얇은 테의 라운드 스퀘어형으로 날카로워보이는 이미지를 잡아줄 수 있습니다.
안경알이 몰려있는 듯한 둥근 모양은 얼굴이 커보이니 피해주세요.
하트형 얼굴형의 대표 연예인: 황정음", "https://an-al-yst.kro.kr/img/glasses-up.jpg");