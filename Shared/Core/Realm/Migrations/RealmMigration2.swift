//
//  RealmMigration2.swift
//  TemplateApp
//
//  Created by Andrei Terentiev on 4/2/22.
//

import Foundation
import RealmSwift

struct RealmMigration2: RealmMigrationProtocol {
  var version: Int {
    return 2
  }

  // swiftlint:disable all
  var migrationBlock: ((_ migration: Migration, _ oldSchemaVersion: UInt64) -> Void) = {
    migration, oldSchemaVersion in
    // insert migration code here
  }
  // swiftlint:enable all
}
