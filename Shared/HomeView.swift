//
//  HomeView.swift
//  HomeView
//
//  Created by Vo Thanh Sang on 11/09/2021.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchtxt = ""
    @State var index = 0

    var body: some View {
        
        VStack {
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color("Neutral3"))
                
                TextField("Search note", text: $searchtxt)
                    .foregroundColor(Color("Neutral3"))
                    
            }
            .padding(.horizontal)
            .frame(maxWidth: UIScreen.main.bounds.width - 56, maxHeight: 44)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            
            HStack(spacing: 20) {
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    HStack(spacing: 0) {
                        
                        Rectangle()
                            .fill(Color("Yellow"))
                            .frame(maxWidth: 12, maxHeight: 196)

                        Image("Allnote")
                            .resizable()
                        
                    }
                    .frame(maxWidth: 149, maxHeight: 196)
                    
                    Text("All note (18)")
                        .fontWeight(.regular)
                }
                    
                VStack(alignment: .leading, spacing: 8) {
                    
                    HStack(spacing: 0) {
                        
                        Rectangle()
                            .fill(Color("Primary"))
                            .frame(maxWidth: 12, maxHeight: 196)

                        Image("Notebook")
                            .resizable()
                            .clipShape(CustomCorners(corners: [.topRight, .bottomRight], radius: 10))
                    }
                    .frame(maxWidth: 149, maxHeight: 196)
                    
                    Text("All note (18)")
                        .fontWeight(.regular)

                }
            }
            .padding(.top, 16)
            
            VStack(alignment: .leading, spacing: 8) {
                
                Text("Recent")
                    .font(.title)
                    .padding(.leading)
                
                List {
                    
                    VStack(alignment: .leading, spacing: 16) {
                        
                        HStack(spacing: 16) {
                            
                            Rectangle()
                                .fill(Color("Yellow"))
                                .frame(maxWidth: 8, maxHeight: 48)
                                .clipShape(CustomCorners(corners: [.topRight, .bottomRight], radius: 10))
                            
                            VStack(alignment: .leading, spacing: 0) {
                                Text("Shopping List")
                                Text("May, 29")
                                    .font(.caption)
                                    .fontWeight(.thin)
                            }
                        }
                        
                    }
                    
                }
                .listStyle(.plain)
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "plus")
                            .foregroundColor(Color.white)
                            .frame(width: 44, height: 44)
                            .background(Color("Primary"))
                            .clipShape(Circle())
                            .shadow(color: Color("Primary").opacity(0.8), radius: 20, x: 0, y: 0)
                            .padding()
                            
                    }

                }
                
                HStack {
                    
                }
            }
            
            
            TabBarView(index: $index)

        }
        .ignoresSafeArea(.all, edges: .bottom)

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct TabBarView: View {
    
    @Binding var index : Int
    let edge = UIApplication.shared.windows.first?.safeAreaInsets.bottom

    var body: some View {
        
        VStack(spacing: 0) {
            
            HStack {
                
                Button {
                    withAnimation {
                        self.index = 0
                    }
                } label: {
                    HStack {
                        
                        Image(systemName: "leaf.fill")
                            .foregroundColor(self.index == 0 ? Color.white : Color("Neutral3"))

                        if index == 0 {
                            Text("Home")
                                .foregroundColor(Color.white)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(self.index == 0 ? Color("Primary") : Color.clear)
                    .cornerRadius(10)
                }
                
                Spacer(minLength: 0)

                Button {
                    withAnimation {
                        self.index = 1
                    }
                } label: {
                    HStack {
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(self.index == 1 ? Color.white : Color("Neutral3"))
                        
                        if index == 1 {
                            Text("Search")
                                .foregroundColor(Color.white)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(self.index == 1 ? Color("Primary") : Color.clear)
                    .cornerRadius(10)
                }
                
                Spacer(minLength: 0)

                Button {
                    withAnimation {
                        self.index = 2
                    }
                } label: {
                    HStack {
                        
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(self.index == 2 ? Color.white : Color("Neutral3"))
                        
                        if index == 2 {
                            Text("Search")
                                .foregroundColor(Color.white)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(self.index == 2 ? Color("Primary") : Color.clear)
                    .cornerRadius(10)
                }
                
                Spacer(minLength: 0)

                Button {
                    withAnimation {
                        self.index = 3
                    }
                } label: {
                    HStack {
                        
                        Image(systemName: "person.fill")
                            .foregroundColor(self.index == 3 ? Color.white : Color("Neutral3"))
                        
                        if index == 3 {
                            Text("Search")
                                .foregroundColor(Color.white)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(self.index == 3 ? Color("Primary") : Color.clear)
                    .cornerRadius(10)
                }

            }
            .padding([.leading, .trailing])
            .padding(.top, 16)
            .padding(.bottom, edge)
            .background(Color.white)
            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 5)
        }

        
    }
}
