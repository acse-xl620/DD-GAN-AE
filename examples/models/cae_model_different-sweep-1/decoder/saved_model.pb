уУ
Ї§
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ж
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
 "serve*2.5.02v2.5.0-0-ga4dfb8d1a718Ия

y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
H*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	
H*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:H*
dtype0

conv3d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:* 
shared_nameconv3d_3/kernel

#conv3d_3/kernel/Read/ReadVariableOpReadVariableOpconv3d_3/kernel*,
_output_shapes
:*
dtype0
s
conv3d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_3/bias
l
!conv3d_3/bias/Read/ReadVariableOpReadVariableOpconv3d_3/bias*
_output_shapes	
:*
dtype0

conv3d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@* 
shared_nameconv3d_4/kernel

#conv3d_4/kernel/Read/ReadVariableOpReadVariableOpconv3d_4/kernel*+
_output_shapes
:@*
dtype0
r
conv3d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_4/bias
k
!conv3d_4/bias/Read/ReadVariableOpReadVariableOpconv3d_4/bias*
_output_shapes
:@*
dtype0

conv3d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv3d_5/kernel

#conv3d_5/kernel/Read/ReadVariableOpReadVariableOpconv3d_5/kernel**
_output_shapes
:@ *
dtype0
r
conv3d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d_5/bias
k
!conv3d_5/bias/Read/ReadVariableOpReadVariableOpconv3d_5/bias*
_output_shapes
: *
dtype0

conv3d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_6/kernel

#conv3d_6/kernel/Read/ReadVariableOpReadVariableOpconv3d_6/kernel**
_output_shapes
: *
dtype0
r
conv3d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_6/bias
k
!conv3d_6/bias/Read/ReadVariableOpReadVariableOpconv3d_6/bias*
_output_shapes
:*
dtype0

