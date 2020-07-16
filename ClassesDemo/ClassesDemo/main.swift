//이니셜라이즈: type name = 클래스이름 + 괄호
let skeleton = Enemy()
print(skeleton.health)
skeleton.move()
skeleton.attack()
skeleton.takeDamage(amount: 10)

print(skeleton2.health)

//만들어 놓은 블루프린터 이용해 같은 속성의 객체를 많이 생산 가능
//creating another reference on the same skeleton: class는 레퍼런스함에 주의. 따라서 새로운 인스턴스를 만들어 줘야함
//하지만 스트럭쳐같은 경우 skeleton2 = skeleton 이라 할 때 새로운 객체가 만들어짐. 스트럭쳐는 immutable, 변화를 줄 때 스트럭쳐 자체가 변화함(mutating function)(변화에는 삭제, 추가도 포함). 데미지도 다르게 받음
//structure는 밸류를 전달함. class는 레퍼런스를 전달. 즉 사진을 보낼때 스트럭쳐는 사진을 보내고 클래스는 로케이션을 보냄
//따라서 자료를 manipulate하는 경우 클래스는 원본 보존에 위험이 있음.
//따라서 특별한 경우가 아니면 스위프트에서는 struct를 class대신에 사용하라고 권고
let skeleton2 = skeleton
let skeleton3 = Enemy()

//Structure와 상당히 비슷. 하지만 스트럭쳐와 대비되는 클래스의 특징은 상속

let dragon = Dragon()
//하위 클래스 고유 특성. 이니셜라이징하면서 숫자 변경가능
dragon.wingSpan = 5
//상위 클래스의 특성이지만 상속받은 하위 클래스에서 인스턴스를 생성할 때 값 설정 가능함
dragon.attackStrength = 15
dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane")
//상위 클래스의 특성이지만 상속받은 하위 클래스에서 인스턴스를 생성하기 전에 오버라이딩 함
dragon.move()
dragon.attack()
