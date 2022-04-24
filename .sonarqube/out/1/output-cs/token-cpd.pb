∂Ñ
:C:\Users\David\source\repos\proyectoTEA\Datos\Actividad.cs
	namespace 	
Datos
 
{ 
public 

class 
	Actividad 
: 
Mapping $
{ 
public 
int 8
,verificarCantidadMaximaActividadesPorDocente ?
(? @

UActividad@ J

actividadEK U
)U V
{ 	
return 
new 
Mapping 
( 
)  
.  !
	actividad! *
.* +
Where+ 0
(0 1
x1 2
=>3 5
(6 7
x7 8
.8 9
Docente_creador9 H
.H I
EqualsI O
(O P

actividadEP Z
.Z [
Docente_creador[ j
)j k
)k l
)l m
.m n
Countn s
(s t
)t u
;u v
} 	
public 
void 
agregarActividad $
($ %

UActividad% /

actividadE0 :
): ;
{ 	
using 
( 
var 
db 
= 
new 
Mapping  '
(' (
)( )
)) *
{ 
db 
. 
	actividad 
. 
Add  
(  !

actividadE! +
)+ ,
;, -
db 
. 
SaveChanges 
( 
)  
;  !
} 
} 	
public 
List 
< 

UActividad 
> #
listaActividadesDocente  7
(7 8

UActividad8 B
	idDocenteC L
)L M
{ 	
using   
(   
var   
db   
=   
new   
Mapping    '
(  ' (
)  ( )
)  ) *
{!! 
List"" 
<"" 	

UActividad""	 
>"" 
lista"" 
="" 
("" 
from"" "
a""# $
in""% '
db""( *
.""* +
	actividad""+ 4
join## 
tp## 
in## 
db## 
.## 
uTipoActividads## )
on##* ,
a##- .
.##. /
Tipo_actividad##/ =
equals##> D
tp##E G
.##G H
Id_tp_actividad##H W
where$$ 
a$$ 
.$$ 
Docente_creador$$ #
==$$$ &
	idDocente$$' 0
.$$0 1
Docente_creador$$1 @
select&& 
new&& 
{'' 
a(( 
,(( 
tp)) 
}** 
)** 
.** 
ToList** 
(** 
)** 
.** 
Select** 
(** 
m**  
=>**! #
new**$ '

UActividad**( 2
{++ 
Id_actividad,, 
=,, 
m,, 
.,, 
a,, 
.,,  
Id_actividad,,  ,
,,,, -
NombreActividad-- 
=-- 
m--  
.--  !
a--! "
.--" #
NombreActividad--# 2
,--2 3
Descripcion.. 
=.. 
m.. 
... 
a.. 
... 
Descripcion.. *
,..* +
Contenido_actividad//  
=//! "
m//# $
.//$ %
a//% &
.//& '
Contenido_actividad//' :
,//: ; 
Tipo_actividad_texto00 !
=00" #
m00$ %
.00% &
tp00& (
.00( )
ActividadNombre00) 8
}11 
)11 
.11 
ToList11 
(11 
)11 
;11 
return22 

lista22 
;22 
}33 
}44 	
public55 
void55	 
eliminarActividad55 
(55  
int55  #
actividad_id55$ 0
)550 1
{66 
using77 
(77	 

var77
 
db77 
=77 
new77 
Mapping77 
(77 
)77  
)77  !
{88 

UActividad:: 
actividadAEliminar:: !
=::" #
db::$ &
.::& '
	actividad::' 0
.::0 1
Where::1 6
(::6 7
x::7 8
=>::9 ;
x::< =
.::= >
Id_actividad::> J
.::J K
Equals::K Q
(::Q R
actividad_id::R ^
)::^ _
)::_ `
.::` a
FirstOrDefault::a o
(::o p
)::p q
;::q r
db;; 
.;; 
	actividad;; 
.;; 
Attach;; 
(;; 
actividadAEliminar;; *
);;* +
;;;+ ,
var<< 
elimina<< 
=<< 
db<< 
.<< 
Entry<< 
(<< 
actividadAEliminar<< -
)<<- .
;<<. /
elimina== 
.== 
State== 
=== 
EntityState== 
.==  
Deleted==  '
;==' (
db>> 
.>> 
SaveChanges>> 
(>> 
)>> 
;>> 
}@@ 
}AA 
publicDD 

UActividadDD	 
getActivityIdDD !
(DD! "
intDD" %
activity_idDD& 1
)DD1 2
{EE 
usingFF 
(FF	 

varFF
 
dbFF 
=FF 
newFF 
MappingFF 
(FF 
)FF  
)FF  !
{GG 
returnII 

dbII 
.II 
	actividadII 
.II 
WhereII 
(II 
xII 
=>II  "
xII# $
.II$ %
Id_actividadII% 1
.II1 2
EqualsII2 8
(II8 9
activity_idII9 D
)IID E
)IIE F
.IIF G
FirstOrDefaultIIG U
(IIU V
)IIV W
;IIW X
}KK 
}LL 
publicNN 
ListNN	 
<NN 
UTipoActividadNN 
>NN 
getTypeActivityNN -
(NN- .
)NN. /
{OO 
returnPP 	
newPP
 
MappingPP 
(PP 
)PP 
.PP 
uTipoActividadsPP '
.PP' (
ToListPP( .
(PP. /
)PP/ 0
;PP0 1
}QQ 
publicTT 
stringTT	 
putActividadTT 
(TT 

UActividadTT '
actividadHechaTT( 6
)TT6 7
{UU 
usingVV 
(VV	 

varVV
 
dbVV 
=VV 
newVV 
MappingVV 
(VV 
)VV  
)VV  !
{WW 

UActividadXX 
actividadActualizarXX "
=XX# $
dbXX% '
.XX' (
	actividadXX( 1
.XX1 2
WhereXX2 7
(XX7 8
xXX8 9
=>XX: <
xXX= >
.XX> ?
Id_actividadXX? K
.XXK L
EqualsXXL R
(XXR S
actividadHechaXXS a
.XXa b
Id_actividadXXb n
)XXn o
)XXo p
.XXp q
FirstOrDefaultXXq 
(	XX Ä
)
XXÄ Å
;
XXÅ Ç
ifYY 
(YY 
actividadActualizarYY 
.YY (
EstudiantesHicieronActividadYY 8
!=YY9 ;
nullYY< @
)YY@ A
{ZZ 
List]] 	
<]]	 

PacienteScoreJSon]]
 
>]] "
pacientesEnLaActividad]] 3
=]]4 5
JsonConvert]]6 A
.]]A B
DeserializeObject]]B S
<]]S T
List]]T X
<]]X Y
PacienteScoreJSon]]Y j
>]]j k
>]]k l
(]]l m 
actividadActualizar	]]m Ä
.
]]Ä Å*
EstudiantesHicieronActividad
]]Å ù
)
]]ù û
;
]]û ü"
pacientesEnLaActividad^^ 
.^^ 
Add^^ 
(^^  
actividadHecha^^  .
.^^. /
NuevoEstudiante^^/ >
)^^> ?
;^^? @
actividadActualizar`` 
.`` (
EstudiantesHicieronActividad`` 5
=``6 7
JsonConvert``8 C
.``C D
SerializeObject``D S
(``S T"
pacientesEnLaActividad``T j
,``j k

Formatting``l v
.``v w
Indented``w 
,	`` Ä
new
``Å Ñ$
JsonSerializerSettings
``Ö õ
{aa 
NullValueHandlingbb 
=bb 
NullValueHandlingbb +
.bb+ ,
Ignorebb, 2
}cc 
)cc 
;cc 
}dd 
elseee 
{ff 
Listgg 	
<gg	 

PacienteScoreJSongg
 
>gg "
pacientesEnLaActividadgg 3
=gg4 5
newgg6 9
Listgg: >
<gg> ?
PacienteScoreJSongg? P
>ggP Q
(ggQ R
)ggR S
;ggS T"
pacientesEnLaActividadhh 
.hh 
Addhh 
(hh  
actividadHechahh  .
.hh. /
NuevoEstudiantehh/ >
)hh> ?
;hh? @
actividadActualizarii 
.ii (
EstudiantesHicieronActividadii 5
=ii6 7
JsonConvertii8 C
.iiC D
SerializeObjectiiD S
(iiS T"
pacientesEnLaActividadiiT j
,iij k

Formattingiil v
.iiv w
Indentediiw 
,	ii Ä
new
iiÅ Ñ$
JsonSerializerSettings
iiÖ õ
{jj 
NullValueHandlingkk 
=kk 
NullValueHandlingkk +
.kk+ ,
Ignorekk, 2
}ll 
)ll 
;ll 
}mm 
varnn 
entynn 
=nn 
dbnn 
.nn 
Entrynn 
(nn 
actividadActualizarnn +
)nn+ ,
;nn, -
entyoo 
.oo 	
Stateoo	 
=oo 
EntityStateoo 
.oo 
Modifiedoo %
;oo% &
dbpp 
.pp 
SaveChangespp 
(pp 
)pp 
;pp 
returnqq 

$strqq ;
;qq; <
}rr 
}ss 
publicvv 
Listvv	 
<vv 
	UPacientevv 
