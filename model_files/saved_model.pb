ù
Ý
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68Û¯

dense_Dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:F*$
shared_namedense_Dense1/kernel
{
'dense_Dense1/kernel/Read/ReadVariableOpReadVariableOpdense_Dense1/kernel*
_output_shapes

:F*
dtype0
z
dense_Dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedense_Dense1/bias
s
%dense_Dense1/bias/Read/ReadVariableOpReadVariableOpdense_Dense1/bias*
_output_shapes
:*
dtype0

dense_Dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_namedense_Dense2/kernel
{
'dense_Dense2/kernel/Read/ReadVariableOpReadVariableOpdense_Dense2/kernel*
_output_shapes

:*
dtype0
z
dense_Dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedense_Dense2/bias
s
%dense_Dense2/bias/Read/ReadVariableOpReadVariableOpdense_Dense2/bias*
_output_shapes
:*
dtype0

NoOpNoOp
É
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueúB÷ Bð

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature


signatures*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
 
0
1
2
3*
 
0
1
2
3*
* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

 serving_default* 
c]
VARIABLE_VALUEdense_Dense1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEdense_Dense1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
c]
VARIABLE_VALUEdense_Dense2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEdense_Dense2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

"serving_default_dense_Dense1_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿF

StatefulPartitionedCallStatefulPartitionedCall"serving_default_dense_Dense1_inputdense_Dense1/kerneldense_Dense1/biasdense_Dense2/kerneldense_Dense2/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_signature_wrapper_308
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¼
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'dense_Dense1/kernel/Read/ReadVariableOp%dense_Dense1/bias/Read/ReadVariableOp'dense_Dense2/kernel/Read/ReadVariableOp%dense_Dense2/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *%
f R
__inference__traced_save_383
ç
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_Dense1/kerneldense_Dense1/biasdense_Dense2/kerneldense_Dense2/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_restore_405ù

Ð
!__inference_signature_wrapper_308
dense_dense1_input
unknown:F
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCalldense_dense1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__wrapped_model_77o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
,
_user_specified_namedense_Dense1_input


õ
D__inference_dense_Dense1_layer_call_and_return_conditional_losses_95

inputs0
matmul_readvariableop_resource:F-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:F*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs

Í
*__inference_sequential_1_layer_call_fn_244

inputs
unknown:F
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_1_layer_call_and_return_conditional_losses_119o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
ö
Æ
E__inference_sequential_1_layer_call_and_return_conditional_losses_217
dense_dense1_input"
dense_dense1_206:F
dense_dense1_208:"
dense_dense2_211:
dense_dense2_213:
identity¢$dense_Dense1/StatefulPartitionedCall¢$dense_Dense2/StatefulPartitionedCall
$dense_Dense1/StatefulPartitionedCallStatefulPartitionedCalldense_dense1_inputdense_dense1_206dense_dense1_208*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_Dense1_layer_call_and_return_conditional_losses_95
$dense_Dense2/StatefulPartitionedCallStatefulPartitionedCall-dense_Dense1/StatefulPartitionedCall:output:0dense_dense2_211dense_dense2_213*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_Dense2_layer_call_and_return_conditional_losses_112|
IdentityIdentity-dense_Dense2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^dense_Dense1/StatefulPartitionedCall%^dense_Dense2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 2L
$dense_Dense1/StatefulPartitionedCall$dense_Dense1/StatefulPartitionedCall2L
$dense_Dense2/StatefulPartitionedCall$dense_Dense2/StatefulPartitionedCall:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
,
_user_specified_namedense_Dense1_input
º
ð
E__inference_sequential_1_layer_call_and_return_conditional_losses_275

inputs=
+dense_dense1_matmul_readvariableop_resource:F:
,dense_dense1_biasadd_readvariableop_resource:=
+dense_dense2_matmul_readvariableop_resource::
,dense_dense2_biasadd_readvariableop_resource:
identity¢#dense_Dense1/BiasAdd/ReadVariableOp¢"dense_Dense1/MatMul/ReadVariableOp¢#dense_Dense2/BiasAdd/ReadVariableOp¢"dense_Dense2/MatMul/ReadVariableOp
"dense_Dense1/MatMul/ReadVariableOpReadVariableOp+dense_dense1_matmul_readvariableop_resource*
_output_shapes

