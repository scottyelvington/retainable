//
//  Retainable+Strong.swift
//  
//
//  Created by Scott Yelvington on 11/25/23.
//

// MARK: – Strong

public extension Retainable {
    
    /// void to void function
    func strong(
        _ function: @escaping VoidVoidFunctionGetter,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidVoidFunction {
        {
            
            defer { deferring?() }
            
            function(self)()
        }
    }
    
    /// input to void function
    func strong<Input>(
        _ function: @escaping InputVoidFunctionGetter<Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<Input> {
        {
            input in
            
            defer { deferring?() }
            
            function(self)(input)
        }
    }
    
    /// 1x input to void/void function
    func strong<Input>(
        _ function: @escaping InputVoidFunctionGetter<Input>,
        append input: Input,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidVoidFunction {
        {
            
            defer { deferring?() }
            
            function(self)(input)
        }
    }
    
    /// 1x input to void/output function
    func strong<Input, Output>(
        _ function: @escaping InputOutputFunctionGetter<Input, Output>,
        append input: Input,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOutputFunction<Output> {
        {
            
            defer { deferring?() }
            
            return function(self)(input)
        }
    }
    
    /// 2x input to void function
    func strong<InputA, InputB>(
        _ function: @escaping InputInputVoidFunctionGetter<InputA, InputB>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputVoidFunction<InputA, InputB> {
        {
            inputA, inputB in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB)
        }
    }
    
    /// 2x input to input/void function
    func strong<InputA, InputB>(
        _ function: @escaping InputInputVoidFunctionGetter<InputA, InputB>,
        append inputB: InputB,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<InputA> {
        {
            inputA in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB)
        }
    }
    
    /// 3x input to void function
    func strong<InputA, InputB, InputC>(
        _ function: @escaping InputInputInputVoidFunctionGetter<InputA, InputB, InputC>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputVoidFunction<InputA, InputB, InputC> {
        {
            inputA, inputB, inputC in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 3x input to 2x input/void function
    func strong<InputA, InputB, InputC>(
        _ function: @escaping InputInputInputVoidFunctionGetter<InputA, InputB, InputC>,
        append inputC: InputC,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputVoidFunction<InputA, InputB> {
        {
            inputA, inputB in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 4x input to void function
    func strong<InputA, InputB, InputC, InputD>(
        _ function: @escaping InputInputInputInputVoidFunctionGetter<InputA, InputB, InputC, InputD>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputInputVoidFunction<InputA, InputB, InputC, InputD> {
        {
            inputA, inputB, inputC, inputD in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// 4x input to 3x input/void function
    func strong<InputA, InputB, InputC, InputD>(
        _ function: @escaping InputInputInputInputVoidFunctionGetter<InputA, InputB, InputC, InputD>,
        append inputD: InputD,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputVoidFunction<InputA, InputB, InputC> {
        {
            inputA, inputB, inputC in
            
            defer { deferring?() }
            
            function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// void to output function
    func strong<Output>(
        _ function: @escaping VoidOutputFunctionGetter<Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOutputFunction<Output> {
        {
            
            defer { deferring?() }
            
            return function(self)()
        }
    }
    
    /// input to output function
    func strong<Input, Output>(
        _ function: @escaping InputOutputFunctionGetter<Input, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<Input, Output> {
        {
            input in
            
            defer { deferring?() }
            
            return function(self)(input)
        }
    }
    
    /// 2x input to output function
    func strong<InputA, InputB, Output>(
        _ function: @escaping InputInputOutputFunctionGetter<InputA, InputB, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputOutputFunction<InputA, InputB, Output> {
        {
            inputA, inputB in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB)
        }
    }
    
    /// 2x input to input/output function
    func strong<InputA, InputB, Output>(
        _ function: @escaping InputInputOutputFunctionGetter<InputA, InputB, Output>,
        append inputB: InputB,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputOutputFunction<InputA, Output> {
        {
            inputA in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB)
        }
    }
    
    /// 3x input to output function
    func strong<InputA, InputB, InputC, Output>(
        _ function: @escaping InputInputInputOutputFunctionGetter<InputA, InputB, InputC, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputOutputFunction<InputA, InputB, InputC, Output> {
        {
            inputA, inputB, inputC in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 3x input to 2x input/output function
    func strong<InputA, InputB, InputC, Output>(
        _ function: @escaping InputInputInputOutputFunctionGetter<InputA, InputB, InputC, Output>,
        append inputC: InputC,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputOutputFunction<InputA, InputB, Output> {
        {
            inputA, inputB in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB, inputC)
        }
    }
    
    /// 4x input to output function
    func strong<InputA, InputB, InputC, InputD, Output>(
        _ function: @escaping InputInputInputInputOutputFunctionGetter<InputA, InputB, InputC, InputD, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputInputOutputFunction<InputA, InputB, InputC, InputD, Output> {
        {
            inputA, inputB, inputC, inputD in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// 4x input to 3x input/output function
    func strong<InputA, InputB, InputC, InputD, Output>(
        _ function: @escaping InputInputInputInputOutputFunctionGetter<InputA, InputB, InputC, InputD, Output>,
        append inputD: InputD,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputInputInputOutputFunction<InputA, InputB, InputC, Output> {
        {
            inputA, inputB, inputC in
            
            defer { deferring?() }
            
            return function(self)(inputA, inputB, inputC, inputD)
        }
    }
    
    /// input to void keypath
    func strong<Input>(
        _ path: ReferenceWritableKeyPath<Self, Input>,
        defer deferring: VoidVoidFunction? = nil
    ) -> InputVoidFunction<Input> {
        {
            input in
            
            defer { deferring?() }
            
            self[keyPath: path] = input
        }
    }
    
    /// void to void keypath
    func strong<Input>(
        _ path: ReferenceWritableKeyPath<Self, Input>,
        set value: Input,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidVoidFunction {
        {
            defer { deferring?() }
            
            self[keyPath: path] = value
        }
    }
    
    /// void to output keypath
    func strong<Output>(
        _ path: KeyPath<Self, Output>,
        defer deferring: VoidVoidFunction? = nil
    ) -> VoidOutputFunction<Output> {
        {
            
            defer { deferring?() }
            
            return self[keyPath: path]
        }
    }
}
