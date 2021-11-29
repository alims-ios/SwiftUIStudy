//
//  Movie.swift
//  SwiftUIStudy
//
//  Created by 이아림 on 2021/11/26.
//

import SwiftUI

struct Movie: Identifiable { // identifiable?
    var id = UUID() // UUID?
    let imageName: String
    let title: String
    let description: String
    let ViewCount: Int?
    let openDate:String
    let url:String
}

struct MovieList {
    static let List = [
        Movie(imageName: "venom", title: "Venom2", description: "히어로의 시대는 끝났다.\n베놈과 완벽한 파트너가 된 에디 브록 앞에 클리터스 캐서디가 카니지로 등장, 앞으로 닥칠 대혼돈의 세상을 예고한다.\n대혼돈의 시대가 시작되고, 악을 악으로 처단할 것인가?", ViewCount: 2120335, openDate: "2021.10.13", url : "https://namu.wiki/w/%EB%B2%A0%EB%86%88%202:%20%EB%A0%9B%20%EB%8D%B0%EC%96%B4%20%EB%B9%84%20%EC%B9%B4%EB%8B%88%EC%A7%80"),
        Movie(imageName: "shangchi", title: "Shangchi", description: "초인적인 능력을 가진 ‘텐 링즈’의 힘으로 수세기 동안 어둠의 세상을 지배해 온 ‘웬우’ '샹치’는 아버지 ‘웬우’ 밑에서 암살자로 훈련을 받았지만 이를 거부하고 평범함 삶을 선택한다. 그러나 ‘샹치’는 목숨을 노리는 자들의 습격으로 더 이상 운명을 피할 수 없다는 것을 직감하고, 어머니가 남긴 가족의 비밀과 내면의 신비한 힘을 일깨우게 된다 벗어나고 싶은 과거이자, 그 누구보다 두려운 아버지 ‘웬우’를 마주해야 하는 ‘샹치’ 악이 될 것인가? 구원이 될 것인가? 마블의 새로운 시대, 세상에 없던 힘이 탄생한다!", ViewCount: 1740871,openDate: "2021.09.01", url: "https://namu.wiki/w/%EC%83%B9%EC%B9%98%EC%99%80%20%ED%85%90%20%EB%A7%81%EC%A6%88%EC%9D%98%20%EC%A0%84%EC%84%A4"),
        Movie(imageName: "guimom", title: "귀문", description: "990년, 귀사리의 한 수련원에서 건물 관리인이 투숙객들을 집단살해하는 사건이 발생한다.이후 폐쇄된 수련원에는 이승과 저승, 과거와 현재가 공존하는 초공간이 생기고 희생자들은 지박령이 되어 그곳에 갇힌다. 1996년, 호러 공모전 영상을 촬영하기 위해 폐수련원에 들어갔던 대학생 3인방이 실종되고, 폐수련원의 원혼들을 달래며 씻김굿을 하던 도진모가 의문의 죽음을 당하게 된다.", ViewCount: nil,openDate: "2021.08.18", url:"https://movie.daum.net/moviedb/main?movieId=151323"),
        Movie(imageName: "mogadisyu", title: "mogadisyu", description: "내전으로 고립된 낯선 도시, 모가디슈.지금부터 우리의 목표는 오로지 생존이다!", ViewCount: 3611996, openDate: "2021.08.06", url:"https://namu.wiki/w/%EB%AA%A8%EA%B0%80%EB%94%94%EC%8A%88(%EC%98%81%ED%99%94)"),
        Movie(imageName: "sinkhole", title: "싱크홀", description: "사.상.초.유! 도심 속 초대형 재난 발생! \n서울 입성과 함께 내 집 마련의 꿈을 이룬 가장 ‘동원(김성균)’\n이사 첫날부터 프로 참견러 ‘만수’(차승원)와 사사건건 부딪힌다.\n\n‘동원’은 자가취득을 기념하며 직장 동료들을 집들이에 초대하지만\n행복한 단꿈도 잠시, 순식간에 빌라 전체가 땅 속으로 떨어지고 만다.\n\n마주치기만 하면 투닥거리는 빌라 주민 ‘만수’와 ‘동원’\n‘동원’의 집들이에 왔던 ‘김대리’(이광수)와 인턴사원 ‘은주’(김혜준)까지!\n지하 500m 싱크홀 속으로 떨어진 이들은 과연 무사히 빠져나갈 수 있을까?\n\n“한 500m 정도는 떨어진 것 같아”\n“우리… 나갈 수 있을까요?”", ViewCount: 2193557, openDate: "2021.08.11", url:"https://namu.wiki/w/%EC%8B%B1%ED%81%AC%ED%99%80(%EC%98%81%ED%99%94)"),
        Movie(imageName: "hostage", title: "인질", description: "배우 황정민 '인질'로 잡혔다!\n평소와 똑같던 어느 새벽, 서울 한복판에서 증거도, 목격자도 없이 대한민국 톱배우 '황정민'이 납치된다. \n한 치 앞을 알 수 없는 상황 속 살기 위한 극한의 탈주가 시작되는데…\n관객들을 사로잡을 리얼리티 액션스릴러가 온다!", ViewCount: 1635270, openDate: "2021.08.18", url: "https://namu.wiki/w/%EC%9D%B8%EC%A7%88(%EC%98%81%ED%99%94)"),
        Movie(imageName: "way", title: "방법:재차의", description: "되살아난 시체 '재차의'(在此矣)가 살인을 저질렀다! \n\n살인사건 현장에서 피해자와 함께 용의자도 사체로 발견된다.\n그러나 용의자의 시신은 이미 3개월 전 사망한 것으로 밝혀져 경찰은 혼란에 빠진다.\n\n한편 미스터리를 추적하는 기자 임진희는 라디오 출연 중 자신이 바로 그 살인사건의 진범이며 생방송 인터뷰를 진행하고 싶다는 전화를 받게 된다.\n경찰과 네티즌은 임진희 기자의 온라인 생방송을 일제히 주목하고\n인터뷰 당일 그 곳에 나타난 범인은 되살아난 시체 '재차의'에 의한 3번의 살인을 예고하는데…\n\n첫 번째 살인이 예고된 날,\n엄청난 수의 ‘재차의’ 군단이 나타나 무차별 습격을 시작하고\n총력 방어에 나선 경찰 당국은 속수무책으로 당하고 만다.\n과연 이들을 조종하고 있는 배후는 누구일까?\n\n올여름, 이들을 막아낼 유일한 ‘방법'(謗法)이 온다!", ViewCount: nil, openDate: "2021.07.28", url:"https://namu.wiki/w/%EB%B0%A9%EB%B2%95:%20%EC%9E%AC%EC%B0%A8%EC%9D%98")
    ]
}
