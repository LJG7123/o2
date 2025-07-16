# 🛍️ O2 – 중고거래 플랫폼 앱

> Flutter와 Firebase 기반의 중고거래 플랫폼 앱입니다. 사용자는 상품을 등록하고, 다른 사람의 상품을 탐색하며, 실시간 채팅을 통해 거래할 수 있습니다. 클린 아키텍처와 MVVM 패턴을 기반으로 구조화된 설계와 유지보수성을 갖춘 앱입니다.

---

## 🧾 프로젝트 개요

- **프로젝트명**: O2
- **목적**: 중고물품을 등록·검색하고 실시간 채팅을 통해 거래까지 이어지는 사용자 경험 제공
- **개발 기간**: 2025년 1월 ~ 2월 (5주)
- **주요 기술**: Flutter, Riverpod, Firebase, MVVM, Clean Architecture
- **플랫폼**: Android

---

## ✨ 주요 기능

| 기능 | 설명 |
|------|------|
| 🔐 회원가입/로그인 | Firebase Authentication 기반 이메일 로그인 |
| 📸 상품 등록 | 이미지 업로드 + 상품 정보 입력 → Firestore 저장 |
| 🔍 상품 검색 | 조건별 필터 및 키워드 기반 검색 기능 |
| 💬 실시간 채팅 | 1:1 거래 채팅 기능 (Firestore) |
| 🧾 마이페이지 | 내가 올린 상품 목록 및 프로필 정보 확인 |
| 🔔 푸시 알림 | 거래 요청 및 메시지 수신 시 FCM 알림 수신 |
| 📐 구조 설계 | MVVM 패턴 + 클린 아키텍처 적용으로 구조화된 프로젝트 구성 |

---

## 🛠 사용 기술 스택

| 분류 | 기술 |
|------|------|
| 언어 | Dart |
| 프레임워크 | Flutter |
| 상태관리 | Riverpod |
| 라우팅 | go_router |
| 백엔드 | Firebase Authentication, Cloud Firestore, Storage, FCM |
| 구조 | MVVM, Clean Architecture |
| IDE | Android Studio, VS Code |

---

## 🧱 프로젝트 구조 예시

lib/   
├── core/ # 공통 유틸, 상수, 에러 처리 등   
├── data/ # Firebase 등 외부 데이터 처리   
├── domain/ # Entity, Repository interface   
├── presentation/ # UI 및 ViewModel   
└── main.dart   

---

## 📱 앱 주요 화면

| 로그인 / 회원가입 | 게시글 리스트 | 상세 화면 |
|-----|-----|-----|
| <img width="300" src="https://github.com/user-attachments/assets/accb4f31-0140-48fd-8823-02dce0fb618a" /> | <img width="300" src="https://github.com/user-attachments/assets/322b286e-bb01-4be0-bb2f-e6a80e170e28" /> | <img width="300" src="https://github.com/user-attachments/assets/a7b6436c-946e-46c6-8520-b0eedcde6d9d" /> |

| 상품 등록 | 실시간 채팅 | 장소 선택 |
|-----|-----|-----|
| <img width="300" src="https://github.com/user-attachments/assets/058b1f65-b68a-4788-9f94-789c4918eefa" /> | <img width="300" src="https://github.com/user-attachments/assets/c9eabbc2-84ca-4782-919d-d938564a94d8" /> | <img width="300" src="https://github.com/user-attachments/assets/852f1f4b-5675-4543-9f32-d524555990a6" /> |

---

## 📌 개발 의도 및 경험

- Flutter의 구조적인 개발 능력을 강화하기 위해 **MVVM 및 클린 아키텍처**를 실제 앱에 적용
- **Firebase를 전반적으로 활용**하며 인증, DB, 이미지 저장, 알림 기능까지 통합 경험
- `Riverpod`을 활용한 상태 관리를 통해 **단일 책임 원칙과 재사용성 높은 ViewModel 구성**
- 상품 등록 시 **이미지 압축/최적화**를 적용하여 업로드 속도 개선

---

## 🧠 주요 트러블슈팅 경험

- **Container의 align 속성 관련 문제**  
  → 장소 선택 화면에서 마커 위의 정보창을 Container로 구현하는 과정에서 align 속성을 지정하면 Container의 크기가 최대로 늘어나는 문제 발견
  → 검색 결과 align 속성을 지정하면 발생하는 현상
  → 마커와 정보창을 SizedBox에 넣고 해당 SizedBox를 조정하며 화면 정중앙에 위치하도록 구현하여 문제 해결

- **채팅 화면 리빌드 문제**  
  → 채팅 화면에서 새로운 메세지가 추가되면 모든 메세지가 리빌드되는 현상 발견
  → 채팅 메세지는 ListView로 구현되어 있는데, 최근 메세지가 List의 맨 앞에 위치하기 때문에 새로운 메세지가 추가되면 기존 메세지가 한 칸씩 뒤로 밀리며 모두 리빌드됨
  → ListView의 각 아이템에 ValueKey 속성을 할당하고, findChildIndexCallback 속성의 정의하여 문제 해결

---
