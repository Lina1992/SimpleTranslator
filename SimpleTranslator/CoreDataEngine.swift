//
//  CoreDataEngine.swift
//  SimpleTranslator
//
//  Created by Галина  Муравьева on 20.12.2018.
//  Copyright © 2018 none. All rights reserved.
//

import Foundation
import CoreData

class CoreDataEngine {
    static let sharedInstance: CoreDataEngine = { CoreDataEngine() }()
    
    var moc = NSManagedObjectContext(concurrencyType: NSManagedObjectContextConcurrencyType.mainQueueConcurrencyType)
    
    init(){
        moc = CoreDataManager.sharedInstance
    }
    
    func createWord(word) -> Bool {
        <#function body#>
    }
}
