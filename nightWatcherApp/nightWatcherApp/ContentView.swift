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

let weeklyTasks = [
	"Test security alarm", "Test motion detectors", "Test smoke alarms"
]

let monthlyTasks = [
	"Check inside all vacant rooms", "Walk perimeter of the property"
]

struct ContentView : View {
	var body : some View{
		NavigationView {
			List{
				//MARK: Nightly Tasks
				Section(header: taskSectionHeader(timeframe: "Nightly", imageName: "moon.circle")) {
					ForEach(nightlyTasks, id: \.self, content: {taskName in Text(taskName)})
				}
				
				//MARK: Weekly Tasks
				Section(header: taskSectionHeader(timeframe: "Weekly", imageName: "moon.circle")) {
					ForEach(weeklyTasks, id: \.self, content: {taskName in Text(taskName)})
				}
				
				//MARK: Monthly Tasks
				Section(header: taskSectionHeader(timeframe: "Monthly", imageName: "moon.circle")) {
					ForEach(monthlyTasks, id: \.self, content: {taskName in Text(taskName)})
				}
			}
			.listStyle(GroupedListStyle())
		}
	}
}

struct taskSectionHeader: View {
	let timeframe : String
	let imageName : String
	var body: some View {
		HStack {
			Image(systemName: imageName)
				.foregroundColor(Color.orange)
			Text(timeframe + " Tasks")
				.font(.title3)
				.foregroundColor(Color.orange)
				.bold()
				.textCase(.uppercase)
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