:F*
dtype0
dense_Dense1/MatMulMatMulinputs*dense_Dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#dense_Dense1/BiasAdd/ReadVariableOpReadVariableOp,dense_dense1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_Dense1/BiasAddBiasAdddense_Dense1/MatMul:product:0+dense_Dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dense_Dense1/ReluReludense_Dense1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_Dense2/MatMul/ReadVariableOpReadVariableOp+dense_dense2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_Dense2/MatMulMatMuldense_Dense1/Relu:activations:0*dense_Dense2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#dense_Dense2/BiasAdd/ReadVariableOpReadVariableOp,dense_dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_Dense2/BiasAddBiasAdddense_Dense2/MatMul:product:0+dense_Dense2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dense_Dense2/SoftmaxSoftmaxdense_Dense2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
IdentityIdentitydense_Dense2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÜ
NoOpNoOp$^dense_Dense1/BiasAdd/ReadVariableOp#^dense_Dense1/MatMul/ReadVariableOp$^dense_Dense2/BiasAdd/ReadVariableOp#^dense_Dense2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 2J
#dense_Dense1/BiasAdd/ReadVariableOp#dense_Dense1/BiasAdd/ReadVariableOp2H
"dense_Dense1/MatMul/ReadVariableOp"dense_Dense1/MatMul/ReadVariableOp2J
#dense_Dense2/BiasAdd/ReadVariableOp#dense_Dense2/BiasAdd/ReadVariableOp2H
"dense_Dense2/MatMul/ReadVariableOp"dense_Dense2/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
¡

ö
E__inference_dense_Dense2_layer_call_and_return_conditional_losses_348

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

*__inference_dense_Dense1_layer_call_fn_317

inputs
unknown:F
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_Dense1_layer_call_and_return_conditional_losses_95o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
º
ð
E__inference_sequential_1_layer_call_and_return_conditional_losses_293

inputs=
+dense_dense1_matmul_readvariableop_resource:F:
,dense_dense1_biasadd_readvariableop_resource:=
+dense_dense2_matmul_readvariableop_resource::
,dense_dense2_biasadd_readvariableop_resource:
identity¢#dense_Dense1/BiasAdd/ReadVariableOp¢"dense_Dense1/MatMul/ReadVariableOp¢#dense_Dense2/BiasAdd/ReadVariableOp¢"dense_Dense2/MatMul/ReadVariableOp
"dense_Dense1/MatMul/ReadVariableOpReadVariableOp+dense_dense1_matmul_readvariableop_resource*
_output_shapes

:F*
dtype0
dense_Dense1/MatMulMatMulinputs*dense_Dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#dense_Dense1/BiasAdd/ReadVariableOpReadVariableOp,dense_dense1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_Dense1/BiasAddBiasAdddense_Dense1/MatMul:product:0+dense_Dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dense_Dense1/ReluReludense_Dense1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_Dense2/MatMul/ReadVariableOpReadVariableOp+dense_dense2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_Dense2/MatMulMatMuldense_Dense1/Relu:activations:0*dense_Dense2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#dense_Dense2/BiasAdd/ReadVariableOpReadVariableOp,dense_dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_Dense2/BiasAddBiasAdddense_Dense2/MatMul:product:0+dense_Dense2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dense_Dense2/SoftmaxSoftmaxdense_Dense2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
IdentityIdentitydense_Dense2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÜ
NoOpNoOp$^dense_Dense1/BiasAdd/ReadVariableOp#^dense_Dense1/MatMul/ReadVariableOp$^dense_Dense2/BiasAdd/ReadVariableOp#^dense_Dense2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 2J
#dense_Dense1/BiasAdd/ReadVariableOp#dense_Dense1/BiasAdd/ReadVariableOp2H
"dense_Dense1/MatMul/ReadVariableOp"dense_Dense1/MatMul/ReadVariableOp2J
#dense_Dense2/BiasAdd/ReadVariableOp#dense_Dense2/BiasAdd/ReadVariableOp2H
"dense_Dense2/MatMul/ReadVariableOp"dense_Dense2/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
¼
Ù
*__inference_sequential_1_layer_call_fn_130
dense_dense1_input
unknown:F
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_dense1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_1_layer_call_and_return_conditional_losses_119o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
,
_user_specified_namedense_Dense1_input
Î
¸
E__inference_sequential_1_layer_call_and_return_conditional_losses_119

