//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

/// A custom log function to print the file, function, line calling the function with the message provided.
///
/// - Parameters:
///   - message: The message to be displayed.
///   - file: The file that calls the log function. It is obtained automatically, but you can put another filename if you need it.
///   - function: The function that calls the log function. It is obtained automatically, but you can put another function name if you need it.
///   - line: The line that calls the log function. It is obtained automatically, but you can put another line number if you need it.
public func log(_ message: String, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
  print("[\(file) : \(line)] – \(function) – \(message)")
}
