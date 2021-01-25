//
//  ContentView.swift
//  nightWatcherApp
//
//  Created by Kurtis Rios on 1/25/21.
//

import SwiftUI

let nightlyTasks = [
	"Check all windows","Check that the safe is locked","Check all doors",
	"Check the mailbox","Inspect the security cameras","Clear ice from sidewalks",
	"Document \"strange and unusual\" occurrences"
]

struct ContentView : View {
	var body : some View{
		HStack {
			VStack {
				VStack(alignment: .leading){
					//MARK: Nightly Tasks
					Group{
						HStack {
							Text(Image(systemName: "moon.circle"))
								.foregroundColor(Color.orange)
							Text("Nightly Tasks")
								.font(.title3)
								.foregroundColor(Color.orange)
								.bold()
								.textCase(.uppercase)
						}
						List(nightlyTasks, id: \.self, rowContent: {taskName in
							Text(taskName)
						})
					}
					//MARK: Weekly Tasks
					Group{
						Divider()
						HStack {
							Text(Image(systemName: "moon.circle"))
								.foregroundColor(Color.orange)
							Text("Weekly Tasks")
								.font(.title3)
								.foregroundColor(Color.orange)
								.bold()
								.textCase(.uppercase)
						}
						Text("Check inside all vacant rooms")
						Text("Walk perimeter of the property")
					}
					//MARK: Monthly Tasks
					Group{
						Divider()
						HStack{
							Text(Image(systemName: "moon.circle"))
								.foregroundColor(Color.orange)
							Text("Weekly Tasks")
								.font(.title3)
								.foregroundColor(Color.orange)
								.bold()
								.textCase(.uppercase)
						}
						Text("Test security alarm")
						Text("Test motion detectors")
						Text("Test smoke alarms")
					}
					
					
				}
				Spacer()
			}
			.padding(.leading)
			Spacer()
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		VStack{
			ContentView()
		}
	}
}
