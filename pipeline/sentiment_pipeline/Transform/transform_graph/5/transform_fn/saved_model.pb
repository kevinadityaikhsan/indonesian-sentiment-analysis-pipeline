ï~
Ĝ
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
$
StringStrip	
input

output"serve*2.10.12v2.10.0-76-gfdfc646704c8f
y
serving_default_inputsPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0	*
shape:˙˙˙˙˙˙˙˙˙
{
serving_default_inputs_1Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
Ë
PartitionedCallPartitionedCallserving_default_inputsserving_default_inputs_1*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_signature_wrapper_128

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ê
valueÀB½ Bĥ

created_variables
	resources
trackable_objects
initializers

assets
transform_fn

signatures* 
* 
* 
* 
* 
* 
* 

serving_default* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCallStatefulPartitionedCallsaver_filenameConst*
Tin
2*
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
__inference__traced_save_153

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*
Tin
2*
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
__inference__traced_restore_163ĴZ

i
__inference__traced_save_153
file_prefix
savev2_const

identity_1˘MergeV2Checkpointsw
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
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHo
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B °
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2
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

identity_1Identity_1:output:0*
_input_shapes
: : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
Ŭ;
P
__inference_pruned_118

inputs	
inputs_1
identity	

identity_1Q
inputs_copyIdentityinputs*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙\
IdentityIdentityinputs_copy:output:0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_1_copyIdentityinputs_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[
StringLowerStringLowerinputs_1_copy:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
pattern
[^a-z\s]*
rewrite É3
StaticRegexReplace_1StaticRegexReplaceStaticRegexReplace:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*Ĉ2
patternş2·2\b(ada|adalah|adanya|adapun|agak|agaknya|agar|akan|akankah|akhir|akhiri|akhirnya|aku|akulah|amat|amatlah|anda|andalah|antar|antara|antaranya|apa|apaan|apabila|apakah|apalagi|apatah|artinya|asal|asalkan|atas|atau|ataukah|ataupun|awal|awalnya|bagai|bagaikan|bagaimana|bagaimanakah|bagaimanapun|bagi|bagian|bahkan|bahwa|bahwasanya|baik|bakal|bakalan|balik|banyak|bapak|baru|bawah|beberapa|begini|beginian|beginikah|beginilah|begitu|begitukah|begitulah|begitupun|bekerja|belakang|belakangan|belum|belumlah|benar|benarkah|benarlah|berada|berakhir|berakhirlah|berakhirnya|berapa|berapakah|berapalah|berapapun|berarti|berawal|berbagai|berdatangan|beri|berikan|berikut|berikutnya|berjumlah|berkali-kali|berkata|berkehendak|berkeinginan|berkenaan|berlainan|berlalu|berlangsung|berlebihan|bermacam|bermacam-macam|bermaksud|bermula|bersama|bersama-sama|bersiap|bersiap-siap|bertanya|bertanya-tanya|berturut|berturut-turut|bertutur|berujar|berupa|besar|betul|betulkah|biasa|biasanya|bila|bilakah|bisa|bisakah|boleh|bolehkah|bolehlah|buat|bukan|bukankah|bukanlah|bukannya|bulan|bung|cara|caranya|cukup|cukupkah|cukuplah|cuma|dahulu|dalam|dan|dapat|dari|daripada|datang|dekat|demi|demikian|demikianlah|dengan|depan|di|dia|diakhiri|diakhirinya|dialah|diantara|diantaranya|diberi|diberikan|diberikannya|dibuat|dibuatnya|didapat|didatangkan|digunakan|diibaratkan|diibaratkannya|diingat|diingatkan|diinginkan|dijawab|dijelaskan|dijelaskannya|dikarenakan|dikatakan|dikatakannya|dikerjakan|diketahui|diketahuinya|dikira|dilakukan|dilalui|dilihat|dimaksud|dimaksudkan|dimaksudkannya|dimaksudnya|diminta|dimintai|dimisalkan|dimulai|dimulailah|dimulainya|dimungkinkan|dini|dipastikan|diperbuat|diperbuatnya|dipergunakan|diperkirakan|diperlihatkan|diperlukan|diperlukannya|dipersoalkan|dipertanyakan|dipunyai|diri|dirinya|disampaikan|disebut|disebutkan|disebutkannya|disini|disinilah|ditambahkan|ditandaskan|ditanya|ditanyai|ditanyakan|ditegaskan|ditujukan|ditunjuk|ditunjuki|ditunjukkan|ditunjukkannya|ditunjuknya|dituturkan|dituturkannya|diucapkan|diucapkannya|diungkapkan|dong|dua|dulu|empat|enggak|enggaknya|entah|entahlah|guna|gunakan|hal|hampir|hanya|hanyalah|hari|harus|haruslah|harusnya|hendak|hendaklah|hendaknya|hingga|ia|ialah|ibarat|ibaratkan|ibaratnya|ibu|ikut|ingat|ingat-ingat|ingin|inginkah|inginkan|ini|inikah|inilah|itu|itukah|itulah|jadi|jadilah|jadinya|jangan|jangankan|janganlah|jauh|jawab|jawaban|jawabnya|jelas|jelaskan|jelaslah|jelasnya|jika|jikalau|juga|jumlah|jumlahnya|justru|kala|kalau|kalaulah|kalaupun|kalian|kami|kamilah|kamu|kamulah|kan|kapan|kapankah|kapanpun|karena|karenanya|kasus|kata|katakan|katakanlah|katanya|ke|keadaan|kebetulan|kecil|kedua|keduanya|keinginan|kelamaan|kelihatan|kelihatannya|kelima|keluar|kembali|kemudian|kemungkinan|kemungkinannya|kenapa|kepada|kepadanya|kesampaian|keseluruhan|keseluruhannya|keterlaluan|ketika|khususnya|kini|kinilah|kira|kira-kira|kiranya|kita|kitalah|kok|kurang|lagi|lagian|lah|lain|lainnya|lalu|lama|lamanya|lanjut|lanjutnya|lebih|lewat|lima|luar|macam|maka|makanya|makin|malah|malahan|mampu|mampukah|mana|manakala|manalagi|masa|masalah|masalahnya|masih|masihkah|masing|masing-masing|mau|maupun|melainkan|melakukan|melalui|melihat|melihatnya|memang|memastikan|memberi|memberikan|membuat|memerlukan|memihak|meminta|memintakan|memisalkan|memperbuat|mempergunakan|memperkirakan|memperlihatkan|mempersiapkan|mempersoalkan|mempertanyakan|mempunyai|memulai|memungkinkan|menaiki|menambahkan|menandaskan|menanti|menanti-nanti|menantikan|menanya|menanyai|menanyakan|mendapat|mendapatkan|mendatang|mendatangi|mendatangkan|menegaskan|mengakhiri|mengapa|mengatakan|mengatakannya|mengenai|mengerjakan|mengetahui|menggunakan|menghendaki|mengibaratkan|mengibaratkannya|mengingat|mengingatkan|menginginkan|mengira|mengucapkan|mengucapkannya|mengungkapkan|menjadi|menjawab|menjelaskan|menuju|menunjuk|menunjuki|menunjukkan|menunjuknya|menurut|menuturkan|menyampaikan|menyangkut|menyatakan|menyebutkan|menyeluruh|menyiapkan|merasa|mereka|merekalah|merupakan|meski|meskipun|meyakini|meyakinkan|minta|mirip|misal|misalkan|misalnya|mula|mulai|mulailah|mulanya|mungkin|mungkinkah|nah|naik|namun|nanti|nantinya|nyaris|nyatanya|oleh|olehnya|pada|padahal|padanya|pak|paling|panjang|pantas|para|pasti|pastilah|penting|pentingnya|per|percuma|perlu|perlukah|perlunya|pernah|persoalan|pertama|pertama-tama|pertanyaan|pertanyakan|pihak|pihaknya|pukul|pula|pun|punya|rasa|rasanya|rata|rupanya|saat|saatnya|saja|sajalah|saling|sama|sama-sama|sambil|sampai|sampai-sampai|sampaikan|sana|sangat|sangatlah|satu|saya|sayalah|se|sebab|sebabnya|sebagai|sebagaimana|sebagainya|sebagian|sebaik|sebaik-baiknya|sebaiknya|sebaliknya|sebanyak|sebegini|sebegitu|sebelum|sebelumnya|sebenarnya|seberapa|sebesar|sebetulnya|sebisanya|sebuah|sebut|sebutlah|sebutnya|secara|secukupnya|sedang|sedangkan|sedemikian|sedikit|sedikitnya|seenaknya|segala|segalanya|segera|seharusnya|sehingga|seingat|sejak|sejauh|sejenak|sejumlah|sekadar|sekadarnya|sekali|sekali-kali|sekalian|sekaligus|sekalipun|sekarang|sekarang|sekecil|seketika|sekiranya|sekitar|sekitarnya|sekurang-kurangnya|sekurangnya|sela|selain|selaku|selalu|selama|selama-lamanya|selamanya|selanjutnya|seluruh|seluruhnya|semacam|semakin|semampu|semampunya|semasa|semasih|semata|semata-mata|semaunya|sementara|semisal|semisalnya|sempat|semua|semuanya|semula|sendiri|sendirian|sendirinya|seolah|seolah-olah|seorang|sepanjang|sepantasnya|sepantasnyalah|seperlunya|seperti|sepertinya|sepihak|sering|seringnya|serta|serupa|sesaat|sesama|sesampai|sesegera|sesekali|seseorang|sesuatu|sesuatunya|sesudah|sesudahnya|setelah|setempat|setengah|seterusnya|setiap|setiba|setibanya|setidak-tidaknya|setidaknya|setinggi|seusai|sewaktu|siap|siapa|siapakah|siapapun|sini|sinilah|soal|soalnya|suatu|sudah|sudahkah|sudahlah|supaya|tadi|tadinya|tahu|tahun|tak|tambah|tambahnya|tampak|tampaknya|tandas|tandasnya|tanpa|tanya|tanyakan|tanyanya|tapi|tegas|tegasnya|telah|tempat|tengah|tentang|tentu|tentulah|tentunya|tepat|terakhir|terasa|terbanyak|terdahulu|terdapat|terdiri|terhadap|terhadapnya|teringat|teringat-ingat|terjadi|terjadilah|terjadinya|terkira|terlalu|terlebih|terlihat|termasuk|ternyata|tersampaikan|tersebut|tersebutlah|tertentu|tertuju|terus|terutama|tetap|tetapi|tiap|tiba|tiba-tiba|tidak|tidakkah|tidaklah|tiga|tinggi|toh|tunjuk|turut|tutur|tuturnya|ucap|ucapnya|ujar|ujarnya|umum|umumnya|ungkap|ungkapnya|untuk|usah|usai|waduh|wah|wahai|waktu|waktunya|walau|walaupun|wong|yaitu|yakin|yakni|yang)\b\s**
rewrite b
StringStripStringStripStaticRegexReplace_1:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1IdentityStringStrip:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:- )
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĉ
E
__inference__traced_restore_163
file_prefix

identity_1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHr
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B £
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 X
IdentityIdentityfile_prefix^NoOp"/device:CPU:0*
T0*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ò
[
!__inference_signature_wrapper_128

inputs	
inputs_1
identity	

identity_1
PartitionedCallPartitionedCallinputsinputs_1*
Tin
2	*
Tout
2	*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *
fR
__inference_pruned_118`
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_1"µ	J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_default
9
inputs/
serving_default_inputs:0	˙˙˙˙˙˙˙˙˙
=
inputs_11
serving_default_inputs_1:0˙˙˙˙˙˙˙˙˙8
sentiment_xf(
PartitionedCall:0	˙˙˙˙˙˙˙˙˙3
text_xf(
PartitionedCall:1˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:ü

created_variables
	resources
trackable_objects
initializers

assets
transform_fn

signatures"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.B,
__inference_pruned_118inputsinputs_1
,
serving_default"
signature_map
ÏBÌ
!__inference_signature_wrapper_128inputsinputs_1"
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
annotationsŞ *
 
__inference_pruned_118çz˘w
p˘m
kŞh
7
	sentiment*'
inputs/sentiment˙˙˙˙˙˙˙˙˙	
-
text%"
inputs/text˙˙˙˙˙˙˙˙˙
Ş "iŞf
6
sentiment_xf&#
sentiment_xf˙˙˙˙˙˙˙˙˙	
,
text_xf!
text_xf˙˙˙˙˙˙˙˙˙ü
!__inference_signature_wrapper_128Öi˘f
˘ 
_Ş\
*
inputs 
inputs˙˙˙˙˙˙˙˙˙	
.
inputs_1"
inputs_1˙˙˙˙˙˙˙˙˙"iŞf
6
sentiment_xf&#
sentiment_xf˙˙˙˙˙˙˙˙˙	
,
text_xf!
text_xf˙˙˙˙˙˙˙˙˙