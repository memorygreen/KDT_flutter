class Animal{
  // 1. late : 추후에 값을 초기화 하겠다는 키워드
  String? name;
  int? age;

  // 2. ?(null 허용)

  int? i;
  // 생성자 클래스명과 같다(대소문자도 구분)
  // 반환 타입 x
  Animal(this.name,this.age);

  // 생성자 오버로딩 (비슷한 것)
  // 클래스명.내맘대로네이밍

  Animal.two(this.i);

}

