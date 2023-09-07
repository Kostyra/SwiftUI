

import SwiftUI

struct InfoDetails: View {
    var post: Post
    var body: some View {
        ScrollView {
            post.image
                .resizable()
                .scaledToFit()
                .shadow(radius: 12)
                .padding(.top,16)
            VStack{
                Text(post.title)
                    .foregroundColor(.blue)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                +
                Text(" - ")
                +
                Text(post.title2)
                    .foregroundColor(.indigo)
                    .font (.system(size: 30))
                Divider()
                
                Text(post.description)
                    .font(.system(size: 30, design: .rounded))
            }
            
        }
    }
}

struct InfoDetails_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetails(post: Post.postData[0])
    }
}
