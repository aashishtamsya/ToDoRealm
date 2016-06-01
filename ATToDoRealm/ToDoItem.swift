//
//  ToDoItem.swift
//  ATToDoRealm
//
//  Created by Aashish Tamsya on 01/06/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

import Realm

class ToDoItem : RLMObject {
    dynamic var name = ""
    dynamic var finished = false
}
