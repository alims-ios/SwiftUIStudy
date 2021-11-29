//
//  MovieDetail.swift
//  SwiftUIStudy
//
//  Created by 이아림 on 2021/11/26.
//

import SwiftUI

struct MovieDetail: View {
    var Movie:Movie
    var body: some View {
        VStack(spacing:20){
            
            Image(Movie.imageName)
                .resizable()
                .scaledToFit()
                .frame(height:150)
                .cornerRadius(12)
            Text(Movie.title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .multilineTextAlignment(.center) //??텍스트 정렬?
                .padding(.horizontal)
            
            HStack(spacing:10) {
                Label("\(Movie.ViewCount ?? 0)", image: "eye.fill") // 이미지와 텍스트 같이 보여주고 싶으면 Label
                    .font(.subheadline)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text(Movie.openDate)
                    .font(.subheadline)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
            }
            
            Text(Movie.description)
                .font(.body)
                .minimumScaleFactor(0.5)
                .padding(10)
            Spacer() // 빈칸채우기
            
            Link("링크로 이동", destination: URL(string: Movie.url)!)//<-- 하이퍼링크같은 느낌
            Link(destination: URL(string: Movie.url)!, label: { //<-- 커스텀을 쓰려면 이거 써야됨.
                TextTitle(title: Movie.title)
                    
            })
            Spacer()
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(Movie: MovieList.List.first!)
    }
}

struct TextTitle: View {
    var title: String
    var body: some View {
        Text("\(title) 이동")
            .font(.system(size: 20)) // 텍스트 사이즈 줄때
            .fontWeight(.semibold)
            .frame(width:230,height: 50)
            .background(Color(.systemPink))
            .foregroundColor(Color(.white))
            .cornerRadius(10)
    }
}
