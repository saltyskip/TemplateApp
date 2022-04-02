//
//  RealmMigrationFactory.swift
//  TemplateApp
//
//  Created by Andrei Terentiev on 4/2/22.
//

import Foundation
import RealmSwift

protocol RealmMigrationProtocol {
  // if oldSchemaVersion < version, migrationBlock will be performed
  var version: Int { get }
  var migrationBlock: ((_ migration: Migration, _ oldSchemaVersion: UInt64) -> Void) { get }
}

struct RealmMigrationFactory {
  static func create() -> [RealmMigrationProtocol] {
    return [
      RealmMigration2()
      // add more migrations here
    ]
  }
}
