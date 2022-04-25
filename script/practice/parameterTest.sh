#!/bin/bash
source $(dirname $0)/color.sh

# 변수 선언
EXECUTION_PATH=$(pwd) # 해당 스크립트를 실행시킨 경로
SHELL_SCRIPT_PATH=$(dirname $0) # 해당 스크립트의 실행경로
FIRST=$1 # 1 번째 입력 값
SECOND=$2 # 2 번째 입력 값

# 변수 출력
echo -e "${txtylw}============= 변수 출력 ===============${txtrst}"
echo -e "${txtgrn} EXECUTION_PATH: ${EXECUTION_PATH}"
echo -e "${txtgrn} SHELL_SCRIPT_PATH: ${SHELL_SCRIPT_PATH}"
echo -e "${txtgrn} FIRST: ${FIRST}"
echo -e "${txtgrn} SECOND: ${SECOND}"
echo -e "${txtgrn} \$#: $#"  # 입력 인자 개수

## 조건 설정
if [[ $# -ne 0 ]] # 입력 인자 개수($#) 가 0이 아닌 경우(-ne)
then
    echo -e "${txtylw}=======================================${txtrst}"
    echo -e "${txtgrn}  << 스크립트 🧐 >>${txtrst}"
    echo -e ""
    echo -e "${txtgrn} $0 브랜치이름 ${txtred}{ prod | dev }"
    echo -e "${txtylw}=======================================${txtrst}"
    exit
fi

## ...