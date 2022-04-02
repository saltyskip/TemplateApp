//
//  RealmService.swift
//  TemplateApp
//
//  Created by Andrei Terentiev on 4/2/22.
//

import Foundation
import RealmSwift

protocol RealmServiceProtocol {
  static var kRealmVersion: UInt64 { get }
  func setupRealm()
}

class RealmService: RealmServiceProtocol {
  static var kRealmVersion: UInt64 = 1

  func setupRealm() {
    let realmPathURL = Realm.Configuration.defaultConfiguration.fileURL!
    // Realm migration
    let config = Realm.Configuration(
      fileURL: realmPathURL,
      // Set the new schema version. This must be greater than the previously used
      // version (if you've never set a schema version before, the version is 0).
      schemaVersion: RealmService.kRealmVersion,
      // Set the block which will be called automatically when opening a Realm with
      // a schema version lower than the one set above
      migrationBlock: RealmService.generateMigrationBlock,
      shouldCompactOnLaunch: { totalBytes, usedBytes in
        // totalBytes refers to the size of the file on disk in bytes (data + free space)
        // usedBytes refers to the number of bytes used by data in the file

        // Compact if the file is over 100MB in size and less than 50% 'used'
        let oneMB = 1 * 1024 * 1024
        print("totalbytes \(totalBytes)")
        print("usedbytes \(usedBytes)")
        if (totalBytes > oneMB) && (Double(usedBytes) / Double(totalBytes)) < 0.7 {
          print("will compact realm")
        }
        return (totalBytes > oneMB) && (Double(usedBytes) / Double(totalBytes)) < 0.7
      })

    // Tell Realm to use this new configuration object for the default Realm
    Realm.Configuration.defaultConfiguration = config
    Realm.Configuration.defaultConfiguration.maximumNumberOfActiveVersions = 150
    debugPrint("Realm file: ", config.fileURL ?? "No Realm file created")
  }

  static func generateMigrationBlock(_ migration: Migration, oldSchemaVersion: UInt64) {

    RealmMigrationFactory.create().forEach { mig in
      if oldSchemaVersion < mig.version {
        mig.migrationBlock(migration, oldSchemaVersion)
      }
    }
  }
}
