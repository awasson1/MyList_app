//
//  NoteDetailedView.swift
//  MyList
//
//  Created by Anthony Wasson on 4/13/23.
//

import SwiftUI

struct NoteDetailedView: View {
    
    var n: String
    //var d: String
    //var i: UIImage
    
    var body: some View {
        Text(n)
            .font(.system(size: 36))
            .foregroundColor(Color(.black))
            .frame(maxWidth: .infinity, alignment: .leading)
        
        /*
        Image(uiImage: i)
            .resizable()
            .frame(width: 240, height: 150)
            .scaledToFit()
        
        Text(d)
            .foregroundColor(Color(.black))
            .frame(maxWidth: .infinity, alignment: .leading)*/
        
        Spacer()
        
        Text("Contents of the note go here!")
        
        Spacer()
    }
}
