љј
пЕ
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
О
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
executor_typestring 
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
 "serve*2.5.02v2.5.0-0-ga4dfb8d1a718ид
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	ш*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ш*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:ш*
dtype0
z
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
шш*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
шш*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ш*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:ш*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	ш*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
|
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Nadam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш*'
shared_nameNadam/dense_2/kernel/m

*Nadam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_2/kernel/m*
_output_shapes
:	ш*
dtype0

Nadam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ш*%
shared_nameNadam/dense_2/bias/m
z
(Nadam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_2/bias/m*
_output_shapes	
:ш*
dtype0

Nadam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
шш*'
shared_nameNadam/dense_3/kernel/m

*Nadam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_3/kernel/m* 
_output_shapes
:
шш*
dtype0

Nadam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ш*%
shared_nameNadam/dense_3/bias/m
z
(Nadam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_3/bias/m*
_output_shapes	
:ш*
dtype0

Nadam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш*'
shared_nameNadam/dense_4/kernel/m

*Nadam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_4/kernel/m*
_output_shapes
:	ш*
dtype0

Nadam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_4/bias/m
y
(Nadam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_4/bias/m*
_output_shapes
:*
dtype0

Nadam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш*'
shared_nameNadam/dense_2/kernel/v

*Nadam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_2/kernel/v*
_output_shapes
:	ш*
dtype0

Nadam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ш*%
shared_nameNadam/dense_2/bias/v
z
(Nadam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_2/bias/v*
_output_shapes	
:ш*
dtype0

Nadam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
шш*'
shared_nameNadam/dense_3/kernel/v

*Nadam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_3/kernel/v* 
_output_shapes
:
шш*
dtype0

Nadam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ш*%
shared_nameNadam/dense_3/bias/v
z
(Nadam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_3/bias/v*
_output_shapes	
:ш*
dtype0

Nadam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш*'
shared_nameNadam/dense_4/kernel/v

*Nadam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_4/kernel/v*
_output_shapes
:	ш*
dtype0

Nadam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_4/bias/v
y
(Nadam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
&
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Щ%
valueП%BМ% BЕ%
ц
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
h


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
Р
iter

beta_1

beta_2
	decay
 learning_rate
!momentum_cache
mAmBmCmDmEmF
vGvHvIvJvKvL
 
 
*

0
1
2
3
4
5
­
"metrics
#non_trainable_variables
trainable_variables

$layers
regularization_losses
	variables
%layer_regularization_losses
&layer_metrics
 
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 


0
1
­
'metrics
(non_trainable_variables
trainable_variables

)layers
regularization_losses
	variables
*layer_regularization_losses
+layer_metrics
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
­
,metrics
-non_trainable_variables
trainable_variables

.layers
regularization_losses
	variables
/layer_regularization_losses
0layer_metrics
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
­
1metrics
2non_trainable_variables
trainable_variables

3layers
regularization_losses
	variables
4layer_regularization_losses
5layer_metrics
IG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE

60
71
*

0
1
2
3
4
5

0
1
2
 
 
 


0
1
 
 
 
 

0
1
 
 
 
 

0
1
 
 
 
4
	8total
	9count
:	variables
;	keras_api
D
	<total
	=count
>
_fn_kwargs
?	variables
@	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

80
91

:	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

?	variables
~|
VARIABLE_VALUENadam/dense_2/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUENadam/dense_2/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUENadam/dense_3/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUENadam/dense_3/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUENadam/dense_4/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUENadam/dense_4/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUENadam/dense_2/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUENadam/dense_2/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUENadam/dense_3/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUENadam/dense_3/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUENadam/dense_4/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUENadam/dense_4/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_dense_2_inputPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ђ
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_2_inputdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_7565774
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
й

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Nadam/dense_2/kernel/m/Read/ReadVariableOp(Nadam/dense_2/bias/m/Read/ReadVariableOp*Nadam/dense_3/kernel/m/Read/ReadVariableOp(Nadam/dense_3/bias/m/Read/ReadVariableOp*Nadam/dense_4/kernel/m/Read/ReadVariableOp(Nadam/dense_4/bias/m/Read/ReadVariableOp*Nadam/dense_2/kernel/v/Read/ReadVariableOp(Nadam/dense_2/bias/v/Read/ReadVariableOp*Nadam/dense_3/kernel/v/Read/ReadVariableOp(Nadam/dense_3/bias/v/Read/ReadVariableOp*Nadam/dense_4/kernel/v/Read/ReadVariableOp(Nadam/dense_4/bias/v/Read/ReadVariableOpConst*)
Tin"
 2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_7566025
Є
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotalcounttotal_1count_1Nadam/dense_2/kernel/mNadam/dense_2/bias/mNadam/dense_3/kernel/mNadam/dense_3/bias/mNadam/dense_4/kernel/mNadam/dense_4/bias/mNadam/dense_2/kernel/vNadam/dense_2/bias/vNadam/dense_3/kernel/vNadam/dense_3/bias/vNadam/dense_4/kernel/vNadam/dense_4/bias/v*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_7566119Рф
Л

%__inference_signature_wrapper_7565774
dense_2_input
unknown:	ш
	unknown_0:	ш
	unknown_1:
шш
	unknown_2:	ш
	unknown_3:	ш
	unknown_4:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_75655372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_2_input
ы

.__inference_sequential_2_layer_call_fn_7565711
dense_2_input
unknown:	ш
	unknown_0:	ш
	unknown_1:
шш
	unknown_2:	ш
	unknown_3:	ш
	unknown_4:
identityЂStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCalldense_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_75656792
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_2_input
И

ј
D__inference_dense_3_layer_call_and_return_conditional_losses_7565889

inputs2
matmul_readvariableop_resource:
шш.
biasadd_readvariableop_resource:	ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
шш*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџш: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
?
П
 __inference__traced_save_7566025
file_prefix-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_nadam_dense_2_kernel_m_read_readvariableop3
/savev2_nadam_dense_2_bias_m_read_readvariableop5
1savev2_nadam_dense_3_kernel_m_read_readvariableop3
/savev2_nadam_dense_3_bias_m_read_readvariableop5
1savev2_nadam_dense_4_kernel_m_read_readvariableop3
/savev2_nadam_dense_4_bias_m_read_readvariableop5
1savev2_nadam_dense_2_kernel_v_read_readvariableop3
/savev2_nadam_dense_2_bias_v_read_readvariableop5
1savev2_nadam_dense_3_kernel_v_read_readvariableop3
/savev2_nadam_dense_3_bias_v_read_readvariableop5
1savev2_nadam_dense_4_kernel_v_read_readvariableop3
/savev2_nadam_dense_4_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameС
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*г
valueЩBЦB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesТ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesИ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_nadam_dense_2_kernel_m_read_readvariableop/savev2_nadam_dense_2_bias_m_read_readvariableop1savev2_nadam_dense_3_kernel_m_read_readvariableop/savev2_nadam_dense_3_bias_m_read_readvariableop1savev2_nadam_dense_4_kernel_m_read_readvariableop/savev2_nadam_dense_4_bias_m_read_readvariableop1savev2_nadam_dense_2_kernel_v_read_readvariableop/savev2_nadam_dense_2_bias_v_read_readvariableop1savev2_nadam_dense_3_kernel_v_read_readvariableop/savev2_nadam_dense_3_bias_v_read_readvariableop1savev2_nadam_dense_4_kernel_v_read_readvariableop/savev2_nadam_dense_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Я
_input_shapesН
К: :	ш:ш:
шш:ш:	ш:: : : : : : : : : : :	ш:ш:
шш:ш:	ш::	ш:ш:
шш:ш:	ш:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	ш:!

_output_shapes	
:ш:&"
 
_output_shapes
:
шш:!

_output_shapes	
:ш:%!

_output_shapes
:	ш: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ш:!

_output_shapes	
:ш:&"
 
_output_shapes
:
шш:!

_output_shapes	
:ш:%!

_output_shapes
:	ш: 

_output_shapes
::%!

_output_shapes
:	ш:!

_output_shapes	
:ш:&"
 
_output_shapes
:
шш:!

_output_shapes	
:ш:%!

_output_shapes
:	ш: 

_output_shapes
::

_output_shapes
: 
Д

ї
D__inference_dense_2_layer_call_and_return_conditional_losses_7565869

inputs1
matmul_readvariableop_resource:	ш.
biasadd_readvariableop_resource:	ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ш*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ж

.__inference_sequential_2_layer_call_fn_7565841

inputs
unknown:	ш
	unknown_0:	ш
	unknown_1:
шш
	unknown_2:	ш
	unknown_3:	ш
	unknown_4:
identityЂStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_75655962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
И

ј
D__inference_dense_3_layer_call_and_return_conditional_losses_7565572

inputs2
matmul_readvariableop_resource:
шш.
biasadd_readvariableop_resource:	ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
шш*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџш: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
П
Ё
I__inference_sequential_2_layer_call_and_return_conditional_losses_7565730
dense_2_input"
dense_2_7565714:	ш
dense_2_7565716:	ш#
dense_3_7565719:
шш
dense_3_7565721:	ш"
dense_4_7565724:	ш
dense_4_7565726:
identityЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂdense_4/StatefulPartitionedCall
dense_2/StatefulPartitionedCallStatefulPartitionedCalldense_2_inputdense_2_7565714dense_2_7565716*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_75655552!
dense_2/StatefulPartitionedCallИ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_7565719dense_3_7565721*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_75655722!
dense_3/StatefulPartitionedCallЗ
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_7565724dense_4_7565726*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_75655892!
dense_4/StatefulPartitionedCallт
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_2_input


I__inference_sequential_2_layer_call_and_return_conditional_losses_7565799

inputs9
&dense_2_matmul_readvariableop_resource:	ш6
'dense_2_biasadd_readvariableop_resource:	ш:
&dense_3_matmul_readvariableop_resource:
шш6
'dense_3_biasadd_readvariableop_resource:	ш9
&dense_4_matmul_readvariableop_resource:	ш5
'dense_4_biasadd_readvariableop_resource:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂdense_4/BiasAdd/ReadVariableOpЂdense_4/MatMul/ReadVariableOpІ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	ш*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMulinputs%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_2/MatMulЅ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02 
dense_2/BiasAdd/ReadVariableOpЂ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_2/ReluЇ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
шш*
dtype02
dense_3/MatMul/ReadVariableOp 
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_3/MatMulЅ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02 
dense_3/BiasAdd/ReadVariableOpЂ
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_3/BiasAddq
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_3/ReluІ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	ш*
dtype02
dense_4/MatMul/ReadVariableOp
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/MatMulЄ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOpЁ
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/BiasAddy
dense_4/SigmoidSigmoiddense_4/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/SigmoidЊ
IdentityIdentitydense_4/Sigmoid:y:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ы

.__inference_sequential_2_layer_call_fn_7565611
dense_2_input
unknown:	ш
	unknown_0:	ш
	unknown_1:
шш
	unknown_2:	ш
	unknown_3:	ш
	unknown_4:
identityЂStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCalldense_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_75655962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_2_input
Ё

)__inference_dense_4_layer_call_fn_7565918

inputs
unknown:	ш
	unknown_0:
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_75655892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџш: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
Ѕ

)__inference_dense_3_layer_call_fn_7565898

inputs
unknown:
шш
	unknown_0:	ш
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_75655722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџш: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
П
Ё
I__inference_sequential_2_layer_call_and_return_conditional_losses_7565749
dense_2_input"
dense_2_7565733:	ш
dense_2_7565735:	ш#
dense_3_7565738:
шш
dense_3_7565740:	ш"
dense_4_7565743:	ш
dense_4_7565745:
identityЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂdense_4/StatefulPartitionedCall
dense_2/StatefulPartitionedCallStatefulPartitionedCalldense_2_inputdense_2_7565733dense_2_7565735*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_75655552!
dense_2/StatefulPartitionedCallИ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_7565738dense_3_7565740*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_75655722!
dense_3/StatefulPartitionedCallЗ
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_7565743dense_4_7565745*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_75655892!
dense_4/StatefulPartitionedCallт
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_2_input


I__inference_sequential_2_layer_call_and_return_conditional_losses_7565824

inputs9
&dense_2_matmul_readvariableop_resource:	ш6
'dense_2_biasadd_readvariableop_resource:	ш:
&dense_3_matmul_readvariableop_resource:
шш6
'dense_3_biasadd_readvariableop_resource:	ш9
&dense_4_matmul_readvariableop_resource:	ш5
'dense_4_biasadd_readvariableop_resource:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂdense_4/BiasAdd/ReadVariableOpЂdense_4/MatMul/ReadVariableOpІ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	ш*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMulinputs%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_2/MatMulЅ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02 
dense_2/BiasAdd/ReadVariableOpЂ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_2/ReluЇ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
шш*
dtype02
dense_3/MatMul/ReadVariableOp 
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_3/MatMulЅ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02 
dense_3/BiasAdd/ReadVariableOpЂ
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_3/BiasAddq
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_3/ReluІ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	ш*
dtype02
dense_4/MatMul/ReadVariableOp
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/MatMulЄ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOpЁ
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/BiasAddy
dense_4/SigmoidSigmoiddense_4/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/SigmoidЊ
IdentityIdentitydense_4/Sigmoid:y:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Д

ї
D__inference_dense_2_layer_call_and_return_conditional_losses_7565555

inputs1
matmul_readvariableop_resource:	ш.
biasadd_readvariableop_resource:	ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ш*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
пx
Ю
#__inference__traced_restore_7566119
file_prefix2
assignvariableop_dense_2_kernel:	ш.
assignvariableop_1_dense_2_bias:	ш5
!assignvariableop_2_dense_3_kernel:
шш.
assignvariableop_3_dense_3_bias:	ш4
!assignvariableop_4_dense_4_kernel:	ш-
assignvariableop_5_dense_4_bias:'
assignvariableop_6_nadam_iter:	 )
assignvariableop_7_nadam_beta_1: )
assignvariableop_8_nadam_beta_2: (
assignvariableop_9_nadam_decay: 1
'assignvariableop_10_nadam_learning_rate: 2
(assignvariableop_11_nadam_momentum_cache: #
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: =
*assignvariableop_16_nadam_dense_2_kernel_m:	ш7
(assignvariableop_17_nadam_dense_2_bias_m:	ш>
*assignvariableop_18_nadam_dense_3_kernel_m:
шш7
(assignvariableop_19_nadam_dense_3_bias_m:	ш=
*assignvariableop_20_nadam_dense_4_kernel_m:	ш6
(assignvariableop_21_nadam_dense_4_bias_m:=
*assignvariableop_22_nadam_dense_2_kernel_v:	ш7
(assignvariableop_23_nadam_dense_2_bias_v:	ш>
*assignvariableop_24_nadam_dense_3_kernel_v:
шш7
(assignvariableop_25_nadam_dense_3_bias_v:	ш=
*assignvariableop_26_nadam_dense_4_kernel_v:	ш6
(assignvariableop_27_nadam_dense_4_bias_v:
identity_29ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ч
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*г
valueЩBЦB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesШ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesН
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Є
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2І
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Є
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4І
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_4_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Є
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_4_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6Ђ
AssignVariableOp_6AssignVariableOpassignvariableop_6_nadam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Є
AssignVariableOp_7AssignVariableOpassignvariableop_7_nadam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Є
AssignVariableOp_8AssignVariableOpassignvariableop_8_nadam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѓ
AssignVariableOp_9AssignVariableOpassignvariableop_9_nadam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Џ
AssignVariableOp_10AssignVariableOp'assignvariableop_10_nadam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11А
AssignVariableOp_11AssignVariableOp(assignvariableop_11_nadam_momentum_cacheIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ё
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ё
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ѓ
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ѓ
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16В
AssignVariableOp_16AssignVariableOp*assignvariableop_16_nadam_dense_2_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17А
AssignVariableOp_17AssignVariableOp(assignvariableop_17_nadam_dense_2_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18В
AssignVariableOp_18AssignVariableOp*assignvariableop_18_nadam_dense_3_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19А
AssignVariableOp_19AssignVariableOp(assignvariableop_19_nadam_dense_3_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20В
AssignVariableOp_20AssignVariableOp*assignvariableop_20_nadam_dense_4_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21А
AssignVariableOp_21AssignVariableOp(assignvariableop_21_nadam_dense_4_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22В
AssignVariableOp_22AssignVariableOp*assignvariableop_22_nadam_dense_2_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23А
AssignVariableOp_23AssignVariableOp(assignvariableop_23_nadam_dense_2_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24В
AssignVariableOp_24AssignVariableOp*assignvariableop_24_nadam_dense_3_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25А
AssignVariableOp_25AssignVariableOp(assignvariableop_25_nadam_dense_3_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26В
AssignVariableOp_26AssignVariableOp*assignvariableop_26_nadam_dense_4_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27А
AssignVariableOp_27AssignVariableOp(assignvariableop_27_nadam_dense_4_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЦ
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28Й
Identity_29IdentityIdentity_28:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_29"#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ж

.__inference_sequential_2_layer_call_fn_7565858

inputs
unknown:	ш
	unknown_0:	ш
	unknown_1:
шш
	unknown_2:	ш
	unknown_3:	ш
	unknown_4:
identityЂStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_75656792
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ђ

)__inference_dense_2_layer_call_fn_7565878

inputs
unknown:	ш
	unknown_0:	ш
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_75655552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
В

і
D__inference_dense_4_layer_call_and_return_conditional_losses_7565589

inputs1
matmul_readvariableop_resource:	ш-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ш*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџш: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
Њ

I__inference_sequential_2_layer_call_and_return_conditional_losses_7565596

inputs"
dense_2_7565556:	ш
dense_2_7565558:	ш#
dense_3_7565573:
шш
dense_3_7565575:	ш"
dense_4_7565590:	ш
dense_4_7565592:
identityЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂdense_4/StatefulPartitionedCall
dense_2/StatefulPartitionedCallStatefulPartitionedCallinputsdense_2_7565556dense_2_7565558*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_75655552!
dense_2/StatefulPartitionedCallИ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_7565573dense_3_7565575*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_75655722!
dense_3/StatefulPartitionedCallЗ
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_7565590dense_4_7565592*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_75655892!
dense_4/StatefulPartitionedCallт
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ&

"__inference__wrapped_model_7565537
dense_2_inputF
3sequential_2_dense_2_matmul_readvariableop_resource:	шC
4sequential_2_dense_2_biasadd_readvariableop_resource:	шG
3sequential_2_dense_3_matmul_readvariableop_resource:
шшC
4sequential_2_dense_3_biasadd_readvariableop_resource:	шF
3sequential_2_dense_4_matmul_readvariableop_resource:	шB
4sequential_2_dense_4_biasadd_readvariableop_resource:
identityЂ+sequential_2/dense_2/BiasAdd/ReadVariableOpЂ*sequential_2/dense_2/MatMul/ReadVariableOpЂ+sequential_2/dense_3/BiasAdd/ReadVariableOpЂ*sequential_2/dense_3/MatMul/ReadVariableOpЂ+sequential_2/dense_4/BiasAdd/ReadVariableOpЂ*sequential_2/dense_4/MatMul/ReadVariableOpЭ
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	ш*
dtype02,
*sequential_2/dense_2/MatMul/ReadVariableOpК
sequential_2/dense_2/MatMulMatMuldense_2_input2sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
sequential_2/dense_2/MatMulЬ
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02-
+sequential_2/dense_2/BiasAdd/ReadVariableOpж
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
sequential_2/dense_2/BiasAdd
sequential_2/dense_2/ReluRelu%sequential_2/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
sequential_2/dense_2/ReluЮ
*sequential_2/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
шш*
dtype02,
*sequential_2/dense_3/MatMul/ReadVariableOpд
sequential_2/dense_3/MatMulMatMul'sequential_2/dense_2/Relu:activations:02sequential_2/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
sequential_2/dense_3/MatMulЬ
+sequential_2/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02-
+sequential_2/dense_3/BiasAdd/ReadVariableOpж
sequential_2/dense_3/BiasAddBiasAdd%sequential_2/dense_3/MatMul:product:03sequential_2/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
sequential_2/dense_3/BiasAdd
sequential_2/dense_3/ReluRelu%sequential_2/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
sequential_2/dense_3/ReluЭ
*sequential_2/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_4_matmul_readvariableop_resource*
_output_shapes
:	ш*
dtype02,
*sequential_2/dense_4/MatMul/ReadVariableOpг
sequential_2/dense_4/MatMulMatMul'sequential_2/dense_3/Relu:activations:02sequential_2/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/dense_4/MatMulЫ
+sequential_2/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_2/dense_4/BiasAdd/ReadVariableOpе
sequential_2/dense_4/BiasAddBiasAdd%sequential_2/dense_4/MatMul:product:03sequential_2/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/dense_4/BiasAdd 
sequential_2/dense_4/SigmoidSigmoid%sequential_2/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/dense_4/Sigmoid
IdentityIdentity sequential_2/dense_4/Sigmoid:y:0,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp,^sequential_2/dense_3/BiasAdd/ReadVariableOp+^sequential_2/dense_3/MatMul/ReadVariableOp,^sequential_2/dense_4/BiasAdd/ReadVariableOp+^sequential_2/dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp2Z
+sequential_2/dense_3/BiasAdd/ReadVariableOp+sequential_2/dense_3/BiasAdd/ReadVariableOp2X
*sequential_2/dense_3/MatMul/ReadVariableOp*sequential_2/dense_3/MatMul/ReadVariableOp2Z
+sequential_2/dense_4/BiasAdd/ReadVariableOp+sequential_2/dense_4/BiasAdd/ReadVariableOp2X
*sequential_2/dense_4/MatMul/ReadVariableOp*sequential_2/dense_4/MatMul/ReadVariableOp:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_2_input
Њ

I__inference_sequential_2_layer_call_and_return_conditional_losses_7565679

inputs"
dense_2_7565663:	ш
dense_2_7565665:	ш#
dense_3_7565668:
шш
dense_3_7565670:	ш"
dense_4_7565673:	ш
dense_4_7565675:
identityЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂdense_4/StatefulPartitionedCall
dense_2/StatefulPartitionedCallStatefulPartitionedCallinputsdense_2_7565663dense_2_7565665*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_75655552!
dense_2/StatefulPartitionedCallИ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_7565668dense_3_7565670*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_75655722!
dense_3/StatefulPartitionedCallЗ
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_7565673dense_4_7565675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_75655892!
dense_4/StatefulPartitionedCallт
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
В

і
D__inference_dense_4_layer_call_and_return_conditional_losses_7565909

inputs1
matmul_readvariableop_resource:	ш-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ш*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџш: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs"ЬL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ж
serving_defaultЂ
G
dense_2_input6
serving_default_dense_2_input:0џџџџџџџџџ;
dense_40
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Я
М+
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
M_default_save_signature
*N&call_and_return_all_conditional_losses
O__call__"ќ(
_tf_keras_sequentialн({"name": "sequential_2", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_2_input"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": false, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": false, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}, "shared_object_id": 6}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 20]}, "float32", "dense_2_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_2_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 2}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": false, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": false, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 7}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Nadam", "config": {"name": "Nadam", "learning_rate": 4.999999873689376e-05, "decay": 0.004, "beta_1": 0.8999999761581421, "beta_2": 0.8999999761581421, "epsilon": 1e-07}}}}




kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*P&call_and_return_all_conditional_losses
Q__call__"ъ
_tf_keras_layerа{"name": "dense_2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 2, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}, "shared_object_id": 6}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}}
 	

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*R&call_and_return_all_conditional_losses
S__call__"ћ
_tf_keras_layerс{"name": "dense_3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": false, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1000}}, "shared_object_id": 8}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000]}}
 	

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*T&call_and_return_all_conditional_losses
U__call__"ћ
_tf_keras_layerс{"name": "dense_4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_4", "trainable": false, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1000}}, "shared_object_id": 9}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000]}}
г
iter

beta_1

beta_2
	decay
 learning_rate
!momentum_cache
mAmBmCmDmEmF
vGvHvIvJvKvL"
	optimizer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
Ъ
"metrics
#non_trainable_variables
trainable_variables

$layers
regularization_losses
	variables
%layer_regularization_losses
&layer_metrics
O__call__
M_default_save_signature
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
,
Vserving_default"
signature_map
!:	ш2dense_2/kernel
:ш2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
­
'metrics
(non_trainable_variables
trainable_variables

)layers
regularization_losses
	variables
*layer_regularization_losses
+layer_metrics
Q__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
": 
шш2dense_3/kernel
:ш2dense_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
,metrics
-non_trainable_variables
trainable_variables

.layers
regularization_losses
	variables
/layer_regularization_losses
0layer_metrics
S__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
!:	ш2dense_4/kernel
:2dense_4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
1metrics
2non_trainable_variables
trainable_variables

3layers
regularization_losses
	variables
4layer_regularization_losses
5layer_metrics
U__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
.
60
71"
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
д
	8total
	9count
:	variables
;	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 10}

	<total
	=count
>
_fn_kwargs
?	variables
@	keras_api"Ъ
_tf_keras_metricЏ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 7}
:  (2total
:  (2count
.
80
91"
trackable_list_wrapper
-
:	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
<0
=1"
trackable_list_wrapper
-
?	variables"
_generic_user_object
':%	ш2Nadam/dense_2/kernel/m
!:ш2Nadam/dense_2/bias/m
(:&
шш2Nadam/dense_3/kernel/m
!:ш2Nadam/dense_3/bias/m
':%	ш2Nadam/dense_4/kernel/m
 :2Nadam/dense_4/bias/m
':%	ш2Nadam/dense_2/kernel/v
!:ш2Nadam/dense_2/bias/v
(:&
шш2Nadam/dense_3/kernel/v
!:ш2Nadam/dense_3/bias/v
':%	ш2Nadam/dense_4/kernel/v
 :2Nadam/dense_4/bias/v
ц2у
"__inference__wrapped_model_7565537М
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *,Ђ)
'$
dense_2_inputџџџџџџџџџ
ђ2я
I__inference_sequential_2_layer_call_and_return_conditional_losses_7565799
I__inference_sequential_2_layer_call_and_return_conditional_losses_7565824
I__inference_sequential_2_layer_call_and_return_conditional_losses_7565730
I__inference_sequential_2_layer_call_and_return_conditional_losses_7565749Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
2
.__inference_sequential_2_layer_call_fn_7565611
.__inference_sequential_2_layer_call_fn_7565841
.__inference_sequential_2_layer_call_fn_7565858
.__inference_sequential_2_layer_call_fn_7565711Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
D__inference_dense_2_layer_call_and_return_conditional_losses_7565869Ђ
В
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
annotationsЊ *
 
г2а
)__inference_dense_2_layer_call_fn_7565878Ђ
В
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
annotationsЊ *
 
ю2ы
D__inference_dense_3_layer_call_and_return_conditional_losses_7565889Ђ
В
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
annotationsЊ *
 
г2а
)__inference_dense_3_layer_call_fn_7565898Ђ
В
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
annotationsЊ *
 
ю2ы
D__inference_dense_4_layer_call_and_return_conditional_losses_7565909Ђ
В
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
annotationsЊ *
 
г2а
)__inference_dense_4_layer_call_fn_7565918Ђ
В
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
annotationsЊ *
 
вBЯ
%__inference_signature_wrapper_7565774dense_2_input"
В
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
annotationsЊ *
 
"__inference__wrapped_model_7565537s
6Ђ3
,Ђ)
'$
dense_2_inputџџџџџџџџџ
Њ "1Њ.
,
dense_4!
dense_4џџџџџџџџџЅ
D__inference_dense_2_layer_call_and_return_conditional_losses_7565869]
/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџш
 }
)__inference_dense_2_layer_call_fn_7565878P
/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџшІ
D__inference_dense_3_layer_call_and_return_conditional_losses_7565889^0Ђ-
&Ђ#
!
inputsџџџџџџџџџш
Њ "&Ђ#

0џџџџџџџџџш
 ~
)__inference_dense_3_layer_call_fn_7565898Q0Ђ-
&Ђ#
!
inputsџџџџџџџџџш
Њ "џџџџџџџџџшЅ
D__inference_dense_4_layer_call_and_return_conditional_losses_7565909]0Ђ-
&Ђ#
!
inputsџџџџџџџџџш
Њ "%Ђ"

0џџџџџџџџџ
 }
)__inference_dense_4_layer_call_fn_7565918P0Ђ-
&Ђ#
!
inputsџџџџџџџџџш
Њ "џџџџџџџџџМ
I__inference_sequential_2_layer_call_and_return_conditional_losses_7565730o
>Ђ;
4Ђ1
'$
dense_2_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 М
I__inference_sequential_2_layer_call_and_return_conditional_losses_7565749o
>Ђ;
4Ђ1
'$
dense_2_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Е
I__inference_sequential_2_layer_call_and_return_conditional_losses_7565799h
7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Е
I__inference_sequential_2_layer_call_and_return_conditional_losses_7565824h
7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
.__inference_sequential_2_layer_call_fn_7565611b
>Ђ;
4Ђ1
'$
dense_2_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
.__inference_sequential_2_layer_call_fn_7565711b
>Ђ;
4Ђ1
'$
dense_2_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
.__inference_sequential_2_layer_call_fn_7565841[
7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
.__inference_sequential_2_layer_call_fn_7565858[
7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџЎ
%__inference_signature_wrapper_7565774
GЂD
Ђ 
=Њ:
8
dense_2_input'$
dense_2_inputџџџџџџџџџ"1Њ.
,
dense_4!
dense_4џџџџџџџџџ