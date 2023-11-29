//
//  Retainable+Typealiases.swift
//  
//
//  Created by Scott Yelvington on 11/25/23.
//

// MARK: – Type Aliases

public extension Retainable {
    
    typealias InputVoidFunctionGetter<each Input> = (Self) -> (repeat each Input) -> Void
    typealias InputOutputFunctionGetter<each Input, Output> = (Self) -> (repeat each Input) -> Output
    typealias InputAsyncVoidFunctionGetter<each Input> = (Self) -> (repeat each Input) async -> Void
    typealias InputAsyncOutputFunctionGetter<each Input, Output> = (Self) -> (repeat each Input) async -> Output
    typealias InputThrowingVoidFunctionGetter<each Input> = (Self) -> (repeat each Input) throws -> Void
    typealias InputThrowingOutputFunctionGetter<each Input, Output> = (Self) -> (repeat each Input) throws -> Output
    typealias InputAsyncThrowingVoidFunctionGetter<each Input> = (Self) -> (repeat each Input) async throws -> Void
    typealias InputAsyncThrowingOutputFunctionGetter<each Input, Output> = (Self) -> (repeat each Input) async throws -> Output
    
    typealias VoidVoidFunction = () -> Void
    typealias InputVoidFunction<each Input> = (repeat each Input) -> Void
    typealias InputOutputFunction<each Input, Output> = (repeat each Input) -> Output
    typealias InputAsyncOutputFunction<each Input, Output> = (repeat each Input) async -> Output
    typealias VoidOutputFunction<each Output> = () -> (repeat each Output)
    typealias VoidOptionalOutputFunction<each Output> = () -> (repeat each Output)?
    typealias InputThrowingVoidFunction<each Input> = (repeat each Input) throws -> Void
    typealias InputThrowingOutputFunction<each Input, Output> = (repeat each Input) throws -> Output
    typealias InputAsyncThrowingVoidFunction<each Input> = (repeat each Input) async throws -> Void
    typealias InputAsyncThrowingOutputFunction<each Input, Output> = (repeat each Input) async throws -> Output
}
