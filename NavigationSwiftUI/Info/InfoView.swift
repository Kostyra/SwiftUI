

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(Post.postData) { post in
                InfoRow(post: post)
            }
            
            .navigationTitle("MK - 1")
            .listStyle(.plain)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
