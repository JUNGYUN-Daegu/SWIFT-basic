// 파일 이름과 만들려는 클래스 이름을 일치 시키는 것이 관행
// 대문자로 시작한다.
class Enemy {
    var health = 100
    var attackStrength = 10
    
    
    func takeDamage(amount: Int){
        health = health - amount
    }
    func move() {
        print("Walk forwards.")
        }
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
        }
}
//structure와 다른점: class는 var name: Int처럼 쓰면 이니셜라이저 써줘야함
