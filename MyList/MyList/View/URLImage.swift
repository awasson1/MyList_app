//
//  URLImage.swift
//  MyList
//
//  Created by Anthony Wasson on 6/19/23.
//

import SwiftUI

struct URLImage: View {
    
    let urlString: String
    
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data)
        {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 70)
                .background(Color.gray)
        }
        else
        {
            Image("")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 70)
                .background(Color.gray)
                .onAppear
                {
                    fetchData()
                }
        }
    }
    
    private func fetchData()
    {
        guard let url = URL(string: urlString)
        else
        {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url)
        {
            data, _, _ in
            self.data = data
        }
        task.resume()
    }
}
