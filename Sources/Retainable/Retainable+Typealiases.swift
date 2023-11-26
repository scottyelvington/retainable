//
//  Retainable+Typealiases.swift
//  
//
//  Created by Scott Yelvington on 11/25/23.
//

import Foundation

// MARK: – Type Aliases

public extension Retainable {
    
    typealias InputVoidFunctionGetter<each Input> = (Self) -> (repeat each Input) -> Void
    typealias InputOutputFunctionGetter<each Input, Output> = (Self) -> (repeat each Input) -> Output
    
    typealias VoidVoidFunction = () -> Void
    typealias InputVoidFunction<each Input> = (repeat each Input) -> Void
    typealias InputOutputFunction<each Input, Output> = (repeat each Input) -> Output
    typealias VoidOutputFunction<each Output> = () -> (repeat each Output)
    typealias VoidOptionalOutputFunction<each Output> = () -> (repeat each Output)?
}
