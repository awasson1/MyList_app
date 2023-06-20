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
    @Published var notes = [Course]()

    func fetch()
    {
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php")
        else
        {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url)
        {
            [weak self] data, _, error in
            guard let data = data, error == nil
            else
            {
                return
            }
            
            //convert to JSON
            do
            {
                let courses = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.main.async
                {
                    self?.notes = courses
                }
            }
            catch
            {
                print(error)
            }
        }
        task.resume()
    }
    
    func delete(at offsets: IndexSet)
    {
        notes.remove(atOffsets: offsets)
    }
    
    /*func add(_ n: String, _ d: String, _ i: UIImage)
    {
        let tmp = Note(name: n, description: d, image: i)
        
        self.notes.append(tmp)
        
        notes = notes.sorted(by: { $0.name < $1.name })
    }
    
    func edit(_ original: String, _ n: String, _ d: String, _ i: UIImage)
    {
        let tmp = Note(name: n, description: d, image: i)
        if let index = notes.firstIndex(of: tmp)
        {
            notes.remove(at: index)
        }
    }*/
}
