//
//  ContentView.swift
//  MyList
//
//  Created by Anthony Wasson on 4/12/23.
//

import SwiftUI

struct NotesListView: View {
    
    @ObservedObject var vm: NotesListViewModel
    
    var body: some View {
        
        NavigationView
        {
            ZStack
            {
                Color(.black)
                    .ignoresSafeArea()
                
                List()
                {
                    ForEach(vm.notes)
                    {
                        note in
                        
                        ZStack
                        {
                            //Color(.darkGray)
                              //  .ignoresSafeArea()
                            
                            Text(note.name)
                                .foregroundColor(Color(.white))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                        .padding()
                        .background(Color(.darkGray))
                        .cornerRadius(15)
                        
                    }
                    .listRowBackground(Color.black)
                }
                .scrollContentBackground(.hidden)
                
                //.navigationBarTitleDisplayMode(.inline)   figure out what this was for
                .toolbar
                 {
                    ToolbarItem(placement: .navigationBarLeading) {
                        VStack {
                            Text("**Notes**")
                              .font(.system(size: 30))
                              .foregroundColor(Color(.white))
                        }
                    }
                }
                 .navigationBarItems(
                     trailing:
                         Button(
                             action:
                                 {
                                     for i in 0..<10
                                     {
                                         vm.add("Note \(i)")
                                     }
                                 },
                             label: { smallButtonFormat("create stub", Color(.yellow)) }
                         )
                 )
            }
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
