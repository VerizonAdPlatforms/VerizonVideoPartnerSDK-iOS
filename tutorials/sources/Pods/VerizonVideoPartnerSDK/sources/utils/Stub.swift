//  Copyright 2018, Oath Inc.
//  Licensed under the terms of the MIT License. See LICENSE.md file in project root for terms.
import Foundation

/// Simply creates empty closure.
public func nop<T>() -> Action<T> {
    return { _ in }
}

func nop<T>(t: T) { //swiftlint:disable:this variable_name
    
}

func nop() {
    
}

/// Simply creates empty closure 
/// that passes default value back.
public func nop<T, U>(defaultValue: U) -> ((T) -> U) {
    return { _ in return defaultValue }
}

/// Creates closure that will fail
/// if called. Runtime safe check.
public func unimplemented<T>() -> Action<T> {
    return unimplemented("function")
}

/// Creates closure with description 
/// that will fail if called. Runtime safe check.
public func unimplemented<T>(_ description: String) -> Action<T> {
    return { argument in
        fatalError("Calling unimplemented \(description): \(argument)")
    }
}
