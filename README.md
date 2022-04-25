<p align="center">
    <img width="200px;" src="https://raw.githubusercontent.com/woowacourse/atdd-subway-admin-frontend/master/images/main_logo.png"/>
</p>
<p align="center">
  <img alt="npm" src="https://img.shields.io/badge/npm-%3E%3D%205.5.0-blue">
  <img alt="node" src="https://img.shields.io/badge/node-%3E%3D%209.3.0-blue">
  <a href="https://edu.nextstep.camp/c/R89PYi5H" alt="nextstep atdd">
    <img alt="Website" src="https://img.shields.io/website?url=https%3A%2F%2Fedu.nextstep.camp%2Fc%2FR89PYi5H">
  </a>
  <img alt="GitHub" src="https://img.shields.io/github/license/next-step/atdd-subway-service">
</p>

<br>

# 인프라공방 샘플 서비스 - 지하철 노선도

<br>

## 🚀 Getting Started

### Install
#### npm 설치
```
cd frontend
npm install
```
> `frontend` 디렉토리에서 수행해야 합니다.

### Usage
#### webpack server 구동
```
npm run dev
```
#### application 구동
```
./gradlew clean build
```
<br>

## 미션

* 미션 진행 후에 아래 질문의 답을 README.md 파일에 작성하여 PR을 보내주세요.

### 0단계 - pem 키 생성하기

1. 서버에 접속을 위한 pem키를 [구글드라이브](https://drive.google.com/drive/folders/1dZiCUwNeH1LMglp8dyTqqsL1b2yBnzd1?usp=sharing)에 업로드해주세요
- 업로드 하였습니다.
2. 업로드한 pem키는 무엇인가요.

### 1단계 - 망 구성하기
1. 구성한 망의 서브넷 대역을 알려주세요
- 대역 : 192.168.10.0/24

| 구분  | 서브넷 이름                | 가용 영역(AZ)       | IPv4 CIDR 블록      |
|-----|-----------------------|-----------------|-------------------|
|외부망| tonyjev93-external-01 | ap-northeast-2a | 192.168.10.0/26   |
|외부망| tonyjev93-external-02 | ap-northeast-2c | 192.168.10.64/26  |
|내부망| tonyjev93-internal-01 | ap-northeast-2a | 192.168.10.128/27 |
|관리용| tonyjev93-admin-01 | ap-northeast-2c | 192.168.10.160/27 |


2. 배포한 서비스의 공인 IP(혹은 URL)를 알려주세요

- URL : 52.78.72.73([www.tonyjev93.kro.kr](http://www.tonyjev93.kro.kr:8080))





---

### 2단계 - 배포하기
1. TLS가 적용된 URL을 알려주세요

- URL : [www.tonyjev93.kro.kr](www.tonyjev93.kro.kr)

---

### 3단계 - 배포 스크립트 작성하기

1. 작성한 배포 스크립트를 공유해주세요.

- 실행 script
```shell
$ ./buildAndStart.sh
```

- 모든 스크립트 파일은 `./script` 폴더내에 위치시켰습니다.
- **./script** 폴더 구조
    - `common`
        - script 실행 시 필요한 공통적인 변수 및 함수 선언
    - `func`
        - Step 별 함수 구현
    - `main.sh`
        - `func` 폴더 내 함수를 순차적으로 진행

```
## 작업 순서
# 1. Pull Request
# 2. Gradle Build
# 3. Server Restart
```