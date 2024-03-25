//
//  Task.swift
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local restuarant",
                 description: "What are you ordering today?"),
            Task(title: "Your favorite monumnet",
                 description: "What is your favorite DC monument?"),
            Task(title: "Your favorite class on campus",
                 description: "How long does it take to get there?")
        ]
    }
}
