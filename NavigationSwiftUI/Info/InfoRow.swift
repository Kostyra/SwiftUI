//
//  InfoRow.swift
//  NavigationSwiftUI
//
//  Created by Юлия Филиппова on 06.09.2023.
//

import SwiftUI

struct InfoRow: View {
    
    var post:Post
    var body: some View {
        HStack {
            post.image
                .resizable()
                .frame(width:80, height: 80)
                .cornerRadius(40)
                .shadow(radius: 12)
                .padding(.leading, 12)
            VStack{
                Text(post.title)
                    .foregroundColor(.blue)
                    .font(.system(size: 30))
                Text(post.title2)
                    .foregroundColor(.green)
                    .font(.system(size: 35))
                    .padding(.horizontal, 1)
            }
            Spacer()
        }
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(post: Post.postData[0])
    }
}
