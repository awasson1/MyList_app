//
//  MyListApp.swift
//  MyList
//
//  Created by Anthony Wasson on 4/12/23.
//

import SwiftUI

@main
struct MyListApp: App {
    var body: some Scene {
        WindowGroup {
            NotesListView(vm: NotesListViewModel())
        }
    }
}
