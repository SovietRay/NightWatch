//
//  ContentView.swift
//  NightWatch
//
//  Created by Mikhail Klishevich on 26.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    //MARK: Nightly Tasks
                    //TODO: Need more minerals
                    //FIXME: Fix at all
                    Group {
                        HStack {
                            Text(Image(systemName: "moon.stars"))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Nightly Tasks")
                                .underline()
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }
                        Text("Check all windows")
                        Text("Check all doors")
                        Text("Document \"Strange and unusual\" occurrences")
                        Text("Check all windows")
                        Text("Check all doors")
                        Text("Document \"Strange and unusual\" occurrences")
                        Divider();
                    }
                    //MARK: Weekly Tasks
                    Group {
                        HStack {
                            Text(Image(systemName: "sunset"))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Weekly Tasks")
                                .underline()
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .padding(.top)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }
                        Text("Check all windows")
                        Text("Check all doors")
                        Text("Document \"Strange and unusual\" occurrences")
                        Text("Check all windows")
                        Text("Check all doors")
                        Text("Document \"Strange and unusual\" occurrences")
                        Divider();
                    }
                    //MARK: Monthly Tasks
                    Group {
                        HStack {
                            Text(Image(systemName: "calendar"))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Monthly Tasks")
                                .underline()
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .padding(.top)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }
                        Text("Check all windows")
                        Text("Check all doors")
                        Text("Document \"Strange and unusual\" occurrences")
                        Text("Check all windows")
                        Text("Check all doors")
                        Text("Document \"Strange and unusual\" occurrences")
                    }
                }
                Spacer()
            }
            .padding(.all)
            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
