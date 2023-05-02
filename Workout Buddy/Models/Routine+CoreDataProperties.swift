//
//  Routine+CoreDataProperties.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-05-01.
//
//

import Foundation
import CoreData


extension Routine {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Routine> {
        return NSFetchRequest<Routine>(entityName: "Routine")
    }

    @NSManaged public var name: String?

}

extension Routine : Identifiable {

}
