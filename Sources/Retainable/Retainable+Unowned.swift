//
//  Retainable+Unowned.swift
//
//
//  Created by Scott Yelvington on 11/25/23.
//

// MARK: – Unowned

public extension Retainable {
    
    /// n-input to void function
    func unowned<each Input>(
        _ function: @escaping InputVoidFunctionGetter<repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            let realFunction = function(self)
            
            realFunction(repeat each item)
        }
    }
    
    /// n-1 input to void function
    func unowned<Context, each Input>(
        capture: Context,
        _ function: @escaping InputVoidFunctionGetter<Context, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            function(self)(capture, repeat each item)
        }
    }
    
    /// n-2 input to void function
    func unowned<ContextA, ContextB, each Input>(
        capture: (ContextA, ContextB),
        _ function: @escaping InputVoidFunctionGetter<ContextA, ContextB, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            function(self)(capture.0, capture.1, repeat each item)
        }
    }
    
    /// n-3 input to void function
    func unowned<ContextA, ContextB, ContextC, each Input>(
        capture: (ContextA, ContextB, ContextC),
        _ function: @escaping InputVoidFunctionGetter<ContextA, ContextB, ContextC, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            function(self)(capture.0, capture.1, capture.2, repeat each item)
        }
    }
    
    /// n-4 input to void function
    func unowned<ContextA, ContextB, ContextC, ContextD, each Input>(
        capture: (ContextA, ContextB, ContextC, ContextD),
        _ function: @escaping InputVoidFunctionGetter<ContextA, ContextB, ContextC, ContextD, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            function(self)(capture.0, capture.1, capture.2, capture.3, repeat each item)
        }
    }
    
    /// n-5 input to void function
    func unowned<ContextA, ContextB, ContextC, ContextD, ContextE, each Input>(
        capture: (ContextA, ContextB, ContextC, ContextD, ContextE),
        _ function: @escaping InputVoidFunctionGetter<ContextA, ContextB, ContextC, ContextD, ContextE, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            function(self)(capture.0, capture.1, capture.2, capture.3, capture.4, repeat each item)
        }
    }
    
    /// n-input to output function
    func unowned<each Input, Output>(
        _ function: @escaping InputOutputFunctionGetter<repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<repeat each Input, Output> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            return function(self)(repeat each item)
        }
    }
    
    /// n-1 input to output function
    func unowned<Context, each Input, Output>(
        capture: Context,
        _ function: @escaping InputOutputFunctionGetter<Context, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<repeat each Input, Output> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            return function(self)(capture, repeat each item)
        }
    }
    
    /// n-2 input to output function
    func unowned<ContextA, ContextB, each Input, Output>(
        capture: (ContextA, ContextB),
        _ function: @escaping InputOutputFunctionGetter<ContextA, ContextB, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<repeat each Input, Output> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            return function(self)(capture.0, capture.1, repeat each item)
        }
    }
    
    /// n-3 input to output function
    func unowned<ContextA, ContextB, ContextC, each Input, Output>(
        capture: (ContextA, ContextB, ContextC),
        _ function: @escaping InputOutputFunctionGetter<ContextA, ContextB, ContextC, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<repeat each Input, Output> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            return function(self)(capture.0, capture.1, capture.2, repeat each item)
        }
    }
    
    /// n-4 input to output function
    func unowned<ContextA, ContextB, ContextC, ContextD, each Input, Output>(
        capture: (ContextA, ContextB, ContextC, ContextD),
        _ function: @escaping InputOutputFunctionGetter<ContextA, ContextB, ContextC, ContextD, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<repeat each Input, Output> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            return function(self)(capture.0, capture.1, capture.2, capture.3, repeat each item)
        }
    }
    
    /// n-5 input to output function
    func unowned<ContextA, ContextB, ContextC, ContextD, ContextE, each Input, Output>(
        capture: (ContextA, ContextB, ContextC, ContextD, ContextE),
        _ function: @escaping InputOutputFunctionGetter<ContextA, ContextB, ContextC, ContextD, ContextE, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<repeat each Input, Output> {
        {
            [unowned self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            return function(self)(capture.0, capture.1, capture.2, capture.3, capture.4, repeat each item)
        }
    }
    
    /// n-input to void keypath
    func unowned<each Input>(
        _ path: repeat ReferenceWritableKeyPath<Self, each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            [unowned self] (input: repeat each Input) in
            
            defer { deferring?() }
            
            repeat self[keyPath: each path] = each input
        }
    }
    
    /// n-input to void keypath
    func unowned<each Input>(
        _ path: repeat ReferenceWritableKeyPath<Self, each Input>,
        set value: repeat each Input,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidVoidFunction {
        {
            [unowned self] in
            
            defer { deferring?() }
            
            repeat self[keyPath: each path] = each value
        }
    }
    
    /// void to n-output keypath
    func unowned<each Output>(
        _ path: repeat KeyPath<Self, each Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOutputFunction<repeat each Output> {
        {
            [unowned self] in
            
            defer { deferring?() }
            
            return (repeat self[keyPath: each path])
        }
    }
}
