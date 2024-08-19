//
//  ViewController.swift
//  LearnUIKitV3
//
//  Created by Joshua Wenata Sunarto on 16/08/24.
//

import UIKit
import EventKit

class ViewController: UIViewController {
    @IBOutlet var addToCalButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let eventStore = EKEventStore()

        eventStore.requestAccess(to: .event) { (granted, error) in
            if granted {
                print("Access granted")
            } else {
                if let error = error {
                    print("Error requesting access: \(error)")
                } else {
                    print("Access denied")
                }
            }
        }
        
    }
    
    @IBAction func didTapAddToCalButton(_ sender: Any) {
        let title = "My Event"
        let description = "This is a sample event"
        let startDate = Date()
        let endDate = startDate.addingTimeInterval(3600)
        
        addEventToCalendar(title: title, description: description, startDate: startDate, endDate: endDate)
    }

    func addEventToCalendar(title: String, description: String?, startDate: Date, endDate: Date) {
        let eventStore = EKEventStore()
        let event = EKEvent(eventStore: eventStore)
        
        event.title = title
        event.notes = description
        event.startDate = startDate
        event.endDate = endDate
        event.calendar = eventStore.defaultCalendarForNewEvents
        
        do {
            try eventStore.save(event, span: .thisEvent)
            print("Event added successfully")
        } catch let error {
            print("Failed to save event with error: \(error)")
        }
    }

}

