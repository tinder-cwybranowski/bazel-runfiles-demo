//
//  AssertSnapshot.swift
//  TestKit
//
//  Created by Connor Wybranowski on 3/3/22.
//

import Foundation
import PathKit
import SnapshotTesting
import XCTest

public var isRecording: Bool {
    get {
        SnapshotTesting.isRecording
    }
    set {
        SnapshotTesting.isRecording = newValue
    }
}

public func assertSnapshot<Value, Format>(
    matching value: @autoclosure () throws -> Value,
    as snapshotting: Snapshotting<Value, Format>,
    named name: String? = nil,
    record recording: Bool = false,
    timeout: TimeInterval = 5,
    file: StaticString = #file,
    testName: String = #function,
    line: UInt = #line
) {
    guard let snapshotDirectory: String = ProcessInfo.processInfo.environment["SNAPSHOT_DIRECTORY"] else {
        XCTFail("Missing value for SNAPSHOT_DIRECTORY")
        return
    }

    let fileURL = URL(fileURLWithPath: "\(file)", isDirectory: false)
    let fileName = fileURL.deletingPathExtension().lastPathComponent
    let snapshotDirectoryPath: Path = .init(snapshotDirectory) + "__main__/DemoLibrary/Data/"

    let failure = verifySnapshot(
      matching: try value(),
      as: snapshotting,
      named: name,
      record: recording,
      snapshotDirectory: snapshotDirectoryPath.absolute().string,
      timeout: timeout,
      file: file,
      testName: "\(fileName)_\(testName)"
    )
    guard let message = failure else { return }
    XCTFail(message, file: file, line: line)
}