NoOpNoOp
к(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*(
value(B( B(

layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9

signatures
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api


kernel
bias
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
w
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api


kernel
bias
#_self_saveable_object_factories
 trainable_variables
!regularization_losses
"	variables
#	keras_api
w
#$_self_saveable_object_factories
%trainable_variables
&regularization_losses
'	variables
(	keras_api


)kernel
*bias
#+_self_saveable_object_factories
,trainable_variables
-regularization_losses
.	variables
/	keras_api
w
#0_self_saveable_object_factories
1trainable_variables
2regularization_losses
3	variables
4	keras_api


5kernel
6bias
#7_self_saveable_object_factories
8trainable_variables
9regularization_losses
:	variables
;	keras_api
w
#<_self_saveable_object_factories
=trainable_variables
>regularization_losses
?	variables
@	keras_api


Akernel
Bbias
#C_self_saveable_object_factories
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
w
#H_self_saveable_object_factories
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
 
 
F
0
1
2
3
)4
*5
56
67
A8
B9
 
F
0
1
2
3
)4
*5
56
67
A8
B9
­
trainable_variables
regularization_losses
Mnon_trainable_variables
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables

Qlayers
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
­
trainable_variables
regularization_losses
Rnon_trainable_variables
Slayer_regularization_losses
Tmetrics
Ulayer_metrics
	variables

Vlayers
 
 
 
 
­
trainable_variables
regularization_losses
Wnon_trainable_variables
Xlayer_regularization_losses
Ymetrics
Zlayer_metrics
	variables

[layers
[Y
VARIABLE_VALUEconv3d_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
­
 trainable_variables
!regularization_losses
\non_trainable_variables
]layer_regularization_losses
^metrics
_layer_metrics
"	variables

`layers
 
 
 
 
­
%trainable_variables
&regularization_losses
anon_trainable_variables
blayer_regularization_losses
cmetrics
dlayer_metrics
'	variables

elayers
[Y
VARIABLE_VALUEconv3d_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1
 

)0
*1
­
,trainable_variables
-regularization_losses
fnon_trainable_variables
glayer_regularization_losses
hmetrics
ilayer_metrics
.	variables

jlayers
 
 
 
 
­
1trainable_variables
2regularization_losses
knon_trainable_variables
llayer_regularization_losses
mmetrics
nlayer_metrics
3	variables

olayers
[Y
VARIABLE_VALUEconv3d_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

50
61
 

50
61
­
8trainable_variables
9regularization_losses
pnon_trainable_variables
qlayer_regularization_losses
rmetrics
slayer_metrics
:	variables

tlayers
 
 
 
 
­
=trainable_variables
>regularization_losses
unon_trainable_variables
vlayer_regularization_losses
wmetrics
xlayer_metrics
?	variables

ylayers
[Y
VARIABLE_VALUEconv3d_6/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_6/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

A0
B1
 

A0
B1
­
Dtrainable_variables
Eregularization_losses
znon_trainable_variables
{layer_regularization_losses
|metrics
}layer_metrics
F	variables

~layers
 
 
 
 
Б
Itrainable_variables
Jregularization_losses
non_trainable_variables
 layer_regularization_losses
metrics
layer_metrics
K	variables
layers
 
 
 
 
F
0
1
2
3
4
5
6
7
	8

9
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

serving_default_dense_1_inputPlaceholder*'
_output_shapes
:џџџџџџџџџ
*
dtype0*
shape:џџџџџџџџџ

љ
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_1_inputdense_1/kerneldense_1/biasconv3d_3/kernelconv3d_3/biasconv3d_4/kernelconv3d_4/biasconv3d_5/kernelconv3d_5/biasconv3d_6/kernelconv3d_6/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_424767
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp#conv3d_3/kernel/Read/ReadVariableOp!conv3d_3/bias/Read/ReadVariableOp#conv3d_4/kernel/Read/ReadVariableOp!conv3d_4/bias/Read/ReadVariableOp#conv3d_5/kernel/Read/ReadVariableOp!conv3d_5/bias/Read/ReadVariableOp#conv3d_6/kernel/Read/ReadVariableOp!conv3d_6/bias/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8 *(
f#R!
__inference__traced_save_425482
С
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biasconv3d_3/kernelconv3d_3/biasconv3d_4/kernelconv3d_4/biasconv3d_5/kernelconv3d_5/biasconv3d_6/kernelconv3d_6/bias*
Tin
2*
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
GPU2*0J 8 *+
f&R$
"__inference__traced_restore_425522Ѕ

С

D__inference_conv3d_3_layer_call_and_return_conditional_losses_424270

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpЉ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :џџџџџџџџџ*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2
ReluЄ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџ
 
_user_specified_nameinputs
Х'
g
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_424445

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0inputs*
T0*И
_output_shapesЅ
Ђ:џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 *
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisс
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15split:output:16split:output:16split:output:17split:output:17split:output:18split:output:18split:output:19split:output:19split:output:20split:output:20split:output:21split:output:21split:output:22split:output:22split:output:23split:output:23split:output:24split:output:24split:output:25split:output:25split:output:26split:output:26split:output:27split:output:27split:output:28split:output:28split:output:29split:output:29concat/axis:output:0*
N<*
T0*3
_output_shapes!
:џџџџџџџџџ<

 2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimБ
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*Ь
_output_shapesЙ
Ж:џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 *
	num_split
2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axisч
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ<
 2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dimГ
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*Ь
_output_shapesЙ
Ж:џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< *
	num_split
2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axisч
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ< 2

concat_2q
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ< 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ

 :[ W
3
_output_shapes!
:џџџџџџџџџ

 
 
_user_specified_nameinputs

g
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_425316

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0inputs*
T0*
_output_shapesѓ
№:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15concat/axis:output:0*
N *
T0*3
_output_shapes!
:џџџџџџџџџ @2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*а
_output_shapesН
К:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axisз
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ @2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dimЗ
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*а
_output_shapesН
К:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axisз
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ @2

concat_2q
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@:[ W
3
_output_shapes!
:џџџџџџџџџ@
 
_user_specified_nameinputs
Љ

І
$__inference_signature_wrapper_424767
dense_1_input
unknown:	
H
	unknown_0:	H)
	unknown_1:
	unknown_2:	(
	unknown_3:@
	unknown_4:@'
	unknown_5:@ 
	unknown_6: '
	unknown_7: 
	unknown_8:
identityЂStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCalldense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_4242032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ

'
_user_specified_namedense_1_input
й

Џ
-__inference_sequential_1_layer_call_fn_424672
dense_1_input
unknown:	
H
	unknown_0:	H)
	unknown_1:
	unknown_2:	(
	unknown_3:@
	unknown_4:@'
	unknown_5:@ 
	unknown_6: '
	unknown_7: 
	unknown_8:
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCalldense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_4246242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ

'
_user_specified_namedense_1_input
Ф"
Р
__inference__traced_save_425482
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop.
*savev2_conv3d_3_kernel_read_readvariableop,
(savev2_conv3d_3_bias_read_readvariableop.
*savev2_conv3d_4_kernel_read_readvariableop,
(savev2_conv3d_4_bias_read_readvariableop.
*savev2_conv3d_5_kernel_read_readvariableop,
(savev2_conv3d_5_bias_read_readvariableop.
*savev2_conv3d_6_kernel_read_readvariableop,
(savev2_conv3d_6_bias_read_readvariableop
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
ShardedFilenameЧ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*й
valueЯBЬB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
SaveV2/shape_and_slices№
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop*savev2_conv3d_3_kernel_read_readvariableop(savev2_conv3d_3_bias_read_readvariableop*savev2_conv3d_4_kernel_read_readvariableop(savev2_conv3d_4_bias_read_readvariableop*savev2_conv3d_5_kernel_read_readvariableop(savev2_conv3d_5_bias_read_readvariableop*savev2_conv3d_6_kernel_read_readvariableop(savev2_conv3d_6_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*
_input_shapes
: :	
H:H:::@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	
H:!

_output_shapes	
:H:2.
,
_output_shapes
::!

_output_shapes	
::1-
+
_output_shapes
:@: 

_output_shapes
:@:0,
*
_output_shapes
:@ : 

_output_shapes
: :0	,
*
_output_shapes
: : 


_output_shapes
::

_output_shapes
: 
Й

D__inference_conv3d_4_layer_call_and_return_conditional_losses_425266

inputs=
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@*
dtype02
Conv3D/ReadVariableOpЈ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@2
ReluЃ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџ
 
_user_specified_nameinputs
Ж

D__inference_conv3d_5_layer_call_and_return_conditional_losses_425332

inputs<
conv3d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@ *
dtype02
Conv3D/ReadVariableOpЉ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 *
paddingVALID*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 2
ReluЃ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:џџџџџџџџџ

 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ @
 
_user_specified_nameinputs
й

Џ
-__inference_sequential_1_layer_call_fn_424489
dense_1_input
unknown:	
H
	unknown_0:	H)
	unknown_1:
	unknown_2:	(
	unknown_3:@
	unknown_4:@'
	unknown_5:@ 
	unknown_6: '
	unknown_7: 
	unknown_8:
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCalldense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_4244662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ

'
_user_specified_namedense_1_input
-

H__inference_sequential_1_layer_call_and_return_conditional_losses_424466

inputs!
dense_1_424237:	
H
dense_1_424239:	H/
conv3d_3_424271:
conv3d_3_424273:	.
conv3d_4_424317:@
conv3d_4_424319:@-
conv3d_5_424377:@ 
conv3d_5_424379: -
conv3d_6_424459: 
conv3d_6_424461:
identityЂ conv3d_3/StatefulPartitionedCallЂ conv3d_4/StatefulPartitionedCallЂ conv3d_5/StatefulPartitionedCallЂ conv3d_6/StatefulPartitionedCallЂdense_1/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_424237dense_1_424239*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџH*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_4242362!
dense_1/StatefulPartitionedCall
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_4242572
reshape/PartitionedCallО
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv3d_3_424271conv3d_3_424273*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_3_layer_call_and_return_conditional_losses_4242702"
 conv3d_3/StatefulPartitionedCall
up_sampling3d/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_4243032
up_sampling3d/PartitionedCallУ
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling3d/PartitionedCall:output:0conv3d_4_424317conv3d_4_424319*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_4_layer_call_and_return_conditional_losses_4243162"
 conv3d_4/StatefulPartitionedCall
up_sampling3d_1/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_4243632!
up_sampling3d_1/PartitionedCallХ
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_1/PartitionedCall:output:0conv3d_5_424377conv3d_5_424379*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_4243762"
 conv3d_5/StatefulPartitionedCall
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_4244452!
up_sampling3d_2/PartitionedCallХ
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_6_424459conv3d_6_424461*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_6_layer_call_and_return_conditional_losses_4244582"
 conv3d_6/StatefulPartitionedCall
cropping3d/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_cropping3d_layer_call_and_return_conditional_losses_4242122
cropping3d/PartitionedCallБ
IdentityIdentity#cropping3d/PartitionedCall:output:0!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Г

і
C__inference_dense_1_layer_call_and_return_conditional_losses_425174

inputs1
matmul_readvariableop_resource:	
H.
biasadd_readvariableop_resource:	H
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
H*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџH2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:H*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџH2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџH2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџH2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
к
Ђ
)__inference_conv3d_6_layer_call_fn_425429

inputs%
unknown: 
	unknown_0:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_6_layer_call_and_return_conditional_losses_4244582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ< : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ< 
 
_user_specified_nameinputs
Й

D__inference_conv3d_4_layer_call_and_return_conditional_losses_424316

inputs=
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@*
dtype02
Conv3D/ReadVariableOpЈ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@2
ReluЃ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџ
 
_user_specified_nameinputs
н
Ѓ
)__inference_conv3d_4_layer_call_fn_425275

inputs&
unknown:@
	unknown_0:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_4_layer_call_and_return_conditional_losses_4243162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџ
 
_user_specified_nameinputs
§
J
.__inference_up_sampling3d_layer_call_fn_425255

inputs
identityз
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_4243032
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ:\ X
4
_output_shapes"
 :џџџџџџџџџ
 
_user_specified_nameinputs

_
C__inference_reshape_layer_call_and_return_conditional_losses_424257

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3e
Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value
B :2
Reshape/shape/4д
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape|
ReshapeReshapeinputsReshape/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2	
Reshapeq
IdentityIdentityReshape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџH:P L
(
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
 

(__inference_dense_1_layer_call_fn_425183

inputs
unknown:	
H
	unknown_0:	H
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџH*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_4242362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџH2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
З

D__inference_conv3d_6_layer_call_and_return_conditional_losses_425420

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpЈ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ<*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ<2	
BiasAddm
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ<2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ< : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ< 
 
_user_specified_nameinputs
Ж

D__inference_conv3d_5_layer_call_and_return_conditional_losses_424376

inputs<
conv3d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@ *
dtype02
Conv3D/ReadVariableOpЉ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 *
paddingVALID*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 2
ReluЃ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:џџџџџџџџџ

 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ @
 
_user_specified_nameinputs
к
Ђ
)__inference_conv3d_5_layer_call_fn_425341

inputs%
unknown:@ 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_4243762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ

 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ @: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ @
 
_user_specified_nameinputs
Х'
g
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_425404

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0inputs*
T0*И
_output_shapesЅ
Ђ:џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 *
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisс
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15split:output:16split:output:16split:output:17split:output:17split:output:18split:output:18split:output:19split:output:19split:output:20split:output:20split:output:21split:output:21split:output:22split:output:22split:output:23split:output:23split:output:24split:output:24split:output:25split:output:25split:output:26split:output:26split:output:27split:output:27split:output:28split:output:28split:output:29split:output:29concat/axis:output:0*
N<*
T0*3
_output_shapes!
:џџџџџџџџџ<

 2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimБ
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*Ь
_output_shapesЙ
Ж:џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 *
	num_split
2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axisч
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ<
 2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dimГ
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*Ь
_output_shapesЙ
Ж:џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< *
	num_split
2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axisч
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ< 2

concat_2q
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ< 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ

 :[ W
3
_output_shapes!
:џџџџџџџџџ

 
 
_user_specified_nameinputs
й
D
(__inference_reshape_layer_call_fn_425203

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_4242572
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџH:P L
(
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
г.
Щ
"__inference__traced_restore_425522
file_prefix2
assignvariableop_dense_1_kernel:	
H.
assignvariableop_1_dense_1_bias:	HB
"assignvariableop_2_conv3d_3_kernel:/
 assignvariableop_3_conv3d_3_bias:	A
"assignvariableop_4_conv3d_4_kernel:@.
 assignvariableop_5_conv3d_4_bias:@@
"assignvariableop_6_conv3d_5_kernel:@ .
 assignvariableop_7_conv3d_5_bias: @
"assignvariableop_8_conv3d_6_kernel: .
 assignvariableop_9_conv3d_6_bias:
identity_11ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Э
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*й
valueЯBЬB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЄ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
RestoreV2/shape_and_slicesт
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Є
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ї
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv3d_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѕ
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv3d_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ї
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv3d_4_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ѕ
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv3d_4_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ї
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv3d_5_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѕ
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv3d_5_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ї
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv3d_6_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѕ
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv3d_6_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpК
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_10­
Identity_11IdentityIdentity_10:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_11"#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
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
Ф

Ј
-__inference_sequential_1_layer_call_fn_425163

inputs
unknown:	
H
	unknown_0:	H)
	unknown_1:
	unknown_2:	(
	unknown_3:@
	unknown_4:@'
	unknown_5:@ 
	unknown_6: '
	unknown_7: 
	unknown_8:
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_4246242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

e
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_424303

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimь
splitSplitsplit/split_dim:output:0inputs*
T0*
_output_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisњ
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7concat/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimи
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*t
_output_shapesb
`:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axisь
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dimк
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*t
_output_shapesb
`:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axisь
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2

concat_2r
IdentityIdentityconcat_2:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ:\ X
4
_output_shapes"
 :џџџџџџџџџ
 
_user_specified_nameinputs
с
Ѕ
)__inference_conv3d_3_layer_call_fn_425223

inputs'
unknown:
	unknown_0:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_3_layer_call_and_return_conditional_losses_4242702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџ
 
_user_specified_nameinputs

e
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_425250

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimь
splitSplitsplit/split_dim:output:0inputs*
T0*
_output_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisњ
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7concat/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimи
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*t
_output_shapesb
`:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axisь
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dimк
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*t
_output_shapesb
`:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axisь
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2

concat_2r
IdentityIdentityconcat_2:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ:\ X
4
_output_shapes"
 :џџџџџџџџџ
 
_user_specified_nameinputs
Ј-

H__inference_sequential_1_layer_call_and_return_conditional_losses_424740
dense_1_input!
dense_1_424709:	
H
dense_1_424711:	H/
conv3d_3_424715:
conv3d_3_424717:	.
conv3d_4_424721:@
conv3d_4_424723:@-
conv3d_5_424727:@ 
conv3d_5_424729: -
conv3d_6_424733: 
conv3d_6_424735:
identityЂ conv3d_3/StatefulPartitionedCallЂ conv3d_4/StatefulPartitionedCallЂ conv3d_5/StatefulPartitionedCallЂ conv3d_6/StatefulPartitionedCallЂdense_1/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCalldense_1_inputdense_1_424709dense_1_424711*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџH*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_4242362!
dense_1/StatefulPartitionedCall
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_4242572
reshape/PartitionedCallО
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv3d_3_424715conv3d_3_424717*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_3_layer_call_and_return_conditional_losses_4242702"
 conv3d_3/StatefulPartitionedCall
up_sampling3d/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_4243032
up_sampling3d/PartitionedCallУ
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling3d/PartitionedCall:output:0conv3d_4_424721conv3d_4_424723*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_4_layer_call_and_return_conditional_losses_4243162"
 conv3d_4/StatefulPartitionedCall
up_sampling3d_1/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_4243632!
up_sampling3d_1/PartitionedCallХ
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_1/PartitionedCall:output:0conv3d_5_424727conv3d_5_424729*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_4243762"
 conv3d_5/StatefulPartitionedCall
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_4244452!
up_sampling3d_2/PartitionedCallХ
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_6_424733conv3d_6_424735*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_6_layer_call_and_return_conditional_losses_4244582"
 conv3d_6/StatefulPartitionedCall
cropping3d/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_cropping3d_layer_call_and_return_conditional_losses_4242122
cropping3d/PartitionedCallБ
IdentityIdentity#cropping3d/PartitionedCall:output:0!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ

'
_user_specified_namedense_1_input
§
L
0__inference_up_sampling3d_1_layer_call_fn_425321

inputs
identityи
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_4243632
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@:[ W
3
_output_shapes!
:џџџџџџџџџ@
 
_user_specified_nameinputs
§
L
0__inference_up_sampling3d_2_layer_call_fn_425409

inputs
identityи
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_4244452
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ< 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ

 :[ W
3
_output_shapes!
:џџџџџџџџџ

 
 
_user_specified_nameinputs

G
+__inference_cropping3d_layer_call_fn_424218

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_cropping3d_layer_call_and_return_conditional_losses_4242122
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_424363

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0inputs*
T0*
_output_shapesѓ
№:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15concat/axis:output:0*
N *
T0*3
_output_shapes!
:џџџџџџџџџ @2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*а
_output_shapesН
К:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axisз
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ @2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dimЗ
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*а
_output_shapesН
К:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axisз
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ @2

concat_2q
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@:[ W
3
_output_shapes!
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ф

Ј
-__inference_sequential_1_layer_call_fn_425138

inputs
unknown:	
H
	unknown_0:	H)
	unknown_1:
	unknown_2:	(
	unknown_3:@
	unknown_4:@'
	unknown_5:@ 
	unknown_6: '
	unknown_7: 
	unknown_8:
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_4244662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Г

і
C__inference_dense_1_layer_call_and_return_conditional_losses_424236

inputs1
matmul_readvariableop_resource:	
H.
biasadd_readvariableop_resource:	H
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
H*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџH2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:H*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџH2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџH2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџH2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
З

D__inference_conv3d_6_layer_call_and_return_conditional_losses_424458

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpЈ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ<*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ<2	
BiasAddm
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ<2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ< : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ< 
 
_user_specified_nameinputs
ё	
b
F__inference_cropping3d_layer_call_and_return_conditional_losses_424212

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               2
strided_slice/stack_2Ѕ
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_mask2
strided_slice
IdentityIdentitystrided_slice:output:0*
T0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ: {
W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
-

H__inference_sequential_1_layer_call_and_return_conditional_losses_424624

inputs!
dense_1_424593:	
H
dense_1_424595:	H/
conv3d_3_424599:
conv3d_3_424601:	.
conv3d_4_424605:@
conv3d_4_424607:@-
conv3d_5_424611:@ 
conv3d_5_424613: -
conv3d_6_424617: 
conv3d_6_424619:
identityЂ conv3d_3/StatefulPartitionedCallЂ conv3d_4/StatefulPartitionedCallЂ conv3d_5/StatefulPartitionedCallЂ conv3d_6/StatefulPartitionedCallЂdense_1/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_424593dense_1_424595*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџH*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_4242362!
dense_1/StatefulPartitionedCall
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_4242572
reshape/PartitionedCallО
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv3d_3_424599conv3d_3_424601*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_3_layer_call_and_return_conditional_losses_4242702"
 conv3d_3/StatefulPartitionedCall
up_sampling3d/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_4243032
up_sampling3d/PartitionedCallУ
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling3d/PartitionedCall:output:0conv3d_4_424605conv3d_4_424607*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_4_layer_call_and_return_conditional_losses_4243162"
 conv3d_4/StatefulPartitionedCall
up_sampling3d_1/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_4243632!
up_sampling3d_1/PartitionedCallХ
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_1/PartitionedCall:output:0conv3d_5_424611conv3d_5_424613*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_4243762"
 conv3d_5/StatefulPartitionedCall
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_4244452!
up_sampling3d_2/PartitionedCallХ
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_6_424617conv3d_6_424619*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_6_layer_call_and_return_conditional_losses_4244582"
 conv3d_6/StatefulPartitionedCall
cropping3d/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_cropping3d_layer_call_and_return_conditional_losses_4242122
cropping3d/PartitionedCallБ
IdentityIdentity#cropping3d/PartitionedCall:output:0!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

_
C__inference_reshape_layer_call_and_return_conditional_losses_425198

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3e
Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value
B :2
Reshape/shape/4д
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape|
ReshapeReshapeinputsReshape/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2	
Reshapeq
IdentityIdentityReshape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџH:P L
(
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
ЭЙ
Ї
H__inference_sequential_1_layer_call_and_return_conditional_losses_425113

inputs9
&dense_1_matmul_readvariableop_resource:	
H6
'dense_1_biasadd_readvariableop_resource:	HG
'conv3d_3_conv3d_readvariableop_resource:7
(conv3d_3_biasadd_readvariableop_resource:	F
'conv3d_4_conv3d_readvariableop_resource:@6
(conv3d_4_biasadd_readvariableop_resource:@E
'conv3d_5_conv3d_readvariableop_resource:@ 6
(conv3d_5_biasadd_readvariableop_resource: E
'conv3d_6_conv3d_readvariableop_resource: 6
(conv3d_6_biasadd_readvariableop_resource:
identityЂconv3d_3/BiasAdd/ReadVariableOpЂconv3d_3/Conv3D/ReadVariableOpЂconv3d_4/BiasAdd/ReadVariableOpЂconv3d_4/Conv3D/ReadVariableOpЂconv3d_5/BiasAdd/ReadVariableOpЂconv3d_5/Conv3D/ReadVariableOpЂconv3d_6/BiasAdd/ReadVariableOpЂconv3d_6/Conv3D/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpІ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	
H*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџH2
dense_1/MatMulЅ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:H*
dtype02 
dense_1/BiasAdd/ReadVariableOpЂ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџH2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџH2
dense_1/Reluh
reshape/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:2
reshape/Shape
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/3u
reshape/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value
B :2
reshape/Reshape/shape/4
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0 reshape/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shapeЈ
reshape/ReshapeReshapedense_1/Relu:activations:0reshape/Reshape/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2
reshape/ReshapeЖ
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype02 
conv3d_3/Conv3D/ReadVariableOpж
conv3d_3/Conv3DConv3Dreshape/Reshape:output:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :џџџџџџџџџ*
paddingSAME*
strides	
2
conv3d_3/Conv3DЈ
conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv3d_3/BiasAdd/ReadVariableOpБ
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2
conv3d_3/BiasAdd
conv3d_3/ReluReluconv3d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2
conv3d_3/Relu
up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/split/split_dimЋ
up_sampling3d/splitSplit&up_sampling3d/split/split_dim:output:0conv3d_3/Relu:activations:0*
T0*
_output_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
up_sampling3d/splitx
up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat/axis
up_sampling3d/concatConcatV2up_sampling3d/split:output:0up_sampling3d/split:output:0up_sampling3d/split:output:1up_sampling3d/split:output:1up_sampling3d/split:output:2up_sampling3d/split:output:2up_sampling3d/split:output:3up_sampling3d/split:output:3up_sampling3d/split:output:4up_sampling3d/split:output:4up_sampling3d/split:output:5up_sampling3d/split:output:5up_sampling3d/split:output:6up_sampling3d/split:output:6up_sampling3d/split:output:7up_sampling3d/split:output:7"up_sampling3d/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2
up_sampling3d/concat
up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_1/split_dim
up_sampling3d/split_1Split(up_sampling3d/split_1/split_dim:output:0up_sampling3d/concat:output:0*
T0*t
_output_shapesb
`:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
up_sampling3d/split_1|
up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_1/axisъ
up_sampling3d/concat_1ConcatV2up_sampling3d/split_1:output:0up_sampling3d/split_1:output:0up_sampling3d/split_1:output:1up_sampling3d/split_1:output:1up_sampling3d/split_1:output:2up_sampling3d/split_1:output:2$up_sampling3d/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2
up_sampling3d/concat_1
up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_2/split_dim
up_sampling3d/split_2Split(up_sampling3d/split_2/split_dim:output:0up_sampling3d/concat_1:output:0*
T0*t
_output_shapesb
`:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
up_sampling3d/split_2|
up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_2/axisъ
up_sampling3d/concat_2ConcatV2up_sampling3d/split_2:output:0up_sampling3d/split_2:output:0up_sampling3d/split_2:output:1up_sampling3d/split_2:output:1up_sampling3d/split_2:output:2up_sampling3d/split_2:output:2$up_sampling3d/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2
up_sampling3d/concat_2Е
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype02 
conv3d_4/Conv3D/ReadVariableOpм
conv3d_4/Conv3DConv3Dup_sampling3d/concat_2:output:0&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@*
paddingSAME*
strides	
2
conv3d_4/Conv3DЇ
conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv3d_4/BiasAdd/ReadVariableOpА
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@2
conv3d_4/BiasAdd
conv3d_4/ReluReluconv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@2
conv3d_4/Relu
up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_1/split/split_dimЁ
up_sampling3d_1/splitSplit(up_sampling3d_1/split/split_dim:output:0conv3d_4/Relu:activations:0*
T0*
_output_shapesѓ
№:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
up_sampling3d_1/split|
up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat/axisЕ	
up_sampling3d_1/concatConcatV2up_sampling3d_1/split:output:0up_sampling3d_1/split:output:0up_sampling3d_1/split:output:1up_sampling3d_1/split:output:1up_sampling3d_1/split:output:2up_sampling3d_1/split:output:2up_sampling3d_1/split:output:3up_sampling3d_1/split:output:3up_sampling3d_1/split:output:4up_sampling3d_1/split:output:4up_sampling3d_1/split:output:5up_sampling3d_1/split:output:5up_sampling3d_1/split:output:6up_sampling3d_1/split:output:6up_sampling3d_1/split:output:7up_sampling3d_1/split:output:7up_sampling3d_1/split:output:8up_sampling3d_1/split:output:8up_sampling3d_1/split:output:9up_sampling3d_1/split:output:9up_sampling3d_1/split:output:10up_sampling3d_1/split:output:10up_sampling3d_1/split:output:11up_sampling3d_1/split:output:11up_sampling3d_1/split:output:12up_sampling3d_1/split:output:12up_sampling3d_1/split:output:13up_sampling3d_1/split:output:13up_sampling3d_1/split:output:14up_sampling3d_1/split:output:14up_sampling3d_1/split:output:15up_sampling3d_1/split:output:15$up_sampling3d_1/concat/axis:output:0*
N *
T0*3
_output_shapes!
:џџџџџџџџџ @2
up_sampling3d_1/concat
!up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_1/split_dimѕ
up_sampling3d_1/split_1Split*up_sampling3d_1/split_1/split_dim:output:0up_sampling3d_1/concat:output:0*
T0*а
_output_shapesН
К:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @*
	num_split2
up_sampling3d_1/split_1
up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_1/axisЧ
up_sampling3d_1/concat_1ConcatV2 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:5&up_sampling3d_1/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ @2
up_sampling3d_1/concat_1
!up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_2/split_dimї
up_sampling3d_1/split_2Split*up_sampling3d_1/split_2/split_dim:output:0!up_sampling3d_1/concat_1:output:0*
T0*а
_output_shapesН
К:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @*
	num_split2
up_sampling3d_1/split_2
up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_2/axisЧ
up_sampling3d_1/concat_2ConcatV2 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:5&up_sampling3d_1/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ @2
up_sampling3d_1/concat_2Д
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype02 
conv3d_5/Conv3D/ReadVariableOpп
conv3d_5/Conv3DConv3D!up_sampling3d_1/concat_2:output:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 *
paddingVALID*
strides	
2
conv3d_5/Conv3DЇ
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv3d_5/BiasAdd/ReadVariableOpА
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 2
conv3d_5/BiasAdd
conv3d_5/ReluReluconv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 2
conv3d_5/Relu
up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_2/split/split_dimг
up_sampling3d_2/splitSplit(up_sampling3d_2/split/split_dim:output:0conv3d_5/Relu:activations:0*
T0*И
_output_shapesЅ
Ђ:џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 *
	num_split2
up_sampling3d_2/split|
up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat/axisб
up_sampling3d_2/concatConcatV2up_sampling3d_2/split:output:0up_sampling3d_2/split:output:0up_sampling3d_2/split:output:1up_sampling3d_2/split:output:1up_sampling3d_2/split:output:2up_sampling3d_2/split:output:2up_sampling3d_2/split:output:3up_sampling3d_2/split:output:3up_sampling3d_2/split:output:4up_sampling3d_2/split:output:4up_sampling3d_2/split:output:5up_sampling3d_2/split:output:5up_sampling3d_2/split:output:6up_sampling3d_2/split:output:6up_sampling3d_2/split:output:7up_sampling3d_2/split:output:7up_sampling3d_2/split:output:8up_sampling3d_2/split:output:8up_sampling3d_2/split:output:9up_sampling3d_2/split:output:9up_sampling3d_2/split:output:10up_sampling3d_2/split:output:10up_sampling3d_2/split:output:11up_sampling3d_2/split:output:11up_sampling3d_2/split:output:12up_sampling3d_2/split:output:12up_sampling3d_2/split:output:13up_sampling3d_2/split:output:13up_sampling3d_2/split:output:14up_sampling3d_2/split:output:14up_sampling3d_2/split:output:15up_sampling3d_2/split:output:15up_sampling3d_2/split:output:16up_sampling3d_2/split:output:16up_sampling3d_2/split:output:17up_sampling3d_2/split:output:17up_sampling3d_2/split:output:18up_sampling3d_2/split:output:18up_sampling3d_2/split:output:19up_sampling3d_2/split:output:19up_sampling3d_2/split:output:20up_sampling3d_2/split:output:20up_sampling3d_2/split:output:21up_sampling3d_2/split:output:21up_sampling3d_2/split:output:22up_sampling3d_2/split:output:22up_sampling3d_2/split:output:23up_sampling3d_2/split:output:23up_sampling3d_2/split:output:24up_sampling3d_2/split:output:24up_sampling3d_2/split:output:25up_sampling3d_2/split:output:25up_sampling3d_2/split:output:26up_sampling3d_2/split:output:26up_sampling3d_2/split:output:27up_sampling3d_2/split:output:27up_sampling3d_2/split:output:28up_sampling3d_2/split:output:28up_sampling3d_2/split:output:29up_sampling3d_2/split:output:29$up_sampling3d_2/concat/axis:output:0*
N<*
T0*3
_output_shapes!
:џџџџџџџџџ<

 2
up_sampling3d_2/concat
!up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_1/split_dimё
up_sampling3d_2/split_1Split*up_sampling3d_2/split_1/split_dim:output:0up_sampling3d_2/concat:output:0*
T0*Ь
_output_shapesЙ
Ж:џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 *
	num_split
2
up_sampling3d_2/split_1
up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_1/axisз
up_sampling3d_2/concat_1ConcatV2 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:9 up_sampling3d_2/split_1:output:9&up_sampling3d_2/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ<
 2
up_sampling3d_2/concat_1
!up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_2/split_dimѓ
up_sampling3d_2/split_2Split*up_sampling3d_2/split_2/split_dim:output:0!up_sampling3d_2/concat_1:output:0*
T0*Ь
_output_shapesЙ
Ж:џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< *
	num_split
2
up_sampling3d_2/split_2
up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_2/axisз
up_sampling3d_2/concat_2ConcatV2 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:9 up_sampling3d_2/split_2:output:9&up_sampling3d_2/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ< 2
up_sampling3d_2/concat_2Д
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02 
conv3d_6/Conv3D/ReadVariableOpо
conv3d_6/Conv3DConv3D!up_sampling3d_2/concat_2:output:0&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ<*
paddingSAME*
strides	
2
conv3d_6/Conv3DЇ
conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_6/BiasAdd/ReadVariableOpА
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ<2
conv3d_6/BiasAdd
conv3d_6/SigmoidSigmoidconv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ<2
conv3d_6/Sigmoid
cropping3d/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    2 
cropping3d/strided_slice/stackЁ
 cropping3d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    2"
 cropping3d/strided_slice/stack_1Ё
 cropping3d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               2"
 cropping3d/strided_slice/stack_2Ц
cropping3d/strided_sliceStridedSliceconv3d_6/Sigmoid:y:0'cropping3d/strided_slice/stack:output:0)cropping3d/strided_slice/stack_1:output:0)cropping3d/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ<*

begin_mask*
end_mask2
cropping3d/strided_sliceЮ
IdentityIdentity!cropping3d/strided_slice:output:0 ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ј-

H__inference_sequential_1_layer_call_and_return_conditional_losses_424706
dense_1_input!
dense_1_424675:	
H
dense_1_424677:	H/
conv3d_3_424681:
conv3d_3_424683:	.
conv3d_4_424687:@
conv3d_4_424689:@-
conv3d_5_424693:@ 
conv3d_5_424695: -
conv3d_6_424699: 
conv3d_6_424701:
identityЂ conv3d_3/StatefulPartitionedCallЂ conv3d_4/StatefulPartitionedCallЂ conv3d_5/StatefulPartitionedCallЂ conv3d_6/StatefulPartitionedCallЂdense_1/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCalldense_1_inputdense_1_424675dense_1_424677*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџH*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_4242362!
dense_1/StatefulPartitionedCall
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_4242572
reshape/PartitionedCallО
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv3d_3_424681conv3d_3_424683*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_3_layer_call_and_return_conditional_losses_4242702"
 conv3d_3/StatefulPartitionedCall
up_sampling3d/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_4243032
up_sampling3d/PartitionedCallУ
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall&up_sampling3d/PartitionedCall:output:0conv3d_4_424687conv3d_4_424689*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_4_layer_call_and_return_conditional_losses_4243162"
 conv3d_4/StatefulPartitionedCall
up_sampling3d_1/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_4243632!
up_sampling3d_1/PartitionedCallХ
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_1/PartitionedCall:output:0conv3d_5_424693conv3d_5_424695*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_4243762"
 conv3d_5/StatefulPartitionedCall
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_4244452!
up_sampling3d_2/PartitionedCallХ
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_6_424699conv3d_6_424701*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv3d_6_layer_call_and_return_conditional_losses_4244582"
 conv3d_6/StatefulPartitionedCall
cropping3d/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_cropping3d_layer_call_and_return_conditional_losses_4242122
cropping3d/PartitionedCallБ
IdentityIdentity#cropping3d/PartitionedCall:output:0!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ

'
_user_specified_namedense_1_input
ЭЙ
Ї
H__inference_sequential_1_layer_call_and_return_conditional_losses_424940

inputs9
&dense_1_matmul_readvariableop_resource:	
H6
'dense_1_biasadd_readvariableop_resource:	HG
'conv3d_3_conv3d_readvariableop_resource:7
(conv3d_3_biasadd_readvariableop_resource:	F
'conv3d_4_conv3d_readvariableop_resource:@6
(conv3d_4_biasadd_readvariableop_resource:@E
'conv3d_5_conv3d_readvariableop_resource:@ 6
(conv3d_5_biasadd_readvariableop_resource: E
'conv3d_6_conv3d_readvariableop_resource: 6
(conv3d_6_biasadd_readvariableop_resource:
identityЂconv3d_3/BiasAdd/ReadVariableOpЂconv3d_3/Conv3D/ReadVariableOpЂconv3d_4/BiasAdd/ReadVariableOpЂconv3d_4/Conv3D/ReadVariableOpЂconv3d_5/BiasAdd/ReadVariableOpЂconv3d_5/Conv3D/ReadVariableOpЂconv3d_6/BiasAdd/ReadVariableOpЂconv3d_6/Conv3D/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpІ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	
H*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџH2
dense_1/MatMulЅ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:H*
dtype02 
dense_1/BiasAdd/ReadVariableOpЂ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџH2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџH2
dense_1/Reluh
reshape/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:2
reshape/Shape
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/3u
reshape/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value
B :2
reshape/Reshape/shape/4
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0 reshape/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shapeЈ
reshape/ReshapeReshapedense_1/Relu:activations:0reshape/Reshape/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2
reshape/ReshapeЖ
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype02 
conv3d_3/Conv3D/ReadVariableOpж
conv3d_3/Conv3DConv3Dreshape/Reshape:output:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :џџџџџџџџџ*
paddingSAME*
strides	
2
conv3d_3/Conv3DЈ
conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv3d_3/BiasAdd/ReadVariableOpБ
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2
conv3d_3/BiasAdd
conv3d_3/ReluReluconv3d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2
conv3d_3/Relu
up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/split/split_dimЋ
up_sampling3d/splitSplit&up_sampling3d/split/split_dim:output:0conv3d_3/Relu:activations:0*
T0*
_output_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
up_sampling3d/splitx
up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat/axis
up_sampling3d/concatConcatV2up_sampling3d/split:output:0up_sampling3d/split:output:0up_sampling3d/split:output:1up_sampling3d/split:output:1up_sampling3d/split:output:2up_sampling3d/split:output:2up_sampling3d/split:output:3up_sampling3d/split:output:3up_sampling3d/split:output:4up_sampling3d/split:output:4up_sampling3d/split:output:5up_sampling3d/split:output:5up_sampling3d/split:output:6up_sampling3d/split:output:6up_sampling3d/split:output:7up_sampling3d/split:output:7"up_sampling3d/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2
up_sampling3d/concat
up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_1/split_dim
up_sampling3d/split_1Split(up_sampling3d/split_1/split_dim:output:0up_sampling3d/concat:output:0*
T0*t
_output_shapesb
`:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
up_sampling3d/split_1|
up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_1/axisъ
up_sampling3d/concat_1ConcatV2up_sampling3d/split_1:output:0up_sampling3d/split_1:output:0up_sampling3d/split_1:output:1up_sampling3d/split_1:output:1up_sampling3d/split_1:output:2up_sampling3d/split_1:output:2$up_sampling3d/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2
up_sampling3d/concat_1
up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_2/split_dim
up_sampling3d/split_2Split(up_sampling3d/split_2/split_dim:output:0up_sampling3d/concat_1:output:0*
T0*t
_output_shapesb
`:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
up_sampling3d/split_2|
up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_2/axisъ
up_sampling3d/concat_2ConcatV2up_sampling3d/split_2:output:0up_sampling3d/split_2:output:0up_sampling3d/split_2:output:1up_sampling3d/split_2:output:1up_sampling3d/split_2:output:2up_sampling3d/split_2:output:2$up_sampling3d/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2
up_sampling3d/concat_2Е
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype02 
conv3d_4/Conv3D/ReadVariableOpм
conv3d_4/Conv3DConv3Dup_sampling3d/concat_2:output:0&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@*
paddingSAME*
strides	
2
conv3d_4/Conv3DЇ
conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv3d_4/BiasAdd/ReadVariableOpА
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@2
conv3d_4/BiasAdd
conv3d_4/ReluReluconv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@2
conv3d_4/Relu
up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_1/split/split_dimЁ
up_sampling3d_1/splitSplit(up_sampling3d_1/split/split_dim:output:0conv3d_4/Relu:activations:0*
T0*
_output_shapesѓ
№:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
up_sampling3d_1/split|
up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat/axisЕ	
up_sampling3d_1/concatConcatV2up_sampling3d_1/split:output:0up_sampling3d_1/split:output:0up_sampling3d_1/split:output:1up_sampling3d_1/split:output:1up_sampling3d_1/split:output:2up_sampling3d_1/split:output:2up_sampling3d_1/split:output:3up_sampling3d_1/split:output:3up_sampling3d_1/split:output:4up_sampling3d_1/split:output:4up_sampling3d_1/split:output:5up_sampling3d_1/split:output:5up_sampling3d_1/split:output:6up_sampling3d_1/split:output:6up_sampling3d_1/split:output:7up_sampling3d_1/split:output:7up_sampling3d_1/split:output:8up_sampling3d_1/split:output:8up_sampling3d_1/split:output:9up_sampling3d_1/split:output:9up_sampling3d_1/split:output:10up_sampling3d_1/split:output:10up_sampling3d_1/split:output:11up_sampling3d_1/split:output:11up_sampling3d_1/split:output:12up_sampling3d_1/split:output:12up_sampling3d_1/split:output:13up_sampling3d_1/split:output:13up_sampling3d_1/split:output:14up_sampling3d_1/split:output:14up_sampling3d_1/split:output:15up_sampling3d_1/split:output:15$up_sampling3d_1/concat/axis:output:0*
N *
T0*3
_output_shapes!
:џџџџџџџџџ @2
up_sampling3d_1/concat
!up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_1/split_dimѕ
up_sampling3d_1/split_1Split*up_sampling3d_1/split_1/split_dim:output:0up_sampling3d_1/concat:output:0*
T0*а
_output_shapesН
К:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @*
	num_split2
up_sampling3d_1/split_1
up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_1/axisЧ
up_sampling3d_1/concat_1ConcatV2 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:5&up_sampling3d_1/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ @2
up_sampling3d_1/concat_1
!up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_2/split_dimї
up_sampling3d_1/split_2Split*up_sampling3d_1/split_2/split_dim:output:0!up_sampling3d_1/concat_1:output:0*
T0*а
_output_shapesН
К:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @*
	num_split2
up_sampling3d_1/split_2
up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_2/axisЧ
up_sampling3d_1/concat_2ConcatV2 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:5&up_sampling3d_1/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ @2
up_sampling3d_1/concat_2Д
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype02 
conv3d_5/Conv3D/ReadVariableOpп
conv3d_5/Conv3DConv3D!up_sampling3d_1/concat_2:output:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 *
paddingVALID*
strides	
2
conv3d_5/Conv3DЇ
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv3d_5/BiasAdd/ReadVariableOpА
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 2
conv3d_5/BiasAdd
conv3d_5/ReluReluconv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 2
conv3d_5/Relu
up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_2/split/split_dimг
up_sampling3d_2/splitSplit(up_sampling3d_2/split/split_dim:output:0conv3d_5/Relu:activations:0*
T0*И
_output_shapesЅ
Ђ:џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 *
	num_split2
up_sampling3d_2/split|
up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat/axisб
up_sampling3d_2/concatConcatV2up_sampling3d_2/split:output:0up_sampling3d_2/split:output:0up_sampling3d_2/split:output:1up_sampling3d_2/split:output:1up_sampling3d_2/split:output:2up_sampling3d_2/split:output:2up_sampling3d_2/split:output:3up_sampling3d_2/split:output:3up_sampling3d_2/split:output:4up_sampling3d_2/split:output:4up_sampling3d_2/split:output:5up_sampling3d_2/split:output:5up_sampling3d_2/split:output:6up_sampling3d_2/split:output:6up_sampling3d_2/split:output:7up_sampling3d_2/split:output:7up_sampling3d_2/split:output:8up_sampling3d_2/split:output:8up_sampling3d_2/split:output:9up_sampling3d_2/split:output:9up_sampling3d_2/split:output:10up_sampling3d_2/split:output:10up_sampling3d_2/split:output:11up_sampling3d_2/split:output:11up_sampling3d_2/split:output:12up_sampling3d_2/split:output:12up_sampling3d_2/split:output:13up_sampling3d_2/split:output:13up_sampling3d_2/split:output:14up_sampling3d_2/split:output:14up_sampling3d_2/split:output:15up_sampling3d_2/split:output:15up_sampling3d_2/split:output:16up_sampling3d_2/split:output:16up_sampling3d_2/split:output:17up_sampling3d_2/split:output:17up_sampling3d_2/split:output:18up_sampling3d_2/split:output:18up_sampling3d_2/split:output:19up_sampling3d_2/split:output:19up_sampling3d_2/split:output:20up_sampling3d_2/split:output:20up_sampling3d_2/split:output:21up_sampling3d_2/split:output:21up_sampling3d_2/split:output:22up_sampling3d_2/split:output:22up_sampling3d_2/split:output:23up_sampling3d_2/split:output:23up_sampling3d_2/split:output:24up_sampling3d_2/split:output:24up_sampling3d_2/split:output:25up_sampling3d_2/split:output:25up_sampling3d_2/split:output:26up_sampling3d_2/split:output:26up_sampling3d_2/split:output:27up_sampling3d_2/split:output:27up_sampling3d_2/split:output:28up_sampling3d_2/split:output:28up_sampling3d_2/split:output:29up_sampling3d_2/split:output:29$up_sampling3d_2/concat/axis:output:0*
N<*
T0*3
_output_shapes!
:џџџџџџџџџ<

 2
up_sampling3d_2/concat
!up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_1/split_dimё
up_sampling3d_2/split_1Split*up_sampling3d_2/split_1/split_dim:output:0up_sampling3d_2/concat:output:0*
T0*Ь
_output_shapesЙ
Ж:џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 *
	num_split
2
up_sampling3d_2/split_1
up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_1/axisз
up_sampling3d_2/concat_1ConcatV2 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:9 up_sampling3d_2/split_1:output:9&up_sampling3d_2/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ<
 2
up_sampling3d_2/concat_1
!up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_2/split_dimѓ
up_sampling3d_2/split_2Split*up_sampling3d_2/split_2/split_dim:output:0!up_sampling3d_2/concat_1:output:0*
T0*Ь
_output_shapesЙ
Ж:џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< *
	num_split
2
up_sampling3d_2/split_2
up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_2/axisз
up_sampling3d_2/concat_2ConcatV2 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:9 up_sampling3d_2/split_2:output:9&up_sampling3d_2/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ< 2
up_sampling3d_2/concat_2Д
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02 
conv3d_6/Conv3D/ReadVariableOpо
conv3d_6/Conv3DConv3D!up_sampling3d_2/concat_2:output:0&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ<*
paddingSAME*
strides	
2
conv3d_6/Conv3DЇ
conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv3d_6/BiasAdd/ReadVariableOpА
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ<2
conv3d_6/BiasAdd
conv3d_6/SigmoidSigmoidconv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ<2
conv3d_6/Sigmoid
cropping3d/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    2 
cropping3d/strided_slice/stackЁ
 cropping3d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    2"
 cropping3d/strided_slice/stack_1Ё
 cropping3d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               2"
 cropping3d/strided_slice/stack_2Ц
cropping3d/strided_sliceStridedSliceconv3d_6/Sigmoid:y:0'cropping3d/strided_slice/stack:output:0)cropping3d/strided_slice/stack_1:output:0)cropping3d/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ<*

begin_mask*
end_mask2
cropping3d/strided_sliceЮ
IdentityIdentity!cropping3d/strided_slice:output:0 ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
иш


!__inference__wrapped_model_424203
dense_1_inputF
3sequential_1_dense_1_matmul_readvariableop_resource:	
HC
4sequential_1_dense_1_biasadd_readvariableop_resource:	HT
4sequential_1_conv3d_3_conv3d_readvariableop_resource:D
5sequential_1_conv3d_3_biasadd_readvariableop_resource:	S
4sequential_1_conv3d_4_conv3d_readvariableop_resource:@C
5sequential_1_conv3d_4_biasadd_readvariableop_resource:@R
4sequential_1_conv3d_5_conv3d_readvariableop_resource:@ C
5sequential_1_conv3d_5_biasadd_readvariableop_resource: R
4sequential_1_conv3d_6_conv3d_readvariableop_resource: C
5sequential_1_conv3d_6_biasadd_readvariableop_resource:
identityЂ,sequential_1/conv3d_3/BiasAdd/ReadVariableOpЂ+sequential_1/conv3d_3/Conv3D/ReadVariableOpЂ,sequential_1/conv3d_4/BiasAdd/ReadVariableOpЂ+sequential_1/conv3d_4/Conv3D/ReadVariableOpЂ,sequential_1/conv3d_5/BiasAdd/ReadVariableOpЂ+sequential_1/conv3d_5/Conv3D/ReadVariableOpЂ,sequential_1/conv3d_6/BiasAdd/ReadVariableOpЂ+sequential_1/conv3d_6/Conv3D/ReadVariableOpЂ+sequential_1/dense_1/BiasAdd/ReadVariableOpЂ*sequential_1/dense_1/MatMul/ReadVariableOpЭ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	
H*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOpК
sequential_1/dense_1/MatMulMatMuldense_1_input2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџH2
sequential_1/dense_1/MatMulЬ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:H*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOpж
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџH2
sequential_1/dense_1/BiasAdd
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџH2
sequential_1/dense_1/Relu
sequential_1/reshape/ShapeShape'sequential_1/dense_1/Relu:activations:0*
T0*
_output_shapes
:2
sequential_1/reshape/Shape
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stackЂ
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1Ђ
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2р
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/3
$sequential_1/reshape/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value
B :2&
$sequential_1/reshape/Reshape/shape/4ч
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0-sequential_1/reshape/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shapeм
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2
sequential_1/reshape/Reshapeн
+sequential_1/conv3d_3/Conv3D/ReadVariableOpReadVariableOp4sequential_1_conv3d_3_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype02-
+sequential_1/conv3d_3/Conv3D/ReadVariableOp
sequential_1/conv3d_3/Conv3DConv3D%sequential_1/reshape/Reshape:output:03sequential_1/conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :џџџџџџџџџ*
paddingSAME*
strides	
2
sequential_1/conv3d_3/Conv3DЯ
,sequential_1/conv3d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_1/conv3d_3/BiasAdd/ReadVariableOpх
sequential_1/conv3d_3/BiasAddBiasAdd%sequential_1/conv3d_3/Conv3D:output:04sequential_1/conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2
sequential_1/conv3d_3/BiasAddЇ
sequential_1/conv3d_3/ReluRelu&sequential_1/conv3d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2
sequential_1/conv3d_3/Relu
*sequential_1/up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_1/up_sampling3d/split/split_dimп
 sequential_1/up_sampling3d/splitSplit3sequential_1/up_sampling3d/split/split_dim:output:0(sequential_1/conv3d_3/Relu:activations:0*
T0*
_output_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2"
 sequential_1/up_sampling3d/split
&sequential_1/up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_1/up_sampling3d/concat/axisћ
!sequential_1/up_sampling3d/concatConcatV2)sequential_1/up_sampling3d/split:output:0)sequential_1/up_sampling3d/split:output:0)sequential_1/up_sampling3d/split:output:1)sequential_1/up_sampling3d/split:output:1)sequential_1/up_sampling3d/split:output:2)sequential_1/up_sampling3d/split:output:2)sequential_1/up_sampling3d/split:output:3)sequential_1/up_sampling3d/split:output:3)sequential_1/up_sampling3d/split:output:4)sequential_1/up_sampling3d/split:output:4)sequential_1/up_sampling3d/split:output:5)sequential_1/up_sampling3d/split:output:5)sequential_1/up_sampling3d/split:output:6)sequential_1/up_sampling3d/split:output:6)sequential_1/up_sampling3d/split:output:7)sequential_1/up_sampling3d/split:output:7/sequential_1/up_sampling3d/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2#
!sequential_1/up_sampling3d/concat
,sequential_1/up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_1/up_sampling3d/split_1/split_dimФ
"sequential_1/up_sampling3d/split_1Split5sequential_1/up_sampling3d/split_1/split_dim:output:0*sequential_1/up_sampling3d/concat:output:0*
T0*t
_output_shapesb
`:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2$
"sequential_1/up_sampling3d/split_1
(sequential_1/up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_1/up_sampling3d/concat_1/axisп
#sequential_1/up_sampling3d/concat_1ConcatV2+sequential_1/up_sampling3d/split_1:output:0+sequential_1/up_sampling3d/split_1:output:0+sequential_1/up_sampling3d/split_1:output:1+sequential_1/up_sampling3d/split_1:output:1+sequential_1/up_sampling3d/split_1:output:2+sequential_1/up_sampling3d/split_1:output:21sequential_1/up_sampling3d/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2%
#sequential_1/up_sampling3d/concat_1
,sequential_1/up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_1/up_sampling3d/split_2/split_dimЦ
"sequential_1/up_sampling3d/split_2Split5sequential_1/up_sampling3d/split_2/split_dim:output:0,sequential_1/up_sampling3d/concat_1:output:0*
T0*t
_output_shapesb
`:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2$
"sequential_1/up_sampling3d/split_2
(sequential_1/up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_1/up_sampling3d/concat_2/axisп
#sequential_1/up_sampling3d/concat_2ConcatV2+sequential_1/up_sampling3d/split_2:output:0+sequential_1/up_sampling3d/split_2:output:0+sequential_1/up_sampling3d/split_2:output:1+sequential_1/up_sampling3d/split_2:output:1+sequential_1/up_sampling3d/split_2:output:2+sequential_1/up_sampling3d/split_2:output:21sequential_1/up_sampling3d/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџ2%
#sequential_1/up_sampling3d/concat_2м
+sequential_1/conv3d_4/Conv3D/ReadVariableOpReadVariableOp4sequential_1_conv3d_4_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype02-
+sequential_1/conv3d_4/Conv3D/ReadVariableOp
sequential_1/conv3d_4/Conv3DConv3D,sequential_1/up_sampling3d/concat_2:output:03sequential_1/conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@*
paddingSAME*
strides	
2
sequential_1/conv3d_4/Conv3DЮ
,sequential_1/conv3d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_1/conv3d_4/BiasAdd/ReadVariableOpф
sequential_1/conv3d_4/BiasAddBiasAdd%sequential_1/conv3d_4/Conv3D:output:04sequential_1/conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@2
sequential_1/conv3d_4/BiasAddІ
sequential_1/conv3d_4/ReluRelu&sequential_1/conv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@2
sequential_1/conv3d_4/Relu
,sequential_1/up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_1/up_sampling3d_1/split/split_dimе
"sequential_1/up_sampling3d_1/splitSplit5sequential_1/up_sampling3d_1/split/split_dim:output:0(sequential_1/conv3d_4/Relu:activations:0*
T0*
_output_shapesѓ
№:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2$
"sequential_1/up_sampling3d_1/split
(sequential_1/up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_1/up_sampling3d_1/concat/axisќ
#sequential_1/up_sampling3d_1/concatConcatV2+sequential_1/up_sampling3d_1/split:output:0+sequential_1/up_sampling3d_1/split:output:0+sequential_1/up_sampling3d_1/split:output:1+sequential_1/up_sampling3d_1/split:output:1+sequential_1/up_sampling3d_1/split:output:2+sequential_1/up_sampling3d_1/split:output:2+sequential_1/up_sampling3d_1/split:output:3+sequential_1/up_sampling3d_1/split:output:3+sequential_1/up_sampling3d_1/split:output:4+sequential_1/up_sampling3d_1/split:output:4+sequential_1/up_sampling3d_1/split:output:5+sequential_1/up_sampling3d_1/split:output:5+sequential_1/up_sampling3d_1/split:output:6+sequential_1/up_sampling3d_1/split:output:6+sequential_1/up_sampling3d_1/split:output:7+sequential_1/up_sampling3d_1/split:output:7+sequential_1/up_sampling3d_1/split:output:8+sequential_1/up_sampling3d_1/split:output:8+sequential_1/up_sampling3d_1/split:output:9+sequential_1/up_sampling3d_1/split:output:9,sequential_1/up_sampling3d_1/split:output:10,sequential_1/up_sampling3d_1/split:output:10,sequential_1/up_sampling3d_1/split:output:11,sequential_1/up_sampling3d_1/split:output:11,sequential_1/up_sampling3d_1/split:output:12,sequential_1/up_sampling3d_1/split:output:12,sequential_1/up_sampling3d_1/split:output:13,sequential_1/up_sampling3d_1/split:output:13,sequential_1/up_sampling3d_1/split:output:14,sequential_1/up_sampling3d_1/split:output:14,sequential_1/up_sampling3d_1/split:output:15,sequential_1/up_sampling3d_1/split:output:151sequential_1/up_sampling3d_1/concat/axis:output:0*
N *
T0*3
_output_shapes!
:џџџџџџџџџ @2%
#sequential_1/up_sampling3d_1/concatЂ
.sequential_1/up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.sequential_1/up_sampling3d_1/split_1/split_dimЉ
$sequential_1/up_sampling3d_1/split_1Split7sequential_1/up_sampling3d_1/split_1/split_dim:output:0,sequential_1/up_sampling3d_1/concat:output:0*
T0*а
_output_shapesН
К:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @*
	num_split2&
$sequential_1/up_sampling3d_1/split_1
*sequential_1/up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_1/up_sampling3d_1/concat_1/axis
%sequential_1/up_sampling3d_1/concat_1ConcatV2-sequential_1/up_sampling3d_1/split_1:output:0-sequential_1/up_sampling3d_1/split_1:output:0-sequential_1/up_sampling3d_1/split_1:output:1-sequential_1/up_sampling3d_1/split_1:output:1-sequential_1/up_sampling3d_1/split_1:output:2-sequential_1/up_sampling3d_1/split_1:output:2-sequential_1/up_sampling3d_1/split_1:output:3-sequential_1/up_sampling3d_1/split_1:output:3-sequential_1/up_sampling3d_1/split_1:output:4-sequential_1/up_sampling3d_1/split_1:output:4-sequential_1/up_sampling3d_1/split_1:output:5-sequential_1/up_sampling3d_1/split_1:output:53sequential_1/up_sampling3d_1/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ @2'
%sequential_1/up_sampling3d_1/concat_1Ђ
.sequential_1/up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.sequential_1/up_sampling3d_1/split_2/split_dimЋ
$sequential_1/up_sampling3d_1/split_2Split7sequential_1/up_sampling3d_1/split_2/split_dim:output:0.sequential_1/up_sampling3d_1/concat_1:output:0*
T0*а
_output_shapesН
К:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @:џџџџџџџџџ @*
	num_split2&
$sequential_1/up_sampling3d_1/split_2
*sequential_1/up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_1/up_sampling3d_1/concat_2/axis
%sequential_1/up_sampling3d_1/concat_2ConcatV2-sequential_1/up_sampling3d_1/split_2:output:0-sequential_1/up_sampling3d_1/split_2:output:0-sequential_1/up_sampling3d_1/split_2:output:1-sequential_1/up_sampling3d_1/split_2:output:1-sequential_1/up_sampling3d_1/split_2:output:2-sequential_1/up_sampling3d_1/split_2:output:2-sequential_1/up_sampling3d_1/split_2:output:3-sequential_1/up_sampling3d_1/split_2:output:3-sequential_1/up_sampling3d_1/split_2:output:4-sequential_1/up_sampling3d_1/split_2:output:4-sequential_1/up_sampling3d_1/split_2:output:5-sequential_1/up_sampling3d_1/split_2:output:53sequential_1/up_sampling3d_1/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ @2'
%sequential_1/up_sampling3d_1/concat_2л
+sequential_1/conv3d_5/Conv3D/ReadVariableOpReadVariableOp4sequential_1_conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:@ *
dtype02-
+sequential_1/conv3d_5/Conv3D/ReadVariableOp
sequential_1/conv3d_5/Conv3DConv3D.sequential_1/up_sampling3d_1/concat_2:output:03sequential_1/conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 *
paddingVALID*
strides	
2
sequential_1/conv3d_5/Conv3DЮ
,sequential_1/conv3d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv3d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv3d_5/BiasAdd/ReadVariableOpф
sequential_1/conv3d_5/BiasAddBiasAdd%sequential_1/conv3d_5/Conv3D:output:04sequential_1/conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 2
sequential_1/conv3d_5/BiasAddІ
sequential_1/conv3d_5/ReluRelu&sequential_1/conv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ

 2
sequential_1/conv3d_5/Relu
,sequential_1/up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_1/up_sampling3d_2/split/split_dim	
"sequential_1/up_sampling3d_2/splitSplit5sequential_1/up_sampling3d_2/split/split_dim:output:0(sequential_1/conv3d_5/Relu:activations:0*
T0*И
_output_shapesЅ
Ђ:џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 :џџџџџџџџџ

 *
	num_split2$
"sequential_1/up_sampling3d_2/split
(sequential_1/up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_1/up_sampling3d_2/concat/axis
#sequential_1/up_sampling3d_2/concatConcatV2+sequential_1/up_sampling3d_2/split:output:0+sequential_1/up_sampling3d_2/split:output:0+sequential_1/up_sampling3d_2/split:output:1+sequential_1/up_sampling3d_2/split:output:1+sequential_1/up_sampling3d_2/split:output:2+sequential_1/up_sampling3d_2/split:output:2+sequential_1/up_sampling3d_2/split:output:3+sequential_1/up_sampling3d_2/split:output:3+sequential_1/up_sampling3d_2/split:output:4+sequential_1/up_sampling3d_2/split:output:4+sequential_1/up_sampling3d_2/split:output:5+sequential_1/up_sampling3d_2/split:output:5+sequential_1/up_sampling3d_2/split:output:6+sequential_1/up_sampling3d_2/split:output:6+sequential_1/up_sampling3d_2/split:output:7+sequential_1/up_sampling3d_2/split:output:7+sequential_1/up_sampling3d_2/split:output:8+sequential_1/up_sampling3d_2/split:output:8+sequential_1/up_sampling3d_2/split:output:9+sequential_1/up_sampling3d_2/split:output:9,sequential_1/up_sampling3d_2/split:output:10,sequential_1/up_sampling3d_2/split:output:10,sequential_1/up_sampling3d_2/split:output:11,sequential_1/up_sampling3d_2/split:output:11,sequential_1/up_sampling3d_2/split:output:12,sequential_1/up_sampling3d_2/split:output:12,sequential_1/up_sampling3d_2/split:output:13,sequential_1/up_sampling3d_2/split:output:13,sequential_1/up_sampling3d_2/split:output:14,sequential_1/up_sampling3d_2/split:output:14,sequential_1/up_sampling3d_2/split:output:15,sequential_1/up_sampling3d_2/split:output:15,sequential_1/up_sampling3d_2/split:output:16,sequential_1/up_sampling3d_2/split:output:16,sequential_1/up_sampling3d_2/split:output:17,sequential_1/up_sampling3d_2/split:output:17,sequential_1/up_sampling3d_2/split:output:18,sequential_1/up_sampling3d_2/split:output:18,sequential_1/up_sampling3d_2/split:output:19,sequential_1/up_sampling3d_2/split:output:19,sequential_1/up_sampling3d_2/split:output:20,sequential_1/up_sampling3d_2/split:output:20,sequential_1/up_sampling3d_2/split:output:21,sequential_1/up_sampling3d_2/split:output:21,sequential_1/up_sampling3d_2/split:output:22,sequential_1/up_sampling3d_2/split:output:22,sequential_1/up_sampling3d_2/split:output:23,sequential_1/up_sampling3d_2/split:output:23,sequential_1/up_sampling3d_2/split:output:24,sequential_1/up_sampling3d_2/split:output:24,sequential_1/up_sampling3d_2/split:output:25,sequential_1/up_sampling3d_2/split:output:25,sequential_1/up_sampling3d_2/split:output:26,sequential_1/up_sampling3d_2/split:output:26,sequential_1/up_sampling3d_2/split:output:27,sequential_1/up_sampling3d_2/split:output:27,sequential_1/up_sampling3d_2/split:output:28,sequential_1/up_sampling3d_2/split:output:28,sequential_1/up_sampling3d_2/split:output:29,sequential_1/up_sampling3d_2/split:output:291sequential_1/up_sampling3d_2/concat/axis:output:0*
N<*
T0*3
_output_shapes!
:џџџџџџџџџ<

 2%
#sequential_1/up_sampling3d_2/concatЂ
.sequential_1/up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.sequential_1/up_sampling3d_2/split_1/split_dimЅ
$sequential_1/up_sampling3d_2/split_1Split7sequential_1/up_sampling3d_2/split_1/split_dim:output:0,sequential_1/up_sampling3d_2/concat:output:0*
T0*Ь
_output_shapesЙ
Ж:џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 :џџџџџџџџџ<
 *
	num_split
2&
$sequential_1/up_sampling3d_2/split_1
*sequential_1/up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_1/up_sampling3d_2/concat_1/axis	
%sequential_1/up_sampling3d_2/concat_1ConcatV2-sequential_1/up_sampling3d_2/split_1:output:0-sequential_1/up_sampling3d_2/split_1:output:0-sequential_1/up_sampling3d_2/split_1:output:1-sequential_1/up_sampling3d_2/split_1:output:1-sequential_1/up_sampling3d_2/split_1:output:2-sequential_1/up_sampling3d_2/split_1:output:2-sequential_1/up_sampling3d_2/split_1:output:3-sequential_1/up_sampling3d_2/split_1:output:3-sequential_1/up_sampling3d_2/split_1:output:4-sequential_1/up_sampling3d_2/split_1:output:4-sequential_1/up_sampling3d_2/split_1:output:5-sequential_1/up_sampling3d_2/split_1:output:5-sequential_1/up_sampling3d_2/split_1:output:6-sequential_1/up_sampling3d_2/split_1:output:6-sequential_1/up_sampling3d_2/split_1:output:7-sequential_1/up_sampling3d_2/split_1:output:7-sequential_1/up_sampling3d_2/split_1:output:8-sequential_1/up_sampling3d_2/split_1:output:8-sequential_1/up_sampling3d_2/split_1:output:9-sequential_1/up_sampling3d_2/split_1:output:93sequential_1/up_sampling3d_2/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ<
 2'
%sequential_1/up_sampling3d_2/concat_1Ђ
.sequential_1/up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.sequential_1/up_sampling3d_2/split_2/split_dimЇ
$sequential_1/up_sampling3d_2/split_2Split7sequential_1/up_sampling3d_2/split_2/split_dim:output:0.sequential_1/up_sampling3d_2/concat_1:output:0*
T0*Ь
_output_shapesЙ
Ж:џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< :џџџџџџџџџ< *
	num_split
2&
$sequential_1/up_sampling3d_2/split_2
*sequential_1/up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_1/up_sampling3d_2/concat_2/axis	
%sequential_1/up_sampling3d_2/concat_2ConcatV2-sequential_1/up_sampling3d_2/split_2:output:0-sequential_1/up_sampling3d_2/split_2:output:0-sequential_1/up_sampling3d_2/split_2:output:1-sequential_1/up_sampling3d_2/split_2:output:1-sequential_1/up_sampling3d_2/split_2:output:2-sequential_1/up_sampling3d_2/split_2:output:2-sequential_1/up_sampling3d_2/split_2:output:3-sequential_1/up_sampling3d_2/split_2:output:3-sequential_1/up_sampling3d_2/split_2:output:4-sequential_1/up_sampling3d_2/split_2:output:4-sequential_1/up_sampling3d_2/split_2:output:5-sequential_1/up_sampling3d_2/split_2:output:5-sequential_1/up_sampling3d_2/split_2:output:6-sequential_1/up_sampling3d_2/split_2:output:6-sequential_1/up_sampling3d_2/split_2:output:7-sequential_1/up_sampling3d_2/split_2:output:7-sequential_1/up_sampling3d_2/split_2:output:8-sequential_1/up_sampling3d_2/split_2:output:8-sequential_1/up_sampling3d_2/split_2:output:9-sequential_1/up_sampling3d_2/split_2:output:93sequential_1/up_sampling3d_2/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ< 2'
%sequential_1/up_sampling3d_2/concat_2л
+sequential_1/conv3d_6/Conv3D/ReadVariableOpReadVariableOp4sequential_1_conv3d_6_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02-
+sequential_1/conv3d_6/Conv3D/ReadVariableOp
sequential_1/conv3d_6/Conv3DConv3D.sequential_1/up_sampling3d_2/concat_2:output:03sequential_1/conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ<*
paddingSAME*
strides	
2
sequential_1/conv3d_6/Conv3DЮ
,sequential_1/conv3d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_1/conv3d_6/BiasAdd/ReadVariableOpф
sequential_1/conv3d_6/BiasAddBiasAdd%sequential_1/conv3d_6/Conv3D:output:04sequential_1/conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ<2
sequential_1/conv3d_6/BiasAddЏ
sequential_1/conv3d_6/SigmoidSigmoid&sequential_1/conv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ<2
sequential_1/conv3d_6/SigmoidЗ
+sequential_1/cropping3d/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    2-
+sequential_1/cropping3d/strided_slice/stackЛ
-sequential_1/cropping3d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"                    2/
-sequential_1/cropping3d/strided_slice/stack_1Л
-sequential_1/cropping3d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               2/
-sequential_1/cropping3d/strided_slice/stack_2
%sequential_1/cropping3d/strided_sliceStridedSlice!sequential_1/conv3d_6/Sigmoid:y:04sequential_1/cropping3d/strided_slice/stack:output:06sequential_1/cropping3d/strided_slice/stack_1:output:06sequential_1/cropping3d/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ<*

begin_mask*
end_mask2'
%sequential_1/cropping3d/strided_sliceн
IdentityIdentity.sequential_1/cropping3d/strided_slice:output:0-^sequential_1/conv3d_3/BiasAdd/ReadVariableOp,^sequential_1/conv3d_3/Conv3D/ReadVariableOp-^sequential_1/conv3d_4/BiasAdd/ReadVariableOp,^sequential_1/conv3d_4/Conv3D/ReadVariableOp-^sequential_1/conv3d_5/BiasAdd/ReadVariableOp,^sequential_1/conv3d_5/Conv3D/ReadVariableOp-^sequential_1/conv3d_6/BiasAdd/ReadVariableOp,^sequential_1/conv3d_6/Conv3D/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*
T0*3
_output_shapes!
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ
: : : : : : : : : : 2\
,sequential_1/conv3d_3/BiasAdd/ReadVariableOp,sequential_1/conv3d_3/BiasAdd/ReadVariableOp2Z
+sequential_1/conv3d_3/Conv3D/ReadVariableOp+sequential_1/conv3d_3/Conv3D/ReadVariableOp2\
,sequential_1/conv3d_4/BiasAdd/ReadVariableOp,sequential_1/conv3d_4/BiasAdd/ReadVariableOp2Z
+sequential_1/conv3d_4/Conv3D/ReadVariableOp+sequential_1/conv3d_4/Conv3D/ReadVariableOp2\
,sequential_1/conv3d_5/BiasAdd/ReadVariableOp,sequential_1/conv3d_5/BiasAdd/ReadVariableOp2Z
+sequential_1/conv3d_5/Conv3D/ReadVariableOp+sequential_1/conv3d_5/Conv3D/ReadVariableOp2\
,sequential_1/conv3d_6/BiasAdd/ReadVariableOp,sequential_1/conv3d_6/BiasAdd/ReadVariableOp2Z
+sequential_1/conv3d_6/Conv3D/ReadVariableOp+sequential_1/conv3d_6/Conv3D/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:V R
'
_output_shapes
:џџџџџџџџџ

'
_user_specified_namedense_1_input
С

D__inference_conv3d_3_layer_call_and_return_conditional_losses_425214

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype02
Conv3D/ReadVariableOpЉ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :џџџџџџџџџ*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџ2
ReluЄ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџ
 
_user_specified_nameinputs"ЬL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Х
serving_defaultБ
G
dense_1_input6
serving_default_dense_1_input:0џџџџџџџџџ
J

cropping3d<
StatefulPartitionedCall:0џџџџџџџџџ<tensorflow/serving/predict:Н
ўW
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9

signatures
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
_default_save_signature
+&call_and_return_all_conditional_losses
__call__"T
_tf_keras_sequentialїS{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_1_input"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "units": 9216, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 3, 3, 128]}}}, {"class_name": "Conv3D", "config": {"name": "conv3d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv3D", "config": {"name": "conv3d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv3D", "config": {"name": "conv3d_5", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv3D", "config": {"name": "conv3d_6", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Cropping3D", "config": {"name": "cropping3d", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}}]}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 10]}, "float32", "dense_1_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_1_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "units": 9216, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 3, 3, 128]}}, "shared_object_id": 4}, {"class_name": "Conv3D", "config": {"name": "conv3d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 7}, {"class_name": "Conv3D", "config": {"name": "conv3d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Conv3D", "config": {"name": "conv3d_5", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 13}, {"class_name": "Conv3D", "config": {"name": "conv3d_6", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "Cropping3D", "config": {"name": "cropping3d", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "shared_object_id": 16}]}}}



kernel
bias
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"Й
_tf_keras_layer{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "units": 9216, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
Ж
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerц{"name": "reshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 3, 3, 128]}}, "shared_object_id": 4}


kernel
bias
#_self_saveable_object_factories
 trainable_variables
!regularization_losses
"	variables
#	keras_api
+&call_and_return_all_conditional_losses
__call__"г	
_tf_keras_layerЙ	{"name": "conv3d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 128}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 3, 3, 128]}}
к
#$_self_saveable_object_factories
%trainable_variables
&regularization_losses
'	variables
(	keras_api
+&call_and_return_all_conditional_losses
__call__"Є
_tf_keras_layer{"name": "up_sampling3d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling3D", "config": {"name": "up_sampling3d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 7}


)kernel
*bias
#+_self_saveable_object_factories
,trainable_variables
-regularization_losses
.	variables
/	keras_api
+&call_and_return_all_conditional_losses
__call__"г	
_tf_keras_layerЙ	{"name": "conv3d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 128}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 6, 6, 128]}}
п
#0_self_saveable_object_factories
1trainable_variables
2regularization_losses
3	variables
4	keras_api
+&call_and_return_all_conditional_losses
__call__"Љ
_tf_keras_layer{"name": "up_sampling3d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling3D", "config": {"name": "up_sampling3d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10}
Ђ

5kernel
6bias
#7_self_saveable_object_factories
8trainable_variables
9regularization_losses
:	variables
;	keras_api
+&call_and_return_all_conditional_losses
__call__"ж	
_tf_keras_layerМ	{"name": "conv3d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_5", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 64}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 12, 12, 64]}}
п
#<_self_saveable_object_factories
=trainable_variables
>regularization_losses
?	variables
@	keras_api
+&call_and_return_all_conditional_losses
__call__"Љ
_tf_keras_layer{"name": "up_sampling3d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling3D", "config": {"name": "up_sampling3d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "shared_object_id": 13}
Ѓ

Akernel
Bbias
#C_self_saveable_object_factories
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
+&call_and_return_all_conditional_losses
__call__"з	
_tf_keras_layerН	{"name": "conv3d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_6", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 32}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 20, 20, 32]}}

#H_self_saveable_object_factories
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
+&call_and_return_all_conditional_losses
__call__"Ъ
_tf_keras_layerА{"name": "cropping3d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Cropping3D", "config": {"name": "cropping3d", "trainable": true, "dtype": "float32", "cropping": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 23}}
-
serving_default"
signature_map
 "
trackable_dict_wrapper
f
0
1
2
3
)4
*5
56
67
A8
B9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
)4
*5
56
67
A8
B9"
trackable_list_wrapper
Ю
trainable_variables
regularization_losses
Mnon_trainable_variables
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables

Qlayers
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:	
H2dense_1/kernel
:H2dense_1/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
А
trainable_variables
regularization_losses
Rnon_trainable_variables
Slayer_regularization_losses
Tmetrics
Ulayer_metrics
	variables

Vlayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
trainable_variables
regularization_losses
Wnon_trainable_variables
Xlayer_regularization_losses
Ymetrics
Zlayer_metrics
	variables

[layers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
/:-2conv3d_3/kernel
:2conv3d_3/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
А
 trainable_variables
!regularization_losses
\non_trainable_variables
]layer_regularization_losses
^metrics
_layer_metrics
"	variables

`layers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
%trainable_variables
&regularization_losses
anon_trainable_variables
blayer_regularization_losses
cmetrics
dlayer_metrics
'	variables

elayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.:,@2conv3d_4/kernel
:@2conv3d_4/bias
 "
trackable_dict_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
А
,trainable_variables
-regularization_losses
fnon_trainable_variables
glayer_regularization_losses
hmetrics
ilayer_metrics
.	variables

jlayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
1trainable_variables
2regularization_losses
knon_trainable_variables
llayer_regularization_losses
mmetrics
nlayer_metrics
3	variables

olayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-:+@ 2conv3d_5/kernel
: 2conv3d_5/bias
 "
trackable_dict_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
А
8trainable_variables
9regularization_losses
pnon_trainable_variables
qlayer_regularization_losses
rmetrics
slayer_metrics
:	variables

tlayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
=trainable_variables
>regularization_losses
unon_trainable_variables
vlayer_regularization_losses
wmetrics
xlayer_metrics
?	variables

ylayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-:+ 2conv3d_6/kernel
:2conv3d_6/bias
 "
trackable_dict_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
А
Dtrainable_variables
Eregularization_losses
znon_trainable_variables
{layer_regularization_losses
|metrics
}layer_metrics
F	variables

~layers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Д
Itrainable_variables
Jregularization_losses
non_trainable_variables
 layer_regularization_losses
metrics
layer_metrics
K	variables
layers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
х2т
!__inference__wrapped_model_424203М
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
dense_1_inputџџџџџџџџџ

ю2ы
H__inference_sequential_1_layer_call_and_return_conditional_losses_424940
H__inference_sequential_1_layer_call_and_return_conditional_losses_425113
H__inference_sequential_1_layer_call_and_return_conditional_losses_424706
H__inference_sequential_1_layer_call_and_return_conditional_losses_424740Р
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
2џ
-__inference_sequential_1_layer_call_fn_424489
-__inference_sequential_1_layer_call_fn_425138
-__inference_sequential_1_layer_call_fn_425163
-__inference_sequential_1_layer_call_fn_424672Р
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
э2ъ
C__inference_dense_1_layer_call_and_return_conditional_losses_425174Ђ
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
в2Я
(__inference_dense_1_layer_call_fn_425183Ђ
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
э2ъ
C__inference_reshape_layer_call_and_return_conditional_losses_425198Ђ
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
в2Я
(__inference_reshape_layer_call_fn_425203Ђ
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
D__inference_conv3d_3_layer_call_and_return_conditional_losses_425214Ђ
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
)__inference_conv3d_3_layer_call_fn_425223Ђ
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
ѓ2№
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_425250Ђ
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
и2е
.__inference_up_sampling3d_layer_call_fn_425255Ђ
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
D__inference_conv3d_4_layer_call_and_return_conditional_losses_425266Ђ
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
)__inference_conv3d_4_layer_call_fn_425275Ђ
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
ѕ2ђ
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_425316Ђ
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
к2з
0__inference_up_sampling3d_1_layer_call_fn_425321Ђ
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
D__inference_conv3d_5_layer_call_and_return_conditional_losses_425332Ђ
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
)__inference_conv3d_5_layer_call_fn_425341Ђ
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
ѕ2ђ
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_425404Ђ
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
к2з
0__inference_up_sampling3d_2_layer_call_fn_425409Ђ
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
D__inference_conv3d_6_layer_call_and_return_conditional_losses_425420Ђ
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
)__inference_conv3d_6_layer_call_fn_425429Ђ
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
Л2И
F__inference_cropping3d_layer_call_and_return_conditional_losses_424212э
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
annotationsЊ *MЂJ
HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 2
+__inference_cropping3d_layer_call_fn_424218э
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
annotationsЊ *MЂJ
HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
бBЮ
$__inference_signature_wrapper_424767dense_1_input"
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
 Џ
!__inference__wrapped_model_424203
)*56AB6Ђ3
,Ђ)
'$
dense_1_inputџџџџџџџџџ

Њ "CЊ@
>

cropping3d0-

cropping3dџџџџџџџџџ<О
D__inference_conv3d_3_layer_call_and_return_conditional_losses_425214v<Ђ9
2Ђ/
-*
inputsџџџџџџџџџ
Њ "2Ђ/
(%
0џџџџџџџџџ
 
)__inference_conv3d_3_layer_call_fn_425223i<Ђ9
2Ђ/
-*
inputsџџџџџџџџџ
Њ "%"џџџџџџџџџН
D__inference_conv3d_4_layer_call_and_return_conditional_losses_425266u)*<Ђ9
2Ђ/
-*
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ@
 
)__inference_conv3d_4_layer_call_fn_425275h)*<Ђ9
2Ђ/
-*
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџ@М
D__inference_conv3d_5_layer_call_and_return_conditional_losses_425332t56;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @
Њ "1Ђ.
'$
0џџџџџџџџџ

 
 
)__inference_conv3d_5_layer_call_fn_425341g56;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @
Њ "$!џџџџџџџџџ

 М
