//
//  NoteListViewModel.swift
//  MyList
//
//  Created by Anthony Wasson on 4/13/23.
//

import Foundation
import UIKit

class NotesListViewModel: ObservableObject
{
    @Published var notes = [Note]()
    
//    init()
//    {
//        for var i in 0..<15
//        {
//            add("Note \(i)")
//        }
//
//        notes = notes.sorted(by: { $0.name < $1.name })
//        
//    }
    
    func delete(at offsets: IndexSet)
    {
        notes.remove(atOffsets: offsets)
    }
    
    func add(_ n: String/*, _ d: String, _ i: UIImage*/)
    {
        let tmp = Note(name: n/*, description: d, image: i*/)
        
        self.notes.append(tmp)
        
        notes = notes.sorted(by: { $0.name < $1.name })
    }
    
    func edit(_ original: String, _ n: String, _ d: String, _ i: UIImage)
    {
        let tmp = Note(name: n/*, description: d, image: i*/)
        if let index = notes.firstIndex(of: tmp)
        {
            notes.remove(at: index)
        }
    }
}
