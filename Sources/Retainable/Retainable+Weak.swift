//
//  Retainable+Weak.swift
//
//
//  Created by Scott Yelvington on 11/25/23.
//

// MARK: – Weak

public extension Retainable {
    
    /// n-input to void function
    func weak<each Input>(
        _ function: @escaping InputVoidFunctionGetter<repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            let realFunction = function(self)
            
            realFunction(repeat each item)
        }
    }
    
    /// n-1 input to void function
    func weak<Context, each Input>(
        capture: Context,
        _ function: @escaping InputVoidFunctionGetter<Context, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            function(self)(capture, repeat each item)
        }
    }
    
    /// n-input to output function
    func weak<each Input, Output>(
        _ function: @escaping InputOutputFunctionGetter<repeat each Input, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<repeat each Input, Output> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(repeat each item)
        }
    }
    
    /// n-1 input to output function
    func weak<Context, each Input, Output>(
        capture: Context,
        _ function: @escaping InputOutputFunctionGetter<Context, repeat each Input, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<repeat each Input, Output> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(capture, repeat each item)
        }
    }
    
    /// n-input to optional output function
    func weak<each Input, Output>(
        _ function: @escaping InputOutputFunctionGetter<repeat each Input, Output>,
        default defaultValue: Output? = nil,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<repeat each Input, Output?> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(repeat each item)
        }
    }
    
    /// n-1 input to optional output function
    func weak<Context, each Input, Output>(
        capture: Context,
        _ function: @escaping InputOutputFunctionGetter<Context, repeat each Input, Output>,
        default defaultValue: Output? = nil,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<repeat each Input, Output?> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(capture, repeat each item)
        }
    }
    
    /// n-input to void keypath
    func weak<each Input>(
        _ path: repeat ReferenceWritableKeyPath<Self, each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<repeat each Input> {
        {
            [weak self] (input: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            repeat self[keyPath: each path] = each input
        }
    }
    
    /// n-input to void keypath
    func weak<each Input>(
        _ path: repeat ReferenceWritableKeyPath<Self, each Input>,
        set value: repeat each Input,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidVoidFunction {
        {
            [weak self] in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            repeat self[keyPath: each path] = each value
        }
    }
    
    /// void to n-output keypath
    func weak<each Output>(
        _ path: repeat KeyPath<Self, each Output>,
        default defaultValue: repeat each Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOutputFunction<repeat each Output> {
        {
            [weak self] in
            
            defer { deferring?() }
            
            guard let self else { return (repeat each defaultValue) }
            
            return (repeat self[keyPath: each path])
        }
    }
    
    /// void to n-optional-output keypath
    func weak<each Output>(
        _ path: repeat KeyPath<Self, each Output>,
        default defaultValue: (repeat each Output)? = nil,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOptionalOutputFunction<repeat each Output> {
        {
            [weak self] in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return (repeat self[keyPath: each path])
        }
    }
}
