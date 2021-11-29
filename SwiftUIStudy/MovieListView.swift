//
//  MovieList.swift
//  SwiftUIStudy
//
//  Created by 이아림 on 2021/11/26.
//

import SwiftUI

struct MovieListView:View {
    
    var movies:[Movie] = MovieList.List
    var body: some View {
        NavigationView {
            List(movies, id:\.id){ movie in //command+ 좌클릭 -> Embed in List 하면 Hstack을 List로 만들어줌.
                NavigationLink(
                    destination: MovieDetail(Movie: movie),
                    label: {
//                        Image(movie.imageName)
//                            .resizable() // 크기를 수정할 수 있도록 화면비율을 제공
//                            .scaledToFit() // 화면 크기에 맞도록 조절
//                            .frame(height: 70)
//                            .cornerRadius(5) //모서리에 둥글게 넣어주기
//                            .padding(5) // 간격
//                        VStack(alignment: .leading, spacing: 2) { // alignment전체 셀의 정렬, spacing은 간격
//                            Text(movie.title)
//                                .fontWeight(.semibold) // 글꼴두께
//                                .lineLimit(1) // 글씨길이제한
//                                .minimumScaleFactor(0.8) // 글씨가 가변적으로 늘어가는걸 축소시킬때 스케일 적용
//                            Text(movie.openDate)
//                                .font(.subheadline) //글씨의 폰트 적용. 테마 적용 비슷한 느낌
//                                .foregroundColor(.secondary) //?
//
//                        }
                        MovieListCell(movie: movie)
                    })
            }.navigationTitle("2021년 개봉영화") // 주의해야할점. 무조건 navigationView안에 넣어야 한다.
        }
    }
}

struct MovieListCell: View {
    var movie:Movie
    var body: some View {
        HStack {
            Image(movie.imageName)
                .resizable() // 크기를 수정할 수 있도록 화면비율을 제공
                .scaledToFit() // 화면 크기에 맞도록 조절
                .frame(height: 70)
                .cornerRadius(5) //모서리에 둥글게 넣어주기
                .padding(5) // 간격
            VStack(alignment: .leading, spacing: 2) { // alignment전체 셀의 정렬, spacing은 간격
                Text(movie.title)
                    .fontWeight(.semibold) // 글꼴두께
                    .lineLimit(1) // 글씨길이제한
                    .minimumScaleFactor(0.8) // 글씨가 가변적으로 늘어가는걸 축소시킬때 스케일 적용
                Text(movie.openDate)
                    .font(.subheadline) //글씨의 폰트 적용. 테마 적용 비슷한 느낌
                    .foregroundColor(.secondary) //?
                
            }
        }
    }
}
struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
