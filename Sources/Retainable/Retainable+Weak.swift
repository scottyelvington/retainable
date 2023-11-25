//
//  Retainable+Weak.swift
//
//
//  Created by Scott Yelvington on 11/25/23.
//

// MARK: – Weak

public extension Retainable {
    
    /// void to void function
    func weak(
        _ function: @escaping VoidVoidFunctionGetter,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidVoidFunction {
        {
            [weak self] in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            function(self)()
        }
    }
    
    /// input to void function
    func weak<Input>(
        _ function: @escaping InputVoidFunctionGetter<Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<Input> {
        {
            [weak self] input in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            function(self)(input)
        }
    }
    
    /// 1x input to void/void function
    func weak<Input>(
        _ function: @escaping InputVoidFunctionGetter<Input>,
        append input: Input,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidVoidFunction {
        {
            [weak self] in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            function(self)(input)
        }
    }
    
    /// 1x input to void/output function
    func weak<Input, Output>(
        _ function: @escaping InputOutputFunctionGetter<Input, Output>,
        append input: Input,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOutputFunction<Output> {
        {
            [weak self] in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(input)
        }
    }
    
    /// 2x input to void function
    func weak<InputA, InputB>(
        _ function: @escaping InputInputVoidFunctionGetter<InputA, InputB>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputVoidFunction<InputA, InputB> {
        {
            [weak self] inputA, inputB in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            function(self)(inputA, inputB)
        }
    }
    
    /// 2x input to input/void function
    func weak<InputA, InputB>(
        _ function: @escaping InputInputVoidFunctionGetter<InputA, InputB>,
        append inputB: InputB,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<InputA> {
        {
            [weak self] inputA in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            function(self)(inputA, inputB)
        }
    }
    
    /// 3x input to void function
    func weak<InputA, InputB, InputC>(
        _ function: @escaping InputInputInputVoidFunctionGetter<InputA, InputB, InputC>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputVoidFunction<InputA, InputB, InputC> {
        {
            [weak self] inputA, inputB, inputC in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 3x input to 2x input/void function
    func weak<InputA, InputB, InputC>(
        _ function: @escaping InputInputInputVoidFunctionGetter<InputA, InputB, InputC>,
        append inputC: InputC,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputVoidFunction<InputA, InputB> {
        {
            [weak self] inputA, inputB in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 4x input to void function
    func weak<InputA, InputB, InputC, InputD>(
        _ function: @escaping InputInputInputInputVoidFunctionGetter<InputA, InputB, InputC, InputD>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputInputVoidFunction<InputA, InputB, InputC, InputD> {
        {
            [weak self] inputA, inputB, inputC, inputD in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// 4x input to 3x input/void function
    func weak<InputA, InputB, InputC, InputD>(
        _ function: @escaping InputInputInputInputVoidFunctionGetter<InputA, InputB, InputC, InputD>,
        append inputD: InputD,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputVoidFunction<InputA, InputB, InputC> {
        {
            [weak self] inputA, inputB, inputC in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// void to output function
    func weak<Output>(
        _ function: @escaping VoidOutputFunctionGetter<Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOutputFunction<Output> {
        {
            [weak self] in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)()
        }
    }
    
    /// input to output function
    func weak<Input, Output>(
        _ function: @escaping InputOutputFunctionGetter<Input, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<Input, Output> {
        {
            [weak self] input in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(input)
        }
    }
    
    /// 2x input to output function
    func weak<InputA, InputB, Output>(
        _ function: @escaping InputInputOutputFunctionGetter<InputA, InputB, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputOutputFunction<InputA, InputB, Output> {
        {
            [weak self] inputA, inputB in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(inputA, inputB)
        }
    }
    
    /// 2x input to input/output function
    func weak<InputA, InputB, Output>(
        _ function: @escaping InputInputOutputFunctionGetter<InputA, InputB, Output>,
        append inputB: InputB,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<InputA, Output> {
        {
            [weak self] inputA in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(inputA, inputB)
        }
    }
    
    /// 3x input to output function
    func weak<InputA, InputB, InputC, Output>(
        _ function: @escaping InputInputInputOutputFunctionGetter<InputA, InputB, InputC, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputOutputFunction<InputA, InputB, InputC, Output> {
        {
            [weak self] inputA, inputB, inputC in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 3x input to 2x input/output function
    func weak<InputA, InputB, InputC, Output>(
        _ function: @escaping InputInputInputOutputFunctionGetter<InputA, InputB, InputC, Output>,
        append inputC: InputC,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputOutputFunction<InputA, InputB, Output> {
        {
            [weak self] inputA, inputB in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 4x input to output function
    func weak<InputA, InputB, InputC, InputD, Output>(
        _ function: @escaping InputInputInputInputOutputFunctionGetter<InputA, InputB, InputC, InputD, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputInputOutputFunction<InputA, InputB, InputC, InputD, Output> {
        {
            [weak self] inputA, inputB, inputC, inputD in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// 4x input to 3x input/output function
    func weak<InputA, InputB, InputC, InputD, Output>(
        _ function: @escaping InputInputInputInputOutputFunctionGetter<InputA, InputB, InputC, InputD, Output>,
        append inputD: InputD,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputOutputFunction<InputA, InputB, InputC, Output> {
        {
            [weak self] inputA, inputB, inputC in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// input to void keypath
    func weak<Input>(
        _ path: ReferenceWritableKeyPath<Self, Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<Input> {
        {
            [weak self] input in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            self[keyPath: path] = input
        }
    }
    
    /// input to void keypath
    func weak<Input>(
        _ path: ReferenceWritableKeyPath<Self, Input>,
        set value: Input,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidVoidFunction {
        {
            [weak self] in
            
            defer { deferring?() }
            
            guard let self else { return }
            
            self[keyPath: path] = value
        }
    }
    
    /// void to output keypath
    func weak<Output>(
        _ path: KeyPath<Self, Output>,
        default defaultValue: Output,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOutputFunction<Output> {
        {
            [weak self] in
            
            defer { deferring?() }
            
            guard let self else { return defaultValue }
            
            return self[keyPath: path]
        }
    }
}