inputs!
dense_dense1_96:F
dense_dense1_98:"
dense_dense2_113:
dense_dense2_115:
identity¢$dense_Dense1/StatefulPartitionedCall¢$dense_Dense2/StatefulPartitionedCallô
$dense_Dense1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_dense1_96dense_dense1_98*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_Dense1_layer_call_and_return_conditional_losses_95
$dense_Dense2/StatefulPartitionedCallStatefulPartitionedCall-dense_Dense1/StatefulPartitionedCall:output:0dense_dense2_113dense_dense2_115*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_Dense2_layer_call_and_return_conditional_losses_112|
IdentityIdentity-dense_Dense2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^dense_Dense1/StatefulPartitionedCall%^dense_Dense2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 2L
$dense_Dense1/StatefulPartitionedCall$dense_Dense1/StatefulPartitionedCall2L
$dense_Dense2/StatefulPartitionedCall$dense_Dense2/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs

Í
*__inference_sequential_1_layer_call_fn_257

inputs
unknown:F
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_1_layer_call_and_return_conditional_losses_179o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
ô
¼
__inference__wrapped_model_77
dense_dense1_inputJ
8sequential_1_dense_dense1_matmul_readvariableop_resource:FG
9sequential_1_dense_dense1_biasadd_readvariableop_resource:J
8sequential_1_dense_dense2_matmul_readvariableop_resource:G
9sequential_1_dense_dense2_biasadd_readvariableop_resource:
identity¢0sequential_1/dense_Dense1/BiasAdd/ReadVariableOp¢/sequential_1/dense_Dense1/MatMul/ReadVariableOp¢0sequential_1/dense_Dense2/BiasAdd/ReadVariableOp¢/sequential_1/dense_Dense2/MatMul/ReadVariableOp¨
/sequential_1/dense_Dense1/MatMul/ReadVariableOpReadVariableOp8sequential_1_dense_dense1_matmul_readvariableop_resource*
_output_shapes

:F*
dtype0©
 sequential_1/dense_Dense1/MatMulMatMuldense_dense1_input7sequential_1/dense_Dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0sequential_1/dense_Dense1/BiasAdd/ReadVariableOpReadVariableOp9sequential_1_dense_dense1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ä
!sequential_1/dense_Dense1/BiasAddBiasAdd*sequential_1/dense_Dense1/MatMul:product:08sequential_1/dense_Dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_1/dense_Dense1/ReluRelu*sequential_1/dense_Dense1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
/sequential_1/dense_Dense2/MatMul/ReadVariableOpReadVariableOp8sequential_1_dense_dense2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ã
 sequential_1/dense_Dense2/MatMulMatMul,sequential_1/dense_Dense1/Relu:activations:07sequential_1/dense_Dense2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0sequential_1/dense_Dense2/BiasAdd/ReadVariableOpReadVariableOp9sequential_1_dense_dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ä
