import Foundation
// access modifier(or access specifiers) - 접근 제어
// 접근속성은 쿨래스, 메서드, 멤버의 접근 가능성을 설정하는 객체 지향의 언어 키워드
// swift - open, public, internal, fileprivate, private 순으로 존재
// 생략시 기본은 internal(c++경우는 기본이 private)

public class MyClass{
  
  // 현재 소스 파일 내에서만 사용가능(main.swift)
  fileprivate var name : String = "kim"
  
  // 현재 블럭 내에서만 사용 가능
  private func play() {}
  
  // 생략시 기본은 internal
  func display(){}
}

// open은 클래스에만 사용 가능하며 public과 비슷하다 - 모듈 외부까지 접근 가능
// 읽기 쓰기 가능한 프로퍼티는 정의 뒤에 {get set}
// 읽기만 가능한 프로퍼티는 정의 뒤에 {get}
open class var blue : UIColor {get}