D__inference_conv3d_6_layer_call_and_return_conditional_losses_425420tAB;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ< 
Њ "1Ђ.
'$
0џџџџџџџџџ<
 
)__inference_conv3d_6_layer_call_fn_425429gAB;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ< 
Њ "$!џџџџџџџџџ<
F__inference_cropping3d_layer_call_and_return_conditional_losses_424212И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 л
+__inference_cropping3d_layer_call_fn_424218Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЄ
C__inference_dense_1_layer_call_and_return_conditional_losses_425174]/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "&Ђ#

0џџџџџџџџџH
 |
(__inference_dense_1_layer_call_fn_425183P/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "џџџџџџџџџH­
C__inference_reshape_layer_call_and_return_conditional_losses_425198f0Ђ-
&Ђ#
!
inputsџџџџџџџџџH
Њ "2Ђ/
(%
0џџџџџџџџџ
 
(__inference_reshape_layer_call_fn_425203Y0Ђ-
&Ђ#
!
inputsџџџџџџџџџH
Њ "%"џџџџџџџџџЫ
H__inference_sequential_1_layer_call_and_return_conditional_losses_424706
)*56AB>Ђ;
4Ђ1
'$
dense_1_inputџџџџџџџџџ

p 

 
Њ "1Ђ.
'$
0џџџџџџџџџ<
 Ы
H__inference_sequential_1_layer_call_and_return_conditional_losses_424740
)*56AB>Ђ;
4Ђ1
'$
dense_1_inputџџџџџџџџџ

p

 
Њ "1Ђ.
'$
0џџџџџџџџџ<
 Ф
H__inference_sequential_1_layer_call_and_return_conditional_losses_424940x
)*56AB7Ђ4
-Ђ*
 
