//
//  NotesListView.swift
//  MyList
//  Contains the stacks necessary to display the list of items
//  Also includes the links to redirect the user to a detailed view of list items
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
                //Background color
                Color(.black)
                    .ignoresSafeArea()
                
                List()
                {
                    //Render list based on view model data
                    ForEach(vm.notes)
                    {
                        note in
                        
                        //Link to detailed view where users can read the full note
                        NavigationLink(destination: NoteDetailedView(vm: vm, n: note.name, d: note.description, i: note.image))
                        {
                            ZStack
                            {
                                VStack
                                {
                                    Text(note.name)
                                        .font(.system(size: 24))
                                        .foregroundColor(Color(.white))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    HStack
                                    {
                                        Image(uiImage: note.image)
                                            .resizable()
                                            .frame(width: 80, height: 50)
                                            .scaledToFit()
                                        
                                        Text(note.description)
                                            .foregroundColor(Color(.white))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                            }
                            .padding()
                            .background(Color(.darkGray))
                            .cornerRadius(15)
                        }
                    }
                    .listRowBackground(Color.black)
                }
                .scrollContentBackground(.hidden)

                //custom title bar
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
                        
                        //This creates stubs for demos
                         Button(
                             action:
                                 {
                                     vm.add("Example note", "This is a short description", UIImage(named: "default")!)
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
