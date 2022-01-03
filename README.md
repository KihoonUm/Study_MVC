# Study_MVC
MVC패턴 공부
MVC 

Apple에서 기본적으로 지원하는 디자인 패턴으로 Model, View, Controller 구조로 이루어진 아키텍처 패턴 
Model : 앱의 데이터와 데이터를 관리하는 비즈니스 로직을 가짐
View : 사용자에게 보여주기 위한 UI를 담당
Controller : Model과 View 의 징검다리 역할로 View와 사용자간의 상호작용을 Model 에게 전달 하거나 Model의 변화를 View에게 전달하여 View를 어떻게 업데이트 할지 알려줌
장점 
다른 패턴에 비해 추가하는 코드가 적음
Apple에서 기본적으로 지원하는 패턴이라 손쉽게 사용 가능 
많은 개발자들이 사용하는 패턴이라 유지 보수에 유용함 개발속도가 빠른편으로 작은 규모의 프로젝트에 용이함
단점
VIew와 Controller가 너무 밀접하게 연관되어 있음 -> VIew 와 Controller 분리가 어려워짐
규모가 큰 프로젝트에는 유지보수가 힘들기 때문에 적합하지 않음
