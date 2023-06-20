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
    func smallButtonFormat(_ bText: String, _ bgColor: Color) -> some View
    {
        Text(bText)
            .font(.system(size: 16))
            .padding(4)
            .foregroundColor(Color(.black))
            .background(
                bgColor
                    .cornerRadius(5)
            )
    }
}
