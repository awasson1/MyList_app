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
    
    @StateObject var vm: NotesListViewModel

    var body: some View {
        
        NavigationView
        {
            List
            {
                ForEach(vm.notes, id: \.self)
                {
                    course in
                    HStack
                    {
                        URLImage(urlString: course.image)
                        
                        Text(course.name)
                            .bold()
                    }
                    .padding(3)
                }
            }
            .navigationTitle("Courses")
            .onAppear
            {
                vm.fetch()
            }
        }
//            Form
//            {
//                Section
//                {
//                    ForEach(vm.notes, id: \.self)
//                    {
//                        item in
//                        NavigationLink(destination: NoteDetailedView(n: item.name))
//                        {
//                            ZStack
//                            {
//                                VStack
//                                {
//                                    //note title
//                                    Text(item.name)
//                                        .font(.system(size: 24))
//                                        .foregroundColor(Color(.black))
//                                        .frame(maxWidth: .infinity, alignment: .leading)
//
//                                    HStack
//                                    {
//                                        //descriptive image
//                                        URLImage(urlString: item.image)
//
//                                        /*Image(uiImage: item.image)
//                                            .resizable()
//                                            .frame(width: 80, height: 50)
//                                            .scaledToFit()*/
//
//                                        //description
//                                        /* commented out for testing purposes
//                                         Text(item.description)
//                                            .foregroundColor(Color(.black))
//                                            .frame(maxWidth: .infinity, alignment: .leading)
//                                         */
//                                    }
//                                }
//                            }
////                            .padding()
////                            .background(Color(.darkGray))
////                            .cornerRadius(15)
//                        }
//                    }
//                }
//            }
//            .toolbar
//             {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    VStack {
//                        Text("**Notes**")
//                          .font(.system(size: 30))
//                          .foregroundColor(Color(.black))
//                    }
//                }
//            }
//             /* stubs hidden for now
//
//              .navigationBarItems(
//                 trailing:
//
//                    //This creates stubs for demos
//                     Button(
//                         action:
//                             {
//                                 vm.add("Example note", "This is a short description", UIImage(named: "default")!)
//                             },
//                         label: { smallButtonFormat("create stub", Color(.yellow)) }
//                     )
//             )
//            */
    }
}
