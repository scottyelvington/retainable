//
//  Retainable+Strong+Throw.swift
//
//
//  Created by Scott Yelvington on 11/28/23.
//

// MARK: – Strong + Throw

public extension Retainable {
    
    /// n-input to void function
    func strong<each Input>(
        _ function: @escaping InputThrowingVoidFunctionGetter<repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            try function(self)(repeat each item)
        }
    }
    
    /// n-1 input to void function
    func strong<Context, each Input>(
        capture: Context,
        _ function: @escaping InputThrowingVoidFunctionGetter<Context, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            try function(self)(capture, repeat each item)
        }
    }
    
    /// n-2 input to void function
    func strong<ContextA, ContextB, each Input>(
        capture: (ContextA, ContextB),
        _ function: @escaping InputThrowingVoidFunctionGetter<ContextA, ContextB, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            try function(self)(capture.0, capture.1, repeat each item)
        }
    }
    
    /// n-3 input to void function
    func strong<ContextA, ContextB, ContextC, each Input>(
        capture: (ContextA, ContextB, ContextC),
        _ function: @escaping InputThrowingVoidFunctionGetter<ContextA, ContextB, ContextC, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            try function(self)(capture.0, capture.1, capture.2, repeat each item)
        }
    }
    
    /// n-4 input to void function
    func strong<ContextA, ContextB, ContextC, ContextD, each Input>(
        capture: (ContextA, ContextB, ContextC, ContextD),
        _ function: @escaping InputThrowingVoidFunctionGetter<ContextA, ContextB, ContextC, ContextD, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            try function(self)(capture.0, capture.1, capture.2, capture.3, repeat each item)
        }
    }
    
    /// n-5 input to void function
    func strong<ContextA, ContextB, ContextC, ContextD, ContextE, each Input>(
        capture: (ContextA, ContextB, ContextC, ContextD, ContextE),
        _ function: @escaping InputThrowingVoidFunctionGetter<ContextA, ContextB, ContextC, ContextD, ContextE, repeat each Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingVoidFunction<repeat each Input> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            try function(self)(capture.0, capture.1, capture.2, capture.3, capture.4, repeat each item)
        }
    }
    
    /// n-input to output function
    func strong<each Input, Output>(
        _ function: @escaping InputThrowingOutputFunctionGetter<repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return try function(self)(repeat each item)
        }
    }
    
    /// n-1 input to output function
    func strong<Context, each Input, Output>(
        capture: Context,
        _ function: @escaping InputThrowingOutputFunctionGetter<Context, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return try function(self)(capture, repeat each item)
        }
    }
    
    /// n-2 input to output function
    func strong<ContextA, ContextB, each Input, Output>(
        capture: (ContextA, ContextB),
        _ function: @escaping InputThrowingOutputFunctionGetter<ContextA, ContextB, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return try function(self)(capture.0, capture.1, repeat each item)
        }
    }
    
    /// n-3 input to output function
    func strong<ContextA, ContextB, ContextC, each Input, Output>(
        capture: (ContextA, ContextB, ContextC),
        _ function: @escaping InputThrowingOutputFunctionGetter<ContextA, ContextB, ContextC, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return try function(self)(capture.0, capture.1, capture.2, repeat each item)
        }
    }
    
    /// n-4 input to output function
    func strong<ContextA, ContextB, ContextC, ContextD, each Input, Output>(
        capture: (ContextA, ContextB, ContextC, ContextD),
        _ function: @escaping InputThrowingOutputFunctionGetter<ContextA, ContextB, ContextC, ContextD, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return try function(self)(capture.0, capture.1, capture.2, capture.3, repeat each item)
        }
    }
    
    /// n-5 input to output function
    func strong<ContextA, ContextB, ContextC, ContextD, ContextE, each Input, Output>(
        capture: (ContextA, ContextB, ContextC, ContextD, ContextE),
        _ function: @escaping InputThrowingOutputFunctionGetter<ContextA, ContextB, ContextC, ContextD, ContextE, repeat each Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputThrowingOutputFunction<repeat each Input, Output> {
        {
            (item: repeat each Input) in
            
            defer { deferring?() }
            
            return try function(self)(capture.0, capture.1, capture.2, capture.3, capture.4, repeat each item)
        }
    }
}
