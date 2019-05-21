//
//  File.swift
//  W04D2
//
//  Created by Sam Meech-Ward on 2019-05-21.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import Foundation

enum StackError: Error {
  case poppingEmptyStack
}

final class Stack<T> {
  
  // public and open
  
//  private, public, fileprivate, open, internal
  
  private var things: [T] = []
  
  func push(_ item: T) {
    things.append(item)
  }
  
  func pop() throws -> T {
    guard !things.isEmpty else {
      // handle the error
      throw StackError.poppingEmptyStack
    }
    return things.removeLast()
  }
}
