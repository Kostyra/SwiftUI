
import SwiftUI

struct Post:Identifiable {
    let id = UUID()
    let title:String
    let title2:String
    let description:String
    let image:Image
    
    static let postData = [Post(
        title: "Sub Zero",
        title2: "Ice",
        description: """
            More text, more text,
            More text, more text,
            More text, more text,
            More text, more text,
        """,
        image: Image("image1")),
       Post(
        title: "Scorpion",
        title2: "Fire",
        description: """
            litle text, more text,
            litle text, more text,
            litle text, more text,
            litle text, more text,
        """,
        image: Image("image2")),
        Post(
         title: "Reptail",
         title2: "Green",
         description: """
             Big text, more text,
             Big text, more text,
             Big text, more text,
             Big text, more text,
         """,
         image: Image("image3")),
    ]
}
