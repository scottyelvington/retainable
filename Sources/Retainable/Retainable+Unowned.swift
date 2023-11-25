//
//  Retainable+Unowned.swift
//
//
//  Created by Scott Yelvington on 11/25/23.
//

// MARK: – Unowned

public extension Retainable {
    
    /// void to void function
    func unowned(
        _ function: @escaping VoidVoidFunctionGetter,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidVoidFunction {
        {
            [unowned self] in
            
            defer { deferring?() }
            
            function(self)()
        }
    }
    
    /// input to void function
    func unowned<Input>(
        _ function: @escaping InputVoidFunctionGetter<Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<Input> {
        {
            [unowned self] input in
            
            defer { deferring?() }
            
            function(self)(input)
        }
    }
    
    /// 1x input to void/void function
    func unowned<Input>(
        _ function: @escaping InputVoidFunctionGetter<Input>,
        append input: Input,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidVoidFunction {
        {
            [unowned self] in
            
            defer { deferring?() }
            
            function(self)(input)
        }
    }
    
    /// 1x input to void/output function
    func unowned<Input, Output>(
        _ function: @escaping InputOutputFunctionGetter<Input, Output>,
        append input: Input,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOutputFunction<Output> {
        {
            [unowned self] in
            
            defer { deferring?() }
            
            return function(self)(input)
        }
    }
    
    /// 2x input to void function
    func unowned<InputA, InputB>(
        _ function: @escaping InputInputVoidFunctionGetter<InputA, InputB>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputVoidFunction<InputA, InputB> {
        {
            [unowned self] inputA, inputB in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB)
        }
    }
    
    /// 2x input to input/void function
    func unowned<InputA, InputB>(
        _ function: @escaping InputInputVoidFunctionGetter<InputA, InputB>,
        append inputB: InputB,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<InputA> {
        {
            [unowned self] inputA in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB)
        }
    }
    
    /// 3x input to void function
    func unowned<InputA, InputB, InputC>(
        _ function: @escaping InputInputInputVoidFunctionGetter<InputA, InputB, InputC>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputVoidFunction<InputA, InputB, InputC> {
        {
            [unowned self] inputA, inputB, inputC in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 3x input to 2x input/void function
    func unowned<InputA, InputB, InputC>(
        _ function: @escaping InputInputInputVoidFunctionGetter<InputA, InputB, InputC>,
        append inputC: InputC,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputVoidFunction<InputA, InputB> {
        {
            [unowned self] inputA, inputB in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 4x input to void function
    func unowned<InputA, InputB, InputC, InputD>(
        _ function: @escaping InputInputInputInputVoidFunctionGetter<InputA, InputB, InputC, InputD>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputInputVoidFunction<InputA, InputB, InputC, InputD> {
        {
            [unowned self] inputA, inputB, inputC, inputD in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// 4x input to 3x input/void function
    func unowned<InputA, InputB, InputC, InputD>(
        _ function: @escaping InputInputInputInputVoidFunctionGetter<InputA, InputB, InputC, InputD>,
        append inputD: InputD,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputVoidFunction<InputA, InputB, InputC> {
        {
            [unowned self] inputA, inputB, inputC in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// void to output function
    func unowned<Output>(
        _ function: @escaping VoidOutputFunctionGetter<Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOutputFunction<Output> {
        {
            [unowned self] in
            
            defer { deferring?() }
            
            return function(self)()
        }
    }
    
    /// input to output function
    func unowned<Input, Output>(
        _ function: @escaping InputOutputFunctionGetter<Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<Input, Output> {
        {
            [unowned self] input in
            
            defer { deferring?() }
            
            return function(self)(input)
        }
    }
    
    /// 2x input to output function
    func unowned<InputA, InputB, Output>(
        _ function: @escaping InputInputOutputFunctionGetter<InputA, InputB, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputOutputFunction<InputA, InputB, Output> {
        {
            [unowned self] inputA, inputB in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB)
        }
    }
    
    /// 2x input to input/output function
    func unowned<InputA, InputB, Output>(
        _ function: @escaping InputInputOutputFunctionGetter<InputA, InputB, Output>,
        append inputB: InputB,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<InputA, Output> {
        {
            [unowned self] inputA in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB)
        }
    }
    
    /// 3x input to output function
    func unowned<InputA, InputB, InputC, Output>(
        _ function: @escaping InputInputInputOutputFunctionGetter<InputA, InputB, InputC, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputOutputFunction<InputA, InputB, InputC, Output> {
        {
            [unowned self] inputA, inputB, inputC in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 3x input to 2x input/output function
    func unowned<InputA, InputB, InputC, Output>(
        _ function: @escaping InputInputInputOutputFunctionGetter<InputA, InputB, InputC, Output>,
        append inputC: InputC,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputOutputFunction<InputA, InputB, Output> {
        {
            [unowned self] inputA, inputB in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 4x input to output function
    func unowned<InputA, InputB, InputC, InputD, Output>(
        _ function: @escaping InputInputInputInputOutputFunctionGetter<InputA, InputB, InputC, InputD, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputInputOutputFunction<InputA, InputB, InputC, InputD, Output> {
        {
            [unowned self] inputA, inputB, inputC, inputD in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// 4x input to 3x input/output function
    func unowned<InputA, InputB, InputC, InputD, Output>(
        _ function: @escaping InputInputInputInputOutputFunctionGetter<InputA, InputB, InputC, InputD, Output>,
        append inputD: InputD,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputOutputFunction<InputA, InputB, InputC, Output> {
        {
            [unowned self] inputA, inputB, inputC in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// input to void keypath
    func unowned<Input>(
        _ path: ReferenceWritableKeyPath<Self, Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<Input> {
        {
            [unowned self] input in
            
            defer { deferring?() }
            
            self[keyPath: path] = input
        }
    }
    
    /// input to void keypath
    func unowned<Input>(
        _ path: ReferenceWritableKeyPath<Self, Input>,
        set value: Input,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidVoidFunction {
        {
            [unowned self] in
            
            defer { deferring?() }
            
            self[keyPath: path] = value
        }
    }
    
    /// void to output keypath
    func unowned<Output>(
        _ path: KeyPath<Self, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOutputFunction<Output> {
        {
            [unowned self] in
            
            defer { deferring?() }
            
            return self[keyPath: path]
        }
    }
}
