//
//  Retainable+Strong+Async.swift
//
//
//  Created by Scott Yelvington on 11/28/23.
//

// MARK: – Strong + Async

public extension Retainable {
    /// n-input to void function
    func strong<each Input>(
        _ function: @escaping InputAsyncVoidFunctionGetter<repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            let realFunction = function(self)
            
            Task {
                
                await realFunction(repeat each item)
            }
        }
    }
    /// n-1 input to void function
    func strong<Context, each Input>(
        capture: Context,
        _ function: @escaping InputAsyncVoidFunctionGetter<Context, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            let realFunction = function(self)
            
            Task {
                
                await realFunction(capture, repeat each item)
            }
        }
    }
    /// n-2 input to void function
    func strong<ContextA, ContextB, each Input>(
        capture: (ContextA, ContextB),
        _ function: @escaping InputAsyncVoidFunctionGetter<ContextA, ContextB, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            let realFunction = function(self)
            
            Task {
                
                await realFunction(capture.0, capture.1, repeat each item)
            }
        }
    }
    /// n-3 input to void function
    func strong<ContextA, ContextB, ContextC, each Input>(
        capture: (ContextA, ContextB, ContextC),
        _ function: @escaping InputAsyncVoidFunctionGetter<ContextA, ContextB, ContextC, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            let realFunction = function(self)
            
            Task {
                
                await realFunction(capture.0, capture.1, capture.2, repeat each item)
            }
        }
    }
    /// n-4 input to void function
    func strong<ContextA, ContextB, ContextC, ContextD, each Input>(
        capture: (ContextA, ContextB, ContextC, ContextD),
        _ function: @escaping InputAsyncVoidFunctionGetter<ContextA, ContextB, ContextC, ContextD, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            let realFunction = function(self)
            
            Task {
                
                await realFunction(capture.0, capture.1, capture.2, capture.3, repeat each item)
            }
        }
    }
    /// n-5 input to void function
    func strong<ContextA, ContextB, ContextC, ContextD, ContextE, each Input>(
        capture: (ContextA, ContextB, ContextC, ContextD, ContextE),
        _ function: @escaping InputAsyncVoidFunctionGetter<ContextA, ContextB, ContextC, ContextD, ContextE, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            let realFunction = function(self)
            
            Task {
                
                await realFunction(capture.0, capture.1, capture.2, capture.3, capture.4, repeat each item)
            }
        }
    }
    /// n-input to output function
    func strong<each Input, Output>(
        _ function: @escaping InputAsyncOutputFunctionGetter<repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return await function(self)(repeat each item)
        }
    }
    /// n-1 input to output function
    func strong<Context, each Input, Output>(
        capture: Context,
        _ function: @escaping InputAsyncOutputFunctionGetter<Context, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return await function(self)(capture, repeat each item)
        }
    }
    /// n-2 input to output function
    func strong<ContextA, ContextB, each Input, Output>(
        capture: (ContextA, ContextB),
        _ function: @escaping InputAsyncOutputFunctionGetter<ContextA, ContextB, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return await function(self)(capture.0, capture.1, repeat each item)
        }
    }
    /// n-3 input to output function
    func strong<ContextA, ContextB, ContextC, each Input, Output>(
        capture: (ContextA, ContextB, ContextC),
        _ function: @escaping InputAsyncOutputFunctionGetter<ContextA, ContextB, ContextC, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return await function(self)(capture.0, capture.1, capture.2, repeat each item)
        }
    }
    /// n-4 input to output function
    func strong<ContextA, ContextB, ContextC, ContextD, each Input, Output>(
        capture: (ContextA, ContextB, ContextC, ContextD),
        _ function: @escaping InputAsyncOutputFunctionGetter<ContextA, ContextB, ContextC, ContextD, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return await function(self)(capture.0, capture.1, capture.2, capture.3, repeat each item)
        }
    }
    /// n-5 input to output function
    func strong<ContextA, ContextB, ContextC, ContextD, ContextE, each Input, Output>(
        capture: (ContextA, ContextB, ContextC, ContextD, ContextE),
        _ function: @escaping InputAsyncOutputFunctionGetter<ContextA, ContextB, ContextC, ContextD, ContextE, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return await function(self)(capture.0, capture.1, capture.2, capture.3, capture.4, repeat each item)
        }
    }
}