!sequential_1/dense_Dense2/BiasAddBiasAdd*sequential_1/dense_Dense2/MatMul:product:08sequential_1/dense_Dense2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!sequential_1/dense_Dense2/SoftmaxSoftmax*sequential_1/dense_Dense2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
IdentityIdentity+sequential_1/dense_Dense2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp1^sequential_1/dense_Dense1/BiasAdd/ReadVariableOp0^sequential_1/dense_Dense1/MatMul/ReadVariableOp1^sequential_1/dense_Dense2/BiasAdd/ReadVariableOp0^sequential_1/dense_Dense2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 2d
0sequential_1/dense_Dense1/BiasAdd/ReadVariableOp0sequential_1/dense_Dense1/BiasAdd/ReadVariableOp2b
/sequential_1/dense_Dense1/MatMul/ReadVariableOp/sequential_1/dense_Dense1/MatMul/ReadVariableOp2d
0sequential_1/dense_Dense2/BiasAdd/ReadVariableOp0sequential_1/dense_Dense2/BiasAdd/ReadVariableOp2b
/sequential_1/dense_Dense2/MatMul/ReadVariableOp/sequential_1/dense_Dense2/MatMul/ReadVariableOp:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
,
_user_specified_namedense_Dense1_input
Ò
º
E__inference_sequential_1_layer_call_and_return_conditional_losses_179

inputs"
dense_dense1_168:F
dense_dense1_170:"
dense_dense2_173:
dense_dense2_175:
identity¢$dense_Dense1/StatefulPartitionedCall¢$dense_Dense2/StatefulPartitionedCallö
$dense_Dense1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_dense1_168dense_dense1_170*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_Dense1_layer_call_and_return_conditional_losses_95
$dense_Dense2/StatefulPartitionedCallStatefulPartitionedCall-dense_Dense1/StatefulPartitionedCall:output:0dense_dense2_173dense_dense2_175*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_Dense2_layer_call_and_return_conditional_losses_112|
IdentityIdentity-dense_Dense2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^dense_Dense1/StatefulPartitionedCall%^dense_Dense2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 2L
$dense_Dense1/StatefulPartitionedCall$dense_Dense1/StatefulPartitionedCall2L
$dense_Dense2/StatefulPartitionedCall$dense_Dense2/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
ö
Æ
E__inference_sequential_1_layer_call_and_return_conditional_losses_231
dense_dense1_input"
dense_dense1_220:F
dense_dense1_222:"
dense_dense2_225:
dense_dense2_227:
identity¢$dense_Dense1/StatefulPartitionedCall¢$dense_Dense2/StatefulPartitionedCall
$dense_Dense1/StatefulPartitionedCallStatefulPartitionedCalldense_dense1_inputdense_dense1_220dense_dense1_222*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_Dense1_layer_call_and_return_conditional_losses_95
$dense_Dense2/StatefulPartitionedCallStatefulPartitionedCall-dense_Dense1/StatefulPartitionedCall:output:0dense_dense2_225dense_dense2_227*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_Dense2_layer_call_and_return_conditional_losses_112|
IdentityIdentity-dense_Dense2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^dense_Dense1/StatefulPartitionedCall%^dense_Dense2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 2L
$dense_Dense1/StatefulPartitionedCall$dense_Dense1/StatefulPartitionedCall2L
$dense_Dense2/StatefulPartitionedCall$dense_Dense2/StatefulPartitionedCall:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
,
_user_specified_namedense_Dense1_input
¼
Ù
*__inference_sequential_1_layer_call_fn_203
dense_dense1_input
unknown:F
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_dense1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_1_layer_call_and_return_conditional_losses_179o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
,
_user_specified_namedense_Dense1_input
¡

ö
E__inference_dense_Dense2_layer_call_and_return_conditional_losses_112

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ö
E__inference_dense_Dense1_layer_call_and_return_conditional_losses_328

inputs0
matmul_readvariableop_resource:F-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:F*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿF: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
¯
µ
__inference__traced_save_383
file_prefix2
.savev2_dense_dense1_kernel_read_readvariableop0
,savev2_dense_dense1_bias_read_readvariableop2
.savev2_dense_dense2_kernel_read_readvariableop0
,savev2_dense_dense2_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: æ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHw
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B ð
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_dense_dense1_kernel_read_readvariableop,savev2_dense_dense1_bias_read_readvariableop.savev2_dense_dense2_kernel_read_readvariableop,savev2_dense_dense2_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*7
_input_shapes&
$: :F:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:F: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
Ä