>vv /
#getAcivitysDidByPatientForAttendantvv <
(vv< =
intvv= @
id_activityvvA L
,vvL M
StringvvM S
id_card_patientvvT c
)vvc d
{ww 

UActividadxx 
activityDidxx 
=xx 
newxx 
Mappingxx  '
(xx' (
)xx( )
.xx) *
	actividadxx* 3
.xx3 4
Wherexx4 9
(xx9 :
xxx: ;
=>xx< >
xxx? @
.xx@ A
Id_actividadxxA M
.xxM N
EqualsxxN T
(xxT U
id_activityxxU `
)xx` a
)xxa b
.xxb c
FirstOrDefaultxxc q
(xxq r
)xxr s
;xxs t
Listyy 
<yy 
PacienteScoreJSonyy 
>yy  
patientInTheActivityyy /
=yy0 1
newyy2 5
Listyy6 :
<yy: ;
PacienteScoreJSonyy; L
>yyL M
(yyM N
)yyN O
;yyO P
Listzz 
<zz 
	UPacientezz 
>zz 
pacientzz 
=zz 
newzz  
Listzz! %
<zz% &
	UPacientezz& /
>zz/ 0
(zz0 1
)zz1 2
;zz2 3
if{{ 
({{ 
activityDid{{ 
.{{ (
EstudiantesHicieronActividad{{ /
!={{/ 1
null{{1 5
){{5 6
{||  
patientInTheActivity}} 
=}} 
JsonConvert~~ 
.~~ 
DeserializeObject~~ !
<~~! "
List~~" &
<~~& '
PacienteScoreJSon~~' 8
>~~8 9
>~~9 :
(~~: ;
activityDid~~; F
.~~F G(
EstudiantesHicieronActividad~~G c
)~~c d
;~~d e 
patientInTheActivity 
=  
patientInTheActivity /
./ 0
Where0 5
(5 6
x6 7
=>8 :
x; <
.< =
DocumentoPaciente= N
.N O
EqualsO U
(U V
id_card_patientV e
)e f
)f g
.g h
ToListh n
(n o
)o p
;p q
pacient
ÄÄ 
=
ÄÄ "
patientInTheActivity
ÄÄ "
!=
ÄÄ# %
null
ÄÄ& *
?
ÄÄ+ ,
new
ÄÄ- 0
Mapping
ÄÄ1 8
(
ÄÄ8 9
)
ÄÄ9 :
.
ÄÄ: ;
paciente
ÄÄ; C
.
ÄÄC D
Where
ÄÄD I
(
ÄÄI J
x
ÄÄJ K
=>
ÄÄL N
x
ÄÄO P
.
ÄÄP Q
	Documento
ÄÄQ Z
==
ÄÄ[ ]
id_card_patient
ÄÄ^ m
)
ÄÄm n
.
ÄÄn o
ToList
ÄÄo u
(
ÄÄu v
)
ÄÄv w
:
ÄÄw x
null
ÅÅ 	
;
ÅÅ	 

}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
pacient
ÖÖ 
=
ÖÖ 
null
ÖÖ 
;
ÖÖ 
}
ÜÜ 
return
áá 	
pacient
áá
 
;
áá 
}
àà 
public
ää 
List
ää	 
<
ää 
	UPaciente
ää 
>
ää /
!getAcivitysDidByPatientForTeacher
ää :
(
ää: ;
int
ää; >
id_activity
ää? J
,
ääJ K
string
ääL R
id_card_teacher
ääS b
)
ääb c
{
ãã 

UActividad
åå 
activityDid
åå 
=
åå 
new
åå 
Mapping
åå  '
(
åå' (
)
åå( )
.
åå) *
	actividad
åå* 3
.
åå3 4
Where
åå4 9
(
åå9 :
x
åå: ;
=>
åå< >
x
åå? @
.
åå@ A
Id_actividad
ååA M
.
ååM N
Equals
ååN T
(
ååT U
id_activity
ååU `
)
åå` a
)
ååa b
.
ååb c
FirstOrDefault
ååc q
(
ååq r
)
åår s
;
åås t
List
çç 
<
çç 
PacienteScoreJSon
çç 
>
çç "
patientInTheActivity
çç /
=
çç0 1
new
çç2 5
List
çç6 :
<
çç: ;
PacienteScoreJSon
çç; L
>
ççL M
(
ççM N
)
ççN O
;
ççO P
List
éé 
<
éé 
	UPaciente
éé 
>
éé !
patientsDidActivity
éé &
=
éé' (
new
éé) ,
List
éé- 1
<
éé1 2
	UPaciente
éé2 ;
>
éé; <
(
éé< =
)
éé= >
;
éé> ?
if
èè 
(
èè 
activityDid
èè 
.
èè *
EstudiantesHicieronActividad
èè /
!=
èè0 2
null
èè3 7
)
èè7 8
{
êê "
patientInTheActivity
ëë 
=
ëë 
JsonConvert
íí 
.
íí 
DeserializeObject
íí !
<
íí! "
List
íí" &
<
íí& '
PacienteScoreJSon
íí' 8
>
íí8 9
>
íí9 :
(
íí: ;
activityDid
íí; F
.
ííF G*
EstudiantesHicieronActividad
ííG c
)
ííc d
;
ííd e
foreach
ìì 
(
ìì 
	UPaciente
ìì 
patient
ìì 
in
ìì  
new
ìì! $
Mapping
ìì% ,
(
ìì, -
)
ìì- .
.
ìì. /
paciente
ìì/ 7
.
ìì7 8
Where
ìì8 =
(
ìì= >
x
ìì> ?
=>
ìì@ B
x
ììC D
.
ììD E
Documento_docente
ììE V
.
ììV W
Equals
ììW ]
(
ìì] ^
id_card_teacher
ìì^ m
)
ììm n
)
ììn o
.
ììo p
ToList
ììp v
(
ììv w
)
ììw x
)
ììx y
{
îî 
if
ïï 
(
ïï 	"
patientInTheActivity
ïï	 
.
ïï 
Where
ïï #
(
ïï# $
x
ïï$ %
=>
ïï% '
x
ïï' (
.
ïï( )
DocumentoPaciente
ïï) :
.
ïï: ;
Equals
ïï; A
(
ïïA B
patient
ïïB I
.
ïïI J
	Documento
ïïJ S
)
ïïS T
)
ïïT U
.
ïïU V
FirstOrDefault
ïïV d
(
ïïd e
)
ïïe f
!=
ïïf h
null
ïïh l
)
ïïl m
{
ññ !
patientsDidActivity
óó 
.
óó 
Add
óó 
(
óó 
patient
óó %
)
óó% &
;
óó& '
}
òò 
}
ôô 
}
õõ 
else
úú 
{
ùù !
patientsDidActivity
ûû 
=
ûû 
null
ûû 
;
ûû 
}
üü 
return
†† 	!
patientsDidActivity
††
 
;
†† 
}
°° 
}
¢¢ 
}££ ∑
8C:\Users\David\source\repos\proyectoTEA\Datos\Mapping.cs
public 
class 
Mapping 
: 
	DbContext  
{ 
public 
Mapping 
( 
) 
: 
base 
( 
$str (
)( )
{ 
}		 
public

 
DbSet

 
<

 
UUsers

 
>

 
user

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
DbSet 
< 

UAcudiente 
> 
	acudiente #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DbSet 
< 
UDocente 
> 
docente 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DbSet 
< 
	UPaciente 
> 
paciente !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DbSet 
< 
URol 
> 
rol 
{ 
get 
; 
set "
;" #
}$ %
public 
DbSet 
< 
UAcceso 
> 
acceso 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DbSet 
< 
UTipoActividad 
> 
uTipoActividads -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
DbSet 
< 

LoginToken 
> 
login_token %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DbSet 
< 

UActividad 
> 
	actividad #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} Û
HC:\Users\David\source\repos\proyectoTEA\Datos\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str  
)  !
]! "
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str "
)" #
]# $
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *û
:C:\Users\David\source\repos\proyectoTEA\Datos\Seguridad.cs
	namespace		 	
Datos		
 
{

 
public 

class 
	Seguridad 
: 
Mapping $
{ 
public 

UsersLogin 

UsersLogin $
{ 	
get 
=> 
default 
( 

UsersLogin %
)% &
;& '
set 
{ 
} 
} 	
public 
async 
Task 
guardarTokenLogin +
(+ ,

LoginToken, 6
token7 <
)< =
{ 	
using 
( 
var 
db 
= 
new 
Mapping  '
(' (
)( )
)) *
{ 
db 
. 
login_token 
. 
Add "
(" #
token# (
)( )
;) *
db 
. 
SaveChanges 
( 
)  
;  !
} 
} 	
public 
void 
cerrarAcceso  
(  !
int! $
userid% +
)+ ,
{ 	
using   
(   
var   
db   
=   
new   
Mapping    '
(  ' (
)  ( )
)  ) *
{!! 
UAcceso"" 
acceso"" 
=""  
new""! $
UAcceso""% ,
("", -
)""- .
;"". /
acceso## 
=## 
db## 
.## 
acceso## "
.##" #
Where### (
(##( )
x##) *
=>##+ -
x##. /
.##/ 0

Id_usuario##0 :
==##; =
userid##> D
&&##E G
x##H I
.##I J
Fecha_finSesion##J Y
==##Z \
null##] a
)##a b
.##b c
FirstOrDefault##c q
(##q r
)##r s
;##s t
acceso$$ 
.$$ 
Fecha_finSesion$$ &
=$$' (
DateTime$$) 1
.$$1 2
Now$$2 5
;$$5 6
db&& 
.&& 
acceso&& 
.&& 
Attach&&  
(&&  !
acceso&&! '
)&&' (
;&&( )
var'' 
entry'' 
='' 
db'' 
.'' 
Entry'' $
(''$ %
acceso''% +
)''+ ,
;'', -
entry(( 
.(( 
State(( 
=(( 
EntityState(( )
.(() *
Modified((* 2
;((2 3
db)) 
.)) 
SaveChanges)) 
()) 
)))  
;))  !
}** 
}++ 	
public.. 
void.. 
borrarTokenLogin.. $
(..$ %
UUsers..% +
	idUsuario.., 5
)..5 6
{// 	
using00 
(00 
var00 
db00 
=00 
new00 
Mapping00  '
(00' (
)00( )
)00) *
{11 

LoginToken22 
usuario22 "
=22# $
db22% '
.22' (
login_token22( 3
.223 4
Where224 9
(229 :
x22: ;
=>22< >
x22? @
.22@ A
User_id22A H
==22I K
	idUsuario22L U
.22U V
Id22V X
)22X Y
.22Y Z
First22Z _
(22_ `
)22` a
;22a b
db33 
.33 
login_token33 
.33 
Remove33 %
(33% &
usuario33& -
)33- .
;33. /
db44 
.44 
SaveChanges44 
(44 
)44  
;44  !
}55 
}66 	
}88 
}99 âk
=C:\Users\David\source\repos\proyectoTEA\Datos\UserPaciente.cs
	namespace 	
Datos
 
{ 
public		 

class		 
UserPaciente		 
:		 
Mapping		  '
{

 
public 
	UPaciente -
!verificarExistenciaDocenteEnlazar :
(: ;
UDocente; C
docenteAEnlazarD S
)S T
{ 	
return 
new 
Mapping 
( 
)  
.  !
paciente! )
.) *
Where* /
(/ 0
x0 1
=>2 4
(5 6
x6 7
.7 8
	Documento8 A
.A B
EqualsB H
(H I
docenteAEnlazarI X
.X Y%
Numero_documento_pacienteY r
)r s
)s t
)t u
.u v
FirstOrDefault	v Ñ
(
Ñ Ö
)
Ö Ü
;
Ü á
} 	
public 
bool 4
(verificarDocentePacienteMismaInstitucion <
(< =
UDocente= E
docenteAEnlazarF U
)U V
{ 	
	UPaciente 
paciente 
=  
new! $
Mapping% ,
(, -
)- .
.. /
paciente/ 7
.7 8
Where8 =
(= >
x> ?
=>@ B
(C D
xD E
.E F
	DocumentoF O
.O P
EqualsP V
(V W
docenteAEnlazarW f
.f g&
Numero_documento_paciente	g Ä
)
Ä Å
)
Å Ç
)
Ç É
.
É Ñ
FirstOrDefault
Ñ í
(
í ì
)
ì î
;
î ï
if 
( 
paciente 
. 
Institucion_id '
.' (
Equals( .
(. /
docenteAEnlazar/ >
.> ?
Institucion_id? M
)M N
)N O
{ 
return 
true 
; 
} 
else 
{ 
return 
false 
; 
} 
} 	
public 
void "
enlazarPacienteDocente *
(* +
UDocente+ 3
docenteAEnlazar4 C
)C D
{ 	
using   
(   
var   
db   
=   
new   
Mapping    '
(  ' (
)  ( )
)  ) *
{!! 
	UPaciente"" 
pacienteAEnlazar"" *
=""+ ,
db""- /
.""/ 0
paciente""0 8
.""8 9
Where""9 >
(""> ?
x""? @
=>""A C
(""D E
x""E F
.""F G
	Documento""G P
.""P Q
Equals""Q W
(""W X
docenteAEnlazar""X g
.""g h&
Numero_documento_paciente	""h Å
)
""Å Ç
)
""Ç É
)
""É Ñ
.
""Ñ Ö
FirstOrDefault
""Ö ì
(
""ì î
)
""î ï
;
""ï ñ
pacienteAEnlazar$$  
.$$  !
Documento_docente$$! 2
=$$3 4
docenteAEnlazar$$5 D
.$$D E
	Documento$$E N
;$$N O
var&& 
entry&& 
=&& 
db&& 
.&& 
Entry&& $
(&&$ %
pacienteAEnlazar&&% 5
)&&5 6
;&&6 7
entry'' 
.'' 
State'' 
='' 
EntityState'' )
.'') *
Modified''* 2
;''2 3
db(( 
.(( 
SaveChanges(( 
((( 
)((  
;((  !
}** 
},, 	
public.. 
List.. 
<.. 
	UPaciente.. 
>.. &
obtenerPacientesPorEnlazar.. 9
(..9 :
int..: =
id..> @
)..@ A
{// 	
using00 
(00 
var00 
db00 
=00 
new00 
Mapping00  '
(00' (
)00( )
)00) *
{11 
return22 
id22 
==22 
$num22 
?22  
db22! #
.22# $
paciente22$ ,
.22, -
Where22- 2
(222 3
x223 4
=>225 7
x228 9
.229 :
Documento_docente22: K
.22K L
Equals22L R
(22R S
null22S W
)22W X
)22X Y
.22Y Z
ToList22Z `
(22` a
)22a b
:22c d
db33 
.33 
paciente33 
.33  
Where33  %
(33% &
x33& '
=>33( *
x33+ ,
.33, -
Documento_acudiente33- @
.33@ A
Equals33A G
(33G H
null33H L
)33L M
)33M N
.33N O
ToList33O U
(33U V
)33V W
;33W X
}44 
}66 	
public77 
List77 
<77 
	UPaciente77 
>77 %
obtenerPacientesEnlazados77 8
(778 9
int779 <
id77= ?
,77? @
	UPaciente77A J
tipoUsuario77K V
)77V W
{88 	
using99 
(99 
var99 
db99 
=99 
new99 
Mapping99  '
(99' (
)99( )
)99) *
{:: 
return;; 
id;; 
==;; 
$num;; 
?;;  
db;;! #
.;;# $
paciente;;$ ,
.;;, -
Where;;- 2
(;;2 3
x;;3 4
=>;;5 7
x;;8 9
.;;9 :
Documento_docente;;: K
==;;L N
tipoUsuario;;O Z
.;;Z [
Documento_docente;;[ l
);;l m
.;;m n
ToList;;n t
(;;t u
);;u v
:;;w x
db<< 
.<< 
paciente<< 
.<<  
Where<<  %
(<<% &
x<<& '
=><<( *
x<<+ ,
.<<, -
Documento_acudiente<<- @
==<<A C
tipoUsuario<<D O
.<<O P
Documento_acudiente<<P c
)<<c d
.<<d e
ToList<<e k
(<<k l
)<<l m
;<<m n
}== 
}?? 	
public@@ 
void@@ '
enlazarDocenteConEstudiante@@ /
(@@/ 0
	UPaciente@@0 9
datos@@: ?
)@@? @
{AA 	
usingBB 
(BB 
varBB 
dbBB 
=BB 
newBB 
MappingBB  '
(BB' (
)BB( )
)BB) *
{CC 
	UPacienteDD 
pacienteAEnlazarDD *
=DD+ ,
dbDD- /
.DD/ 0
pacienteDD0 8
.DD8 9
WhereDD9 >
(DD> ?
xDD? @
=>DDA C
xDDD E
.DDE F
	DocumentoDDF O
.DDO P
EqualsDDP V
(DDV W
datosDDW \
.DD\ ]
	DocumentoDD] f
)DDf g
)DDg h
.DDh i
FirstOrDefaultDDi w
(DDw x
)DDx y
;DDy z
pacienteAEnlazarEE  
.EE  !
Documento_docenteEE! 2
=EE3 4
datosEE5 :
.EE: ;
Documento_docenteEE; L
;EEL M
varFF 
entryFF 
=FF 
dbFF 
.FF 
EntryFF $
(FF$ %
pacienteAEnlazarFF% 5
)FF5 6
;FF6 7
entryGG 
.GG 
StateGG 
=GG 
EntityStateGG )
.GG) *
ModifiedGG* 2
;GG2 3
dbHH 
.HH 
SaveChangesHH 
(HH 
)HH  
;HH  !
}JJ 
}KK 	
publicLL 
voidLL )
enlazarAcudienteConEstudianteLL 1
(LL1 2
	UPacienteLL2 ;
datosLL< A
)LLA B
{MM 	
usingNN 
(NN 
varNN 
dbNN 
=NN 
newNN 
MappingNN  '
(NN' (
)NN( )
)NN) *
{OO 
	UPacientePP 
pacienteAEnlazarPP *
=PP+ ,
dbPP- /
.PP/ 0
pacientePP0 8
.PP8 9
WherePP9 >
(PP> ?
xPP? @
=>PPA C
xPPD E
.PPE F
	DocumentoPPF O
.PPO P
EqualsPPP V
(PPV W
datosPPW \
.PP\ ]
	DocumentoPP] f
)PPf g
)PPg h
.PPh i
FirstOrDefaultPPi w
(PPw x
)PPx y
;PPy z
pacienteAEnlazarQQ  
.QQ  !
Documento_acudienteQQ! 4
=QQ5 6
datosQQ7 <
.QQ< =
Documento_acudienteQQ= P
;QQP Q
varRR 
entryRR 
=RR 
dbRR 
.RR 
EntryRR $
(RR$ %
pacienteAEnlazarRR% 5
)RR5 6
;RR6 7
entrySS 
.SS 
StateSS 
=SS 
EntityStateSS )
.SS) *
ModifiedSS* 2
;SS2 3
dbTT 
.TT 
SaveChangesTT 
(TT 
)TT  
;TT  !
}UU 
}VV 	
publicWW 
voidWW	 
eliminarEnlaceWW 
(WW 
	UPacienteWW &
datosWW' ,
)WW, -
{XX 
usingYY 
(YY	 

varYY
 
dbYY 
=YY 
newYY 
MappingYY 
(YY 
)YY  
)YY  !
{ZZ 
	UPaciente[[ 
pacienteADesenlazar[[ !
=[[" #
new[[$ '
	UPaciente[[( 1
([[1 2
)[[2 3
;[[3 4
if\\ 
(\\ 
datos\\ 
.\\ 
Documento_docente\\ 
!=\\  "
null\\# '
)\\' (
{]] 
pacienteADesenlazar^^ 
=^^ 
db^^ 
.^^ 
paciente^^ &
.^^& '
Where^^' ,
(^^, -
x^^- .
=>^^/ 1
(^^2 3
x^^3 4
.^^4 5
Documento_docente^^5 F
.^^F G
Equals^^G M
(^^M N
datos^^N S
.^^S T
Documento_docente^^T e
)^^e f
&&__ 
(__ 
x__ 	
.__	 

	Documento__
 
.__ 
Equals__ 
(__ 
datos__  
.__  !
	Documento__! *
)__* +
)__+ ,
)__, -
)__- .
.__. /
FirstOrDefault__/ =
(__= >
)__> ?
;__? @
pacienteADesenlazar`` 
.`` 
Documento_docente`` *
=``+ ,
null``- 1
;``1 2
}aa 
elsebb 
ifbb	 
(bb 
datosbb 
.bb 
Documento_acudientebb %
!=bb& (
nullbb) -
)bb- .
{cc 
pacienteADesenlazardd 
=dd 
dbdd 
.dd 
pacientedd &
.dd& '
Wheredd' ,
(dd, -
xdd- .
=>dd/ 1
(dd2 3
xdd3 4
.dd4 5
Documento_acudientedd5 H
.ddH I
EqualsddI O
(ddO P
datosddP U
.ddU V
Documento_acudienteddV i
)ddi j
&&ee 
(ee 	
xee	 

.ee
 
	Documentoee 
.ee 
Equalsee 
(ee 
datosee !
.ee! "
	Documentoee" +
)ee+ ,
)ee, -
)ee- .
)ee. /
.ee/ 0
FirstOrDefaultee0 >
(ee> ?
)ee? @
;ee@ A
pacienteADesenlazarff 
.ff 
Documento_acudienteff ,
=ff- .
nullff/ 3
;ff3 4
}gg 
varii 
entryii 
=ii 
dbii 
.ii 
Entryii 
(ii 
pacienteADesenlazarii ,
)ii, -
;ii- .
entryjj 	
.jj	 

Statejj
 
=jj 
EntityStatejj 
.jj 
Modifiedjj &
;jj& '
dbkk 
.kk 
SaveChangeskk 
(kk 
)kk 
;kk 
}ll 
}mm 
publicoo 
	UPacienteoo	 
datosPacienteoo  
(oo  !
stringoo! '
paciente_documentooo( :
)oo: ;
{pp 
usingqq 
(qq	 

varqq
 
dbqq 
=qq 
newqq 
Mappingqq 
(qq 
)qq  
)qq  !
{rr 
returnss 

dbss 
.ss 
pacientess 
.ss 
Wheress 
(ss 
xss 
=>ss !
xss" #
.ss# $
	Documentoss$ -
.ss- .
Equalsss. 4
(ss4 5
paciente_documentoss5 G
)ssG H
)ssH I
.ssI J
FirstOrDefaultssJ X
(ssX Y
)ssY Z
;ssZ [
}tt 
}uu 
publicww 
	UPacienteww	 !
getPatientInformationww (
(ww( )
Stringww) /
id_card_attendantww0 A
)wwA B
{xx 
returnyy 	
newyy
 
Mappingyy 
(yy 
)yy 
.yy 
pacienteyy  
.yy  !
Whereyy! &
(yy& '
xyy' (
=>yy) +
xyy, -
.yy- .
Documento_acudienteyy. A
.yyA B
EqualsyyB H
(yyH I
id_card_attendantyyI Z
)yyZ [
)yy[ \
.yy\ ]
FirstOrDefaultyy] k
(yyk l
)yyl m
;yym n
}zz 
}|| 
}}} û0
;C:\Users\David\source\repos\proyectoTEA\Datos\UsersLogin.cs
	namespace 	
Datos
 
{		 
public

 

class

 

UsersLogin

 
{ 
public 
UUsers &
verificarExistenciaUsuario 0
(0 1
UUsers1 7
usuarioE8 @
)@ A
{ 	
return 
new 
Mapping 
( 
)  
.  !
user! %
.% &
Where& +
(+ ,
x, -
=>. 0
(1 2
x2 3
.3 4
	Documento4 =
.= >
Equals> D
(D E
usuarioEE M
.M N
	DocumentoN W
)W X
)X Y
)Y Z
.Z [
FirstOrDefault[ i
(i j
)j k
;k l
} 	
public 
UUsers 
verificarLogin $
($ %
UUsers% +
usuarioE, 4
)4 5
{ 	
return 
new 
Mapping 
( 
)  
.  !
user! %
.% &
Where& +
(+ ,
x, -
=>. 0
(1 2
x2 3
.3 4
	Documento4 =
.= >
Equals> D
(D E
usuarioEE M
.M N
	DocumentoN W
)W X
)X Y
&&Z \
(] ^
x^ _
._ `
Clave` e
.e f
Equalsf l
(l m
usuarioEm u
.u v
Clavev {
){ |
)| }
)} ~
.~ 
FirstOrDefault	 ç
(
ç é
)
é è
;
è ê
} 	
public 
UUsers &
datosUsuarioSegunDocumento 0
(0 1
UUsers1 7
usuarioE8 @
)@ A
{ 	
UUsers 
usuario 
= 
new  
UUsers! '
(' (
)( )
;) *
usuario 
= 
new 
Mapping !
(! "
)" #
.# $
user$ (
.( )
Where) .
(. /
x/ 0
=>1 3
(4 5
x5 6
.6 7
	Documento7 @
.@ A
EqualsA G
(G H
usuarioEH P
.P Q
	DocumentoQ Z
)Z [
)[ \
)\ ]
.] ^
FirstOrDefault^ l
(l m
)m n
;n o
return 
usuario 
; 
} 	
public 
async 
Task 
< 

UAcudiente $
>$ %/
#datosAcudienteUsuarioSegunDocumento& I
(I J
stringJ P
cedulaEQ X
)X Y
{ 	

UAcudiente   
	acudiente    
=  ! "
new  # &

UAcudiente  ' 1
(  1 2
)  2 3
;  3 4
	acudiente!! 
=!! 
new!! 
Mapping!! #
(!!# $
)!!$ %
.!!% &
	acudiente!!& /
.!!/ 0
Where!!0 5
(!!5 6
x!!6 7
=>!!8 :
x!!; <
.!!< =
	Documento!!= F
.!!F G
Equals!!G M
(!!M N
cedulaE!!N U
)!!U V
)!!V W
.!!W X
FirstOrDefault!!X f
(!!f g
)!!g h
;!!h i
return"" 
	acudiente"" 
;"" 
}## 	
public%% 
async%% 
Task%% 
<%% 
	UPaciente%% #
>%%# $'
datosPacienteSegunDocumento%%% @
(%%@ A
string%%A G
cedulaE%%H O
)%%O P
{&& 	
	UPaciente'' 
usuario'' 
='' 
new''  #
	UPaciente''$ -
(''- .
)''. /
;''/ 0
usuario(( 
=(( 
new(( 
Mapping(( !
(((! "
)((" #
.((# $
paciente(($ ,
.((, -
Where((- 2
(((2 3
x((3 4
=>((5 7
(((8 9
x((9 :
.((: ;
	Documento((; D
.((D E
Equals((E K
(((K L
cedulaE((L S
)((S T
)((T U
)((U V
.((V W
FirstOrDefault((W e
(((e f
)((f g
;((g h
return)) 
usuario)) 
;)) 
}** 	
public,, 
async,, 
Task,, 
<,, 
UDocente,, "
>,," #-
!datosDocenteUsuarioSegunDocumento,,$ E
(,,E F
string,,F L
cedulaE,,M T
),,T U
{-- 	
UDocente.. 
usuario.. 
=.. 
new.. "
UDocente..# +
(..+ ,
).., -
;..- .
usuario// 
=// 
new// 
Mapping// !
(//! "
)//" #
.//# $
docente//$ +
.//+ ,
Where//, 1
(//1 2
x//2 3
=>//4 6
(//7 8
x//8 9
.//9 :
	Documento//: C
.//C D
Equals//D J
(//J K
cedulaE//K R
)//R S
)//S T
)//T U
.//U V
FirstOrDefault//V d
(//d e
)//e f
;//f g
return00 
usuario00 
;00 
}11 	
public33 
void33 
agregarAcceso33 !
(33! "
UAcceso33" )
accesoUsuarioE33* 8
)338 9
{44 	
using55 
(55 
var55 
db55 
=55 
new55 
Mapping55  '
(55' (
)55( )
)55) *
{55+ ,
db66 
.66 
acceso66 
.66 
Add66 
(66 
accesoUsuarioE66 ,
)66, -
;66- .
db77 
.77 
SaveChanges77 
(77 
)77  
;77  !
}88 
}99 	
};; 
}<< ˆ:
>C:\Users\David\source\repos\proyectoTEA\Datos\UsersRegister.cs
	namespace 	
Datos
 
{ 
public 
class 
UsersRegister 
{ 
public 

UsersLogin 

UsersLogin $
{		 	
get

 
=>

 
default

 
(

 

UsersLogin

 %
)

% &
;

& '
set 
{ 
} 
} 	
public 
void 
agregarUsuario "
(" #
UUsers# )
nuevoUsuario* 6
)6 7
{ 
using 
(	 

var
 
db 
= 
new 
Mapping 
( 
)  
)  !
{" #
db 
. 
user 
. 
Add 
( 
nuevoUsuario 
) 
; 
db 
. 
SaveChanges 
( 
) 
; 
} 
} 
public 
UUsers	 &
AcudienteODocenteExistente *
(* +
string+ 1
cedula2 8
,8 9
int: =
rol> A
)A B
{ 
return 	
new
 
Mapping 
( 
) 
. 
user 
. 
Where "
(" #
x# $
=>% '
(( )
x) *
.* +
	Documento+ 4
.4 5
Equals5 ;
(; <
cedula< B
)B C
&&D F
xG H
.H I
Rol_idI O
.O P
EqualsP V
(V W
rolW Z
)Z [
)[ \
)\ ]
.] ^
FirstOrDefault^ l
(l m
)m n
;n o
} 
public 
UUsers	 4
(verificarExistenciaDeCedulaRespectoIdRol 8
(8 9
UUsers9 ?
nuevoUsuario@ L
)L M
{   	
return!! 	
new!!
 
Mapping!! 
(!! 
)!! 
.!! 
user!! 
.!! 
Where!! "
(!!" #
x!!# $
=>!!% '
(!!( )
x!!) *
.!!* +
	Documento!!+ 4
.!!4 5
Equals!!5 ;
(!!; <
nuevoUsuario!!< H
.!!H I
	Documento!!I R
)!!R S
)!!S T
&&!!U W
(!!X Y
x!!Y Z
.!!Z [
Rol_id!![ a
.!!a b
Equals!!b h
(!!h i
nuevoUsuario!!i u
.!!u v
Rol_id!!v |
)!!| }
&&	!!~ Ä
(
!!Å Ç
x
!!Ç É
.
!!É Ñ
Rol_id
!!Ñ ä
==
!!ä å
$num
!!å ç
)
!!ç é
)
!!é è
)
!!è ê
.
!!ê ë
FirstOrDefault
!!ë ü
(
!!ü †
)
!!† °
;
!!° ¢
}"" 	
public$$ 
UUsers$$	 0
$verificarExistenciaDocumentoPaciente$$ 4
($$4 5
UUsers$$5 ;
nuevoPaciente$$< I
)$$I J
{%% 
return&& 	
new&&
 
Mapping&& 
(&& 
)&& 
.&& 
user&& 
.&& 
Where&& "
(&&" #
x&&# $
=>&&% '
(&&( )
x&&) *
.&&* +
	Documento&&+ 4
.&&4 5
Equals&&5 ;
(&&; <
nuevoPaciente&&< I
.&&I J
	Documento&&J S
)&&S T
)&&T U
)&&U V
.&&V W
FirstOrDefault&&W e
(&&e f
)&&f g
;&&g h
}'' 
public)) 
void))	 
agregarAcudiente)) 
()) 

UAcudiente)) )
nuevoAcudiente))* 8
)))8 9
{** 
using++ 
(++	 

var++
 
db++ 
=++ 
new++ 
Mapping++ 
(++ 
)++  
)++  !
{,, 
db-- 
.-- 
	acudiente-- 
.-- 
Add-- 
(-- 
nuevoAcudiente-- #
)--# $
;--$ %
db.. 
... 
SaveChanges.. 
(.. 
).. 
;.. 
}// 
}00 
public11 
void11	 
agregarDocente11 
(11 
UDocente11 %
nuevoDocente11& 2
)112 3
{22 
using33 
(33	 

var33
 
db33 
=33 
new33 
Mapping33 
(33 
)33  
)33  !
{44 
db55 
.55 
docente55 
.55 
Add55 
(55 
nuevoDocente55 
)55  
;55  !
db66 
.66 
SaveChanges66 
(66 
)66 
;66 
}77 
}88 
public:: 
void::	 
agregarPaciente:: 
(:: 
	UPaciente:: '
nuevoPaciente::( 5
)::5 6
{;; 
using<< 
(<<	 

var<<
 
db<< 
=<< 
new<< 
Mapping<< 
(<< 
)<<  
)<<  !
{== 
db>> 
.>> 
paciente>> 
.>> 
Add>> 
(>> 
nuevoPaciente>> !
)>>! "
;>>" #
db?? 
.?? 
SaveChanges?? 
(?? 
)?? 
;?? 
}@@ 
}AA 
publicCC 
boolCC	 %
revisarExistenciaDeCorreoCC '
(CC' (
stringCC( .
correoCC/ 5
)CC5 6
{DD 
boolEE 
existeEE 
=EE 
falseEE 
;EE 
usingFF 
(FF	 

varFF
 
dbFF 
=FF 
newFF 
MappingFF 
(FF 
)FF  
)FF  !
{GG 
ifHH 
(HH 
(HH 	
dbHH	 
.HH 
docenteHH 
.HH 
WhereHH 
(HH 
xHH 
=>HH 
(HH 
xHH  
.HH  !
CorreoHH! '
.HH' (
EqualsHH( .
(HH. /
correoHH/ 5
)HH5 6
)HH6 7
)HH7 8
)HH8 9
.HH9 :
FirstOrDefaultHH: H
(HHH I
)HHI J
!=HHK M
nullHHN R
)HHR S
{II 
existeJJ 
=JJ 
trueJJ 
;JJ 
returnKK 
existeKK 
;KK 
}LL 
elseLL 	
ifLL
 
(LL 
(LL 
dbLL 
.LL 
	acudienteLL 
.LL 
WhereLL !
(LL! "
xLL" #
=>LL$ &
(LL' (
xLL( )
.LL) *
CorreoLL* 0
.LL0 1
EqualsLL1 7
(LL7 8
correoLL8 >
)LL> ?
)LL? @
)LL@ A
)LLA B
.LLB C
FirstOrDefaultLLC Q
(LLQ R
)LLR S
!=LLT V
nullLLW [
)LL[ \
{MM 
existeNN 
=NN 
trueNN 
;NN 
returnOO 
existeOO 
;OO 
}PP 
elseQQ 
{RR 
returnSS 
existeSS 
;SS 
}TT 
}VV 
}WW 
}YY 
}ZZ 