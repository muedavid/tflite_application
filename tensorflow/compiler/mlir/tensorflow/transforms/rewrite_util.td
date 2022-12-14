/* Copyright 2021 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#ifndef TENSORFLOW_COMPILER_MLIR_TENSORFLOW_TRANSFORMS_REWRITE_UTIL
#define TENSORFLOW_COMPILER_MLIR_TENSORFLOW_TRANSFORMS_REWRITE_UTIL

include "mlir/IR/OpBase.td"
include "mlir/IR/PatternBase.td"

// Here, the element type can be any integer or float type. But, note that only
// 32 bit integers are supported for the values.
class GetScalarOfType<int value> : NativeCodeCall<
  "GetScalarOfType(getElementTypeOrSelf($0)," # value # ")">;

// Here, the element type can be any integer or float type. But, note that only
// 32 bit integers are supported for the values.
class IsConstantValueOf<int value> : Constraint<CPred<
  "IsConstantValueOf($0," # value # ")">>;

#endif // TENSORFLOW_COMPILER_MLIR_TENSORFLOW_TRANSFORMS_REWRITE_UTIL
