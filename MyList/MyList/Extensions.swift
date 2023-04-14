//
//  Extensions.swift
//  MyList
//
//  Created by Anthony Wasson on 4/13/23.
//

import Foundation
import SwiftUI

extension View
{
    func labelFormat(_ bText: String, _ bgColor: Color) -> some View
    {
        Text(bText)
            .fontWeight(.bold)
            .font(.system(size: 24))
            .padding()
            .foregroundColor(Color(.green))
            .background(
                bgColor
                    .cornerRadius(10)
            )
    }
    
    func centerHorizontal() -> some View
    {
        HStack
        {
            Spacer()
            self
            Spacer()
        }
    }
    
    func notesTitleBar() -> some View
    {
        self
            .navigationBarTitleDisplayMode(.inline)
                .toolbar
                {
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        HStack
                        {
                            Text("Notes")
                                .font(.largeTitle)
                                .foregroundColor(Color("Yellow"))
                        }
                    }
                }
    }
}
