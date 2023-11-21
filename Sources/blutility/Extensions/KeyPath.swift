//
//  KeyPath.swift
//
//
//  Created by Daniel Vela on 21/11/23.
//

extension KeyPath {
  var string: String {
    let myself = String(describing: self)
    let dropLeading =  "\\" + String(describing: Root.self) + "."
    let keyPath = "\(myself.dropFirst(dropLeading.count))"
    return keyPath
  }

  var type: Any.Type {
    return Value.self
  }
}
