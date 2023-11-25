//
//  Retainable+Typealiases.swift
//  
//
//  Created by Scott Yelvington on 11/25/23.
//

import Foundation

// MARK: – Type Aliases

public extension Retainable {
    
    typealias VoidVoidFunctionGetter = (Self) -> () -> Void
    typealias InputVoidFunctionGetter<Input> = (Self) -> (Input) -> Void
    typealias InputInputVoidFunctionGetter<InputA, InputB> = (Self) -> (InputA, InputB) -> Void
    typealias InputInputInputVoidFunctionGetter<InputA, InputB, InputC> = (Self) -> (InputA, InputB, InputC) -> Void
    typealias InputInputInputInputVoidFunctionGetter<InputA, InputB, InputC, InputD> = (Self) -> (InputA, InputB, InputC, InputD) -> Void
    typealias VoidOutputFunctionGetter<Output> = (Self) -> () -> Output
    typealias InputOutputFunctionGetter<Input, Output> = (Self) -> (Input) -> Output
    typealias InputInputOutputFunctionGetter<InputA, InputB, Output> = (Self) -> (InputA, InputB) -> Output
    typealias InputInputInputOutputFunctionGetter<InputA, InputB, InputC, Output> = (Self) -> (InputA, InputB, InputC) -> Output
    typealias InputInputInputInputOutputFunctionGetter<InputA, InputB, InputC, InputD, Output> = (Self) -> (InputA, InputB, InputC, InputD) -> Output
    
    typealias VoidVoidFunction = () -> Void
    typealias InputVoidFunction<Input> = (Input) -> Void
    typealias InputInputVoidFunction<InputA, InputB> = (InputA, InputB) -> Void
    typealias InputInputInputVoidFunction<InputA, InputB, InputC> = (InputA, InputB, InputC) -> Void
    typealias InputInputInputInputVoidFunction<InputA, InputB, InputC, InputD> = (InputA, InputB, InputC, InputD) -> Void
    typealias VoidOutputFunction<Output> = () -> Output
    typealias InputOutputFunction<Input, Output> = (Input) -> Output
    typealias InputInputOutputFunction<InputA, InputB, Output> = (InputA, InputB) -> Output
    typealias InputInputInputOutputFunction<InputA, InputB, InputC, Output> = (InputA, InputB, InputC) -> Output
    typealias InputInputInputInputOutputFunction<InputA, InputB, InputC, InputD, Output> = (InputA, InputB, InputC, InputD) -> Output
}