inputsџџџџџџџџџ

p 

 
Њ "1Ђ.
'$
0џџџџџџџџџ<
 Ф
H__inference_sequential_1_layer_call_and_return_conditional_losses_425113x
)*56AB7Ђ4
-Ђ*
 
inputsџџџџџџџџџ

p

 
Њ "1Ђ.
'$
0џџџџџџџџџ<
 Ѓ
-__inference_sequential_1_layer_call_fn_424489r
)*56AB>Ђ;
4Ђ1
'$
dense_1_inputџџџџџџџџџ

p 

 
Њ "$!џџџџџџџџџ<Ѓ
-__inference_sequential_1_layer_call_fn_424672r
)*56AB>Ђ;
4Ђ1
'$
dense_1_inputџџџџџџџџџ

p

 
Њ "$!џџџџџџџџџ<
-__inference_sequential_1_layer_call_fn_425138k
)*56AB7Ђ4
-Ђ*
 
inputsџџџџџџџџџ

p 

 
Њ "$!џџџџџџџџџ<
-__inference_sequential_1_layer_call_fn_425163k
)*56AB7Ђ4
-Ђ*
 
inputsџџџџџџџџџ

p

 
Њ "$!џџџџџџџџџ<У
$__inference_signature_wrapper_424767
)*56ABGЂD
Ђ 
=Њ:
8
dense_1_input'$
dense_1_inputџџџџџџџџџ
"CЊ@
>

cropping3d0-

cropping3dџџџџџџџџџ<П
K__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_425316p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ@
Њ "1Ђ.
'$
0џџџџџџџџџ @
 
0__inference_up_sampling3d_1_layer_call_fn_425321c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ@
Њ "$!џџџџџџџџџ @П
K__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_425404p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ

 
Њ "1Ђ.
'$
0џџџџџџџџџ< 
 
0__inference_up_sampling3d_2_layer_call_fn_425409c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ

 
Њ "$!џџџџџџџџџ< П
I__inference_up_sampling3d_layer_call_and_return_conditional_losses_425250r<Ђ9
2Ђ/
-*
inputsџџџџџџџџџ
Њ "2Ђ/
(%
0џџџџџџџџџ
 
.__inference_up_sampling3d_layer_call_fn_425255e<Ђ9
2Ђ/
-*
inputsџџџџџџџџџ
Њ "%"џџџџџџџџџ