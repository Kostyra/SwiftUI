

import SwiftUI

struct InfoView: View {
    @Binding var titleOn: Bool
    var body: some View {
        NavigationView {
            List(Post.postData) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
                
            }
            .navigationTitle(titleOn ? "" : "MK - 1")
            .listStyle(.plain)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(titleOn: .constant(false))        
    }
}
