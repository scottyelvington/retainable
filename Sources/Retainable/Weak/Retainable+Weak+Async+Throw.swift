//
//  Retainable+Weak+Async+Throw.swift
//  
//
//  Created by Scott Yelvington on 11/28/23.
//

// MARK: – Weak + Async + Throw

public extension Retainable {
    
    /// n-input to void function
    func weak<each Input>(
        _ function: @escaping InputAsyncThrowingVoidFunctionGetter<repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingVoidFunction<repeat each Input> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            try await function(self)(repeat each item)
        }
    }
    
    /// n-1 input to void function
    func weak<Context, each Input>(
        capture: Context,
        _ function: @escaping InputAsyncThrowingVoidFunctionGetter<Context, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingVoidFunction<repeat each Input> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            try await function(self)(capture, repeat each item)
        }
    }
    
    /// n-2 input to void function
    func weak<ContextA, ContextB, each Input>(
        capture: (ContextA, ContextB),
        _ function: @escaping InputAsyncThrowingVoidFunctionGetter<ContextA, ContextB, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingVoidFunction<repeat each Input> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            try await function(self)(capture.0, capture.1, repeat each item)
        }
    }
    
    /// n-3 input to void function
    func weak<ContextA, ContextB, ContextC, each Input>(
        capture: (ContextA, ContextB, ContextC),
        _ function: @escaping InputAsyncThrowingVoidFunctionGetter<ContextA, ContextB, ContextC, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingVoidFunction<repeat each Input> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            try await function(self)(capture.0, capture.1, capture.2, repeat each item)
        }
    }
    
    /// n-4 input to void function
    func weak<ContextA, ContextB, ContextC, ContextD, each Input>(
        capture: (ContextA, ContextB, ContextC, ContextD),
        _ function: @escaping InputAsyncThrowingVoidFunctionGetter<ContextA, ContextB, ContextC, ContextD, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingVoidFunction<repeat each Input> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            try await function(self)(capture.0, capture.1, capture.2, capture.3, repeat each item)
        }
    }
    
    /// n-5 input to void function
    func weak<ContextA, ContextB, ContextC, ContextD, ContextE, each Input>(
        capture: (ContextA, ContextB, ContextC, ContextD, ContextE),
        _ function: @escaping InputAsyncThrowingVoidFunctionGetter<ContextA, ContextB, ContextC, ContextD, ContextE, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingVoidFunction<repeat each Input> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            try await function(self)(capture.0, capture.1, capture.2, capture.3, capture.4, repeat each item)
        }
    }
    
    /// n-input to output function
    func weak<each Input, Output>(
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<repeat each Input, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(repeat each item)
        }
    }
    
    /// n-1 input to output function
    func weak<Context, each Input, Output>(
        capture: Context,
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<Context, repeat each Input, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(capture, repeat each item)
        }
    }
    
    /// n-2 input to output function
    func weak<ContextA, ContextB, each Input, Output>(
        capture: (ContextA, ContextB),
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<ContextA, ContextB, repeat each Input, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(capture.0, capture.1, repeat each item)
        }
    }
    
    /// n-3 input to output function
    func weak<ContextA, ContextB, ContextC, each Input, Output>(
        capture: (ContextA, ContextB, ContextC),
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<ContextA, ContextB, ContextC, repeat each Input, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(capture.0, capture.1, capture.2, repeat each item)
        }
    }
    
    /// n-4 input to output function
    func weak<ContextA, ContextB, ContextC, ContextD, each Input, Output>(
        capture: (ContextA, ContextB, ContextC, ContextD),
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<ContextA, ContextB, ContextC, ContextD, repeat each Input, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(capture.0, capture.1, capture.2, capture.3, repeat each item)
        }
    }
    
    /// n-4 input to output function
    func weak<ContextA, ContextB, ContextC, ContextD, ContextE, each Input, Output>(
        capture: (ContextA, ContextB, ContextC, ContextD, ContextE),
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<ContextA, ContextB, ContextC, ContextD, ContextE, repeat each Input, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(capture.0, capture.1, capture.2, capture.3, capture.4, repeat each item)
        }
    }
    
    /// n-input to optional output function
    func weak<each Input, Output>(
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<repeat each Input, Output>,
        default defaultValue: Output? = nil,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output?> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(repeat each item)
        }
    }
    
    /// n-1 input to optional output function
    func weak<Context, each Input, Output>(
        capture: Context,
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<Context, repeat each Input, Output>,
        default defaultValue: Output? = nil,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output?> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(capture, repeat each item)
        }
    }
    
    /// n-2 input to optional output function
    func weak<ContextA, ContextB, each Input, Output>(
        capture: (ContextA, ContextB),
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<ContextA, ContextB, repeat each Input, Output>,
        default defaultValue: Output? = nil,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output?> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(capture.0, capture.1, repeat each item)
        }
    }
    
    /// n-3 input to optional output function
    func weak<ContextA, ContextB, ContextC, each Input, Output>(
        capture: (ContextA, ContextB, ContextC),
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<ContextA, ContextB, ContextC, repeat each Input, Output>,
        default defaultValue: Output? = nil,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output?> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(capture.0, capture.1, capture.2, repeat each item)
        }
    }
    
    /// n-4 input to optional output function
    func weak<ContextA, ContextB, ContextC, ContextD, each Input, Output>(
        capture: (ContextA, ContextB, ContextC, ContextD),
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<ContextA, ContextB, ContextC, ContextD, repeat each Input, Output>,
        default defaultValue: Output? = nil,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output?> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(capture.0, capture.1, capture.2, capture.3, repeat each item)
        }
    }
    
    /// n-4 input to optional output function
    func weak<ContextA, ContextB, ContextC, ContextD, ContextE, each Input, Output>(
        capture: (ContextA, ContextB, ContextC, ContextD, ContextE),
        _ function: @escaping InputAsyncThrowingOutputFunctionGetter<ContextA, ContextB, ContextC, ContextD, ContextE, repeat each Input, Output>,
        default defaultValue: Output? = nil,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputAsyncThrowingOutputFunction<repeat each Input, Output?> {
        {
            [weak self] (item: repeat each Input) in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return try await function(self)(capture.0, capture.1, capture.2, capture.3, capture.4, repeat each item)
        }
    }
}
