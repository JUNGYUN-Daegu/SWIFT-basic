
//inheriting Enemy
//class className: superClassName
class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String){
        print("Says: \(speech).")
    }
    
    //상위 클래스의 특성을 오버라이드 함
    //상위 클래스의 특성이지만 상속받은 하위 클래스에서 인스턴스를 생성하기 전에 오버라이딩 함
    override func move() {
        print("Fly forward")
    }
    
    override func attack() {
        //상위클래스의 일반 공격을 상속한 상태로 추가 메소드를 만듬
        super.attack()
        print("Spits fire does 10 dot damage.")
    }
}