*__inference_dense_Dense2_layer_call_fn_337

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_Dense2_layer_call_and_return_conditional_losses_112o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
ñ
__inference__traced_restore_405
file_prefix6
$assignvariableop_dense_dense1_kernel:F2
$assignvariableop_1_dense_dense1_bias:8
&assignvariableop_2_dense_dense2_kernel:2
$assignvariableop_3_dense_dense2_bias:

identity_5¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3é
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHz
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B ·
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp$assignvariableop_dense_dense1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp$assignvariableop_1_dense_dense1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp&assignvariableop_2_dense_dense2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp$assignvariableop_3_dense_dense2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¬

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Å
serving_default±
Q
dense_Dense1_input;
$serving_default_dense_Dense1_input:0ÿÿÿÿÿÿÿÿÿF@
dense_Dense20
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:«8
¥
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature


signatures"
_tf_keras_sequential
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ö2ó
*__inference_sequential_1_layer_call_fn_130
*__inference_sequential_1_layer_call_fn_244
*__inference_sequential_1_layer_call_fn_257
*__inference_sequential_1_layer_call_fn_203À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
E__inference_sequential_1_layer_call_and_return_conditional_losses_275
E__inference_sequential_1_layer_call_and_return_conditional_losses_293
E__inference_sequential_1_layer_call_and_return_conditional_losses_217
E__inference_sequential_1_layer_call_and_return_conditional_losses_231À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÓBÐ
__inference__wrapped_model_77dense_Dense1_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
 serving_default"
signature_map
%:#F2dense_Dense1/kernel
:2dense_Dense1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_Dense1_layer_call_fn_317¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_Dense1_layer_call_and_return_conditional_losses_328¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
%:#2dense_Dense2/kernel
:2dense_Dense2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_Dense2_layer_call_fn_337¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_Dense2_layer_call_and_return_conditional_losses_348¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÓBÐ
!__inference_signature_wrapper_308dense_Dense1_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper¢
__inference__wrapped_model_77;¢8
1¢.
,)
dense_Dense1_inputÿÿÿÿÿÿÿÿÿF
ª ";ª8
6
dense_Dense2&#
dense_Dense2ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_Dense1_layer_call_and_return_conditional_losses_328\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿF
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_Dense1_layer_call_fn_317O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿF
ª "ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_Dense2_layer_call_and_return_conditional_losses_348\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_Dense2_layer_call_fn_337O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ»
E__inference_sequential_1_layer_call_and_return_conditional_losses_217rC¢@
9¢6
,)
dense_Dense1_inputÿÿÿÿÿÿÿÿÿF
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
E__inference_sequential_1_layer_call_and_return_conditional_losses_231rC¢@
9¢6
,)
dense_Dense1_inputÿÿÿÿÿÿÿÿÿF
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¯
E__inference_sequential_1_layer_call_and_return_conditional_losses_275f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿF
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¯
E__inference_sequential_1_layer_call_and_return_conditional_losses_293f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿF
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_sequential_1_layer_call_fn_130eC¢@
9¢6
,)
dense_Dense1_inputÿÿÿÿÿÿÿÿÿF
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_sequential_1_layer_call_fn_203eC¢@
9¢6
,)
dense_Dense1_inputÿÿÿÿÿÿÿÿÿF
p

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_sequential_1_layer_call_fn_244Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿF
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_sequential_1_layer_call_fn_257Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿF
p

 
ª "ÿÿÿÿÿÿÿÿÿ¼
!__inference_signature_wrapper_308Q¢N
¢ 
GªD
B
dense_Dense1_input,)
dense_Dense1_inputÿÿÿÿÿÿÿÿÿF";ª8
6
dense_Dense2&#
dense_Dense2ÿÿÿÿÿÿÿÿÿ