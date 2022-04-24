È3
EC:\Users\David\source\repos\proyectoTEA\LogicaDeNegocio\LActividad.cs
	namespace		 	
LogicaDeNegocio		
 
{

 
public 

class 

LActividad 
{ 
public 
List 
< 

UActividad 
> 
listaActividades  0
(0 1
int1 4
rol5 8
,8 9
string9 ?
id_card@ G
)G H
{ 	

UActividad 
	idDocente 
= 
new 

UActividad (
(( )
)) *
;* +
if 
( 
rol 

==
 
$num 
) 
{ 
	UPaciente 
pacientInformation  
=! "
new# &
UserPaciente' 3
(3 4
)4 5
.5 6!
getPatientInformation6 K
(K L
id_cardL S
)S T
;T U
	idDocente 
. 
Docente_creador 
= 
pacientInformation  2
.2 3
Documento_docente3 D
;D E
} 
else 
{ 
	idDocente 
. 
Docente_creador 
= 
id_card  '
;' (
} 
return 
new 
Datos 
. 
	Actividad &
(& '
)' (
.( )#
listaActividadesDocente) @
(@ A
	idDocenteA J
)J K
;K L
} 	
public 

UActividad	 
getActivityId !
(! "
int" %
id_activity& 1
)1 2
{ 
return 	
new
 
Datos 
. 
	Actividad 
( 
) 
.  
getActivityId  -
(- .
id_activity. 9
)9 :
;: ;
} 
public 
Wraper 
agregarActividad &
(& '

UActividad' 1

actividadE2 <
)< =
{   	
Wraper!! 
wp!! 
=!! 
new!! 
Wraper!! "
(!!" #
)!!# $
;!!$ %
try"" 
{## 
int$$ 
cantidadActividades$$ '
=$$( )
new$$* -
Datos$$. 3
.$$3 4
	Actividad$$4 =
($$= >
)$$> ?
.$$? @8
,verificarCantidadMaximaActividadesPorDocente$$@ l
($$l m

actividadE$$m w
)$$w x
;$$x y
int%% 
cantidadMaxima%% "
=%%# $
$num%%% &
;%%& '
if&& 
(&& 
cantidadActividades&& '
>=&&( *
cantidadMaxima&&+ 9
)&&9 :
{'' 
wp(( 
.(( 
Mensaje(( 
=((  
$str((! A
+((B C
cantidadMaxima((D R
+((S T
$str((U b
;((b c
return)) 
wp)) 
;)) 
}** 
else++ 
{,, 
wp-- 
.-- 
Mensaje-- 
=--  
$str--! ?
;--? @
new.. 
Datos.. 
... 
	Actividad.. '
(..' (
)..( )
...) *
agregarActividad..* :
(..: ;

actividadE..; E
)..E F
;..F G
return00 
wp00 
;00 
}11 
}22 
catch33 
(33 
	Exception33 
e33 
)33 
{44 
wp55 
.55 
Mensaje55 
=55 
$str55 %
+55& '
e55( )
;55) *
return66 
wp66 
;66 
}77 
}88 	
public:: 
string::	 
eliminarActividad:: !
(::! "
int::" %
id_actividad::& 2
)::2 3
{;; 
new<< 
Datos<< 
.<< 
	Actividad<< 
(<< 
)<< 
.<< 
eliminarActividad<< *
(<<* +
id_actividad<<+ 7
)<<7 8
;<<8 9
return== 	
$str==
 
;==  
}>> 
public@@ 
List@@	 
<@@ 
UTipoActividad@@ 
>@@ 
getTypeActivity@@ -
(@@- .
)@@. /
{AA 
returnBB 	
newBB
 
DatosBB 
.BB 
	ActividadBB 
(BB 
)BB 
.BB  
getTypeActivityBB  /
(BB/ 0
)BB0 1
;BB1 2
}CC 
publicEE 
stringEE	 "
putActividadEstudianteEE &
(EE& '

UActividadEE' 1
actividadRealizadaEE2 D
)EED E
{FF 
returnGG 	
newGG
 
DatosGG 
.GG 
	ActividadGG 
(GG 
)GG 
.GG  
putActividadGG  ,
(GG, -
actividadRealizadaGG- ?
)GG? @
;GG@ A
}HH 
publicJJ 
ListJJ	 
<JJ 
	UPacienteJJ 
>JJ /
#getAcivitysDidByPatientForAttendantJJ <
(JJ< =
intJJ= @
id_activityJJA L
,JJL M
stringJJM S
id_card_attendantJJT e
)JJe f
{KK 
	UPacienteLL 
pacientInformationLL 
=LL  !
newLL" %
UserPacienteLL& 2
(LL2 3
)LL3 4
.LL4 5!
getPatientInformationLL5 J
(LLJ K
id_card_attendantLLK \
)LL\ ]
;LL] ^
returnMM 	
newMM
 
	ActividadMM 
(MM 
)MM 
.MM /
#getAcivitysDidByPatientForAttendantMM =
(MM= >
id_activityMM> I
,MMI J
pacientInformationMMJ \
.MM\ ]
	DocumentoMM] f
)MMf g
;MMg h
}NN 
publicPP 
ListPP	 
<PP 
	UPacientePP 
>PP -
!getAcivitysDidByPatientForTeacherPP :
(PP: ;
intPP; >
id_activityPP? J
,PPJ K
stringPPK Q
id_card_teacherPPR a
)PPa b
{QQ 
returnRR 	
newRR
 
	ActividadRR 
(RR 
)RR 
.RR -
!getAcivitysDidByPatientForTeacherRR ;
(RR; <
id_activityRR< G
,RRG H
id_card_teacherRRI X
)RRX Y
;RRY Z
}SS 
}UU 
}VV ∂)
HC:\Users\David\source\repos\proyectoTEA\LogicaDeNegocio\LIngresoLogin.cs
	namespace		 	
LogicaDeNegocio		
 
{

 
public 

class 
LIngresoLogin 
{ 
public 
async 
Task 
< 
Wraper  
>  !
ingresoLogin" .
(. /
UUsers/ 5
usuarioE6 >
)> ?
{ 	
Wraper 
wraper 
= 
new 
Wraper  &
(& '
)' (
;( )
try 
{ 
if 
( 
new 
Datos !
.! "

UsersLogin" ,
(, -
)- .
.. /&
verificarExistenciaUsuario/ I
(I J
usuarioEJ R
)R S
==T V
nullW [
)[ \
{ 
wraper 
. 
Mensaje &
=' (
$str) i
;i j
wraper 
. 
WraperUsuario ,
=- .
null/ 3
;3 4
return 
wraper %
;% &
} 
else 
{ 
if 
( 
new 
Datos  %
.% &

UsersLogin& 0
(0 1
)1 2
.2 3
verificarLogin3 A
(A B
usuarioEB J
)J K
==L N
nullO S
)S T
{ 
wraper "
." #
Mensaje# *
=+ ,
$str- Y
;Y Z
wraper "
." #
WraperUsuario# 0
=1 2
null3 7
;7 8
return   "
wraper  # )
;  ) *
}!! 
else"" 
{## 
UAcceso$$ #
acceso$$$ *
=$$+ ,
new$$- 0
UAcceso$$1 8
($$8 9
)$$9 :
;$$: ;
wraper%% "
.%%" #
Mensaje%%# *
=%%+ ,
$str%%- U
;%%U V
wraper&& "
.&&" #
WraperUsuario&&# 0
=&&1 2
new&&3 6
Datos&&7 <
.&&< =

UsersLogin&&= G
(&&G H
)&&H I
.&&I J&
datosUsuarioSegunDocumento&&J d
(&&d e
usuarioE&&e m
)&&m n
;&&n o
acceso'' "
.''" #
Fecha_inicioSesion''# 5
=''6 7
DateTime''8 @
.''@ A
Now''A D
;''D E
acceso(( "
.((" #
Sesion((# )
=((* +
usuarioE((, 4
.((4 5
Sesion((5 ;
;((; <
acceso)) "
.))" #
Fecha_finSesion))# 2
=))3 4
null))5 9
;))9 :
acceso** "
.**" #

Id_usuario**# -
=**. /
wraper**0 6
.**6 7
WraperUsuario**7 D
.**D E
Id**E G
;**G H
new++ 
Datos++  %
.++% &

UsersLogin++& 0
(++0 1
)++1 2
.++2 3
agregarAcceso++3 @
(++@ A
acceso++A G
)++G H
;++H I
return,, 
wraper,, %
;,,% &
}-- 
}.. 
}00 
catch11 
(11 
	Exception11 
e11 
)11 
{22 
wraper33 
.33 
Mensaje33 
=33  
$str33! *
+33+ ,
e33- .
;33. /
return44 
wraper44 
;44 
}55 
}66 	
public88 
async88 
Task88 
guardarToken88 &
(88& '

LoginToken88' 1
token882 7
)887 8
{99 	
await:: 
new:: 
	Seguridad:: 
(::  
)::  !
.::! "
guardarTokenLogin::" 3
(::3 4
token::4 9
)::9 :
;::: ;
};; 	
public>> 
string>> 
cerrarsession>> #
(>># $
UUsers>>$ *
session>>+ 2
)>>2 3
{?? 	
try@@ 
{AA 
UUsersBB 
datosBB 
=BB 
newBB "

UsersLoginBB# -
(BB- .
)BB. /
.BB/ 0&
datosUsuarioSegunDocumentoBB0 J
(BBJ K
sessionBBK R
)BBR S
;BBS T
newCC 
	SeguridadCC 
(CC 
)CC 
.CC  
cerrarAccesoCC  ,
(CC, -
datosCC- 2
.CC2 3
IdCC3 5
)CC5 6
;CC6 7
newDD 
	SeguridadDD 
(DD 
)DD 
.DD  
borrarTokenLoginDD  0
(DD0 1
datosDD1 6
)DD6 7
;DD7 8
stringFF 
urlFF 
=FF 
$strFF ,
;FF, -
returnGG 
urlGG 
;GG 
}HH 
catchII 
(II 
	ExceptionII 
exII 
)II 
{JJ 
stringKK 
errorMjsKK 
=KK  !
$strKK" 7
+KK8 9
exKK: <
;KK< =
returnLL 
errorMjsLL 
;LL  
}MM 
}OO 	
}PP 
}QQ  &
DC:\Users\David\source\repos\proyectoTEA\LogicaDeNegocio\LPaciente.cs
	namespace 	
LogicaDeNegocio
 
{ 
public 
class 
	LPaciente 
{ 
public

 
String

	 "
enlazarDocentePaciente

 &
(

& '
UDocente

' /
docente

0 7
)

7 8
{ 
if 
( 
new 

Datos 
. 
UsersRegister 
( 
)  
.  !&
AcudienteODocenteExistente! ;
(; <
docente< C
.C D
	DocumentoD M
,M N
$numO P
)P Q
!=R T
nullU Y
&&Z \
new] `
Datosa f
.f g
UserPacienteg s
(s t
)t u
.u v.
!verificarExistenciaDocenteEnlazar	v ó
(
ó ò
docente
ò ü
)
ü †
.
† °
Documento_docente
° ≤
==
≥ µ
null
∂ ∫
) 
{ 
if 
( 
new 
Datos 
. 
UserPaciente 
( 
)  
.  !4
(verificarDocentePacienteMismaInstitucion! I
(I J
docenteJ Q
)Q R
)R S
{ 
new 
Datos	 
. 
UserPaciente 
( 
) 
. "
enlazarPacienteDocente 4
(4 5
docente5 <
)< =
;= >
return 
$str 
; 
} 
else 
{ 
return 
$str 2
;2 3
} 
} 
else 
{ 
return 

$str 3
;3 4
} 
} 
public   
List  	 
<   
	UPaciente   
>   (
obtenerEstudiantesPorEnlazar   5
(  5 6
int  6 9
id  : <
)  < =
{!! 
return"" 	
new""
 
Datos"" 
."" 
UserPaciente""  
(""  !
)""! "
.""" #&
obtenerPacientesPorEnlazar""# =
(""= >
id""> @
)""@ A
;""A B
}## 
public%% 
List%%	 
<%% 
	UPaciente%% 
>%% '
obtenerEstudiantesEnlazados%% 4
(%%4 5
int%%5 8
id%%9 ;
,%%; <
	UPaciente%%= F
tipoUsuario%%G R
)%%R S
{&& 
return'' 	
new''
 
Datos'' 
.'' 
UserPaciente''  
(''  !
)''! "
.''" #%
obtenerPacientesEnlazados''# <
(''< =
id''= ?
,''? @
tipoUsuario''A L
)''L M
;''M N
}(( 
public++ 
string++	  
enlazarConEstudiante++ $
(++$ %
	UPaciente++% .
datosAenlazar++/ <
)++< =
{,, 
if-- 
(-- 
datosAenlazar-- 
.-- 
Documento_docente-- &
!=--' )
null--* .
)--. /
{.. 
new// 
Datos// 
.// 
UserPaciente// 
(// 
)// 
.// '
enlazarDocenteConEstudiante// 8
(//8 9
datosAenlazar//9 F
)//F G
;//G H
}11 
else11 
if11	 
(11 
datosAenlazar11 
.11 
Documento_acudiente11 .
!=11/ 1
null112 6
)116 7
{22 
new33 
Datos33 
.33 
UserPaciente33 
(33 
)33 
.33 )
enlazarAcudienteConEstudiante33 :
(33: ;
datosAenlazar33; H
)33H I
;33I J
}44 
return55 	
$str55
 
;55  
}66 
public88 
string88	 
eliminarEnlace88 
(88 
	UPaciente88 (
datosAenlazar88) 6
)886 7
{99 
new:: 
Datos:: 
.:: 
UserPaciente:: 
(:: 
):: 
.:: 
eliminarEnlace:: *
(::* +
datosAenlazar::+ 8
)::8 9
;::9 :
return;; 	
$str;;
 *
;;;* +
}<< 
public== 
	UPaciente==	 
datosPaciente==  
(==  !
string==! '
documentoPaciente==( 9
)==9 :
{>> 
return?? 	
new??
 
Datos?? 
.?? 
UserPaciente??  
(??  !
)??! "
.??" #
datosPaciente??# 0
(??0 1
documentoPaciente??1 B
)??B C
;??C D
}@@ 
}BB 
}CC ‡g
JC:\Users\David\source\repos\proyectoTEA\LogicaDeNegocio\LUserRegistercs.cs
	namespace 	
LogicaDeNegocio
 
{ 
public 
class 
LUserRegistercs 
{		 
public 
String	 #
agregarUsuarioAcudiente '
(' (

UAcudiente( 2
nuevoAcudiente3 A
)A B
{ 
try 
{ 
Wraper 

wraper 
= 
new 
Wraper 
( 
)  
;  !
UUsers 

nuevoUsuario 
= 
new 
UUsers $
($ %
)% &
;& '
nuevoUsuario 
. 
	Documento 
= 
nuevoAcudiente +
.+ ,
	Documento, 5
;5 6
nuevoUsuario 
. 
Clave 
= 
nuevoAcudiente '
.' (
Clave( -
;- .
nuevoUsuario 
. 
Rol_id 
= 
$num 
; 
if 
( 
( 	
new	 
Datos 
. 
UsersRegister  
(  !
)! "
." #4
(verificarExistenciaDeCedulaRespectoIdRol# K
(K L
nuevoUsuarioL X
)X Y
)Y Z
==[ ]
null^ b
&&c e
!f g
(g h
newh k
Datosl q
.q r
UsersRegisterr 
(	 Ä
)
Ä Å
.
Å Ç'
revisarExistenciaDeCorreo
Ç õ
(
õ ú
nuevoAcudiente
ú ™
.
™ ´
Correo
´ ±
)
± ≤
)
≤ ≥
)
≥ ¥
{ 
new 
Datos	 
. 
UsersRegister 
( 
) 
. 
agregarUsuario -
(- .
nuevoUsuario. :
): ;
;; <
new 
Datos	 
. 
UsersRegister 
( 
) 
. 
agregarAcudiente /
(/ 0
nuevoAcudiente0 >
)> ?
;? @
return 
wraper 
. 
Mensaje 
= 
$str 3
;3 4
} 
else 
{ 
return 
wraper 
. 
Mensaje 
= 
$str 5
;5 6
} 
}   
catch!! 
(!!	 

	Exception!!
 
e!! 
)!! 
{"" 
return## 

$str## 
+## 
e## 
;## 
}$$ 
}%% 
public'' 
String''	 !
agregarUsuarioDocente'' %
(''% &
UDocente''& .
nuevoDocente''/ ;
)''; <
{(( 
try)) 
{** 
Wraper++ 

wraper++ 
=++ 
new++ 
Wraper++ 
(++ 
)++  
;++  !
UUsers-- 

nuevoUsuario-- 
=-- 
new-- 
UUsers-- $
(--$ %
)--% &
;--& '
nuevoUsuario.. 
... 
	Documento.. 
=.. 
nuevoDocente.. )
...) *
	Documento..* 3
;..3 4
nuevoUsuario// 
.// 
Clave// 
=// 
nuevoDocente// %
.//% &
Clave//& +
;//+ ,
nuevoUsuario00 
.00 
Rol_id00 
=00 
$num00 
;00 
if22 
(22 
(22 	
new22	 
Datos22 
.22 
UsersRegister22  
(22  !
)22! "
.22" #4
(verificarExistenciaDeCedulaRespectoIdRol22# K
(22K L
nuevoUsuario22L X
)22X Y
)22Y Z
==22[ ]
null22^ b
&&22c e
!22f g
(22g h
new22h k
Datos22l q
.22q r
UsersRegister22r 
(	22 Ä
)
22Ä Å
.
22Å Ç'
revisarExistenciaDeCorreo
22Ç õ
(
22õ ú
nuevoDocente
22ú ®
.
22® ©
Correo
22© Ø
)
22Ø ∞
)
22∞ ±
)
22± ≤
{33 
new44 
Datos44	 
.44 
UsersRegister44 
(44 
)44 
.44 
agregarUsuario44 -
(44- .
nuevoUsuario44. :
)44: ;
;44; <
new55 
Datos55	 
.55 
UsersRegister55 
(55 
)55 
.55 
agregarDocente55 -
(55- .
nuevoDocente55. :
)55: ;
;55; <
return66 
wraper66 
.66 
Mensaje66 
=66 
$str66 3
;663 4
}77 
else88 
{99 
return:: 
wraper:: 
.:: 
Mensaje:: 
=:: 
$str:: 5
;::5 6
};; 
}<< 
catch== 
(==	 

	Exception==
 
e== 
)== 
{>> 
return?? 

$str?? 
+?? 
e?? 
;?? 
}@@ 
}AA 
publicBB 
StringBB	 "
agregarUsuarioPacienteBB &
(BB& '
	UPacienteBB' 0
nuevoPacienteBB1 >
)BB> ?
{CC 
tryDD 
{EE 
WraperFF 

wraperFF 
=FF 
newFF 
WraperFF 
(FF 
)FF  
;FF  !
UUsersHH 

nuevoUsuarioHH 
=HH 
newHH 
UUsersHH $
(HH$ %
)HH% &
;HH& '
nuevoUsuarioII 
.II 
	DocumentoII 
=II 
nuevoPacienteII *
.II* +
	DocumentoII+ 4
;II4 5
nuevoUsuarioJJ 
.JJ 
ClaveJJ 
=JJ 
nuevoPacienteJJ &
.JJ& '
ClaveJJ' ,
;JJ, -
nuevoUsuarioKK 
.KK 
Rol_idKK 
=KK 
$numKK 
;KK 
UsersRegisterLL 
buscarLL 
=LL 
newLL 
UsersRegisterLL ,
(LL, -
)LL- .
;LL. /
ifNN 
(NN 
(NN 	
newNN	 
DatosNN 
.NN 
UsersRegisterNN  
(NN  !
)NN! "
.NN" #0
$verificarExistenciaDocumentoPacienteNN# G
(NNG H
nuevoUsuarioNNH T
)NNT U
)NNU V
==NNW Y
nullNNZ ^
)NN^ _
{OO 
ifQQ 
(QQ 	
nuevoPacienteQQ	 
.QQ 
Documento_docenteQQ (
!=QQ) +
nullQQ, 0
&&QQ1 3
(QQ4 5
buscarQQ5 ;
.QQ; <&
AcudienteODocenteExistenteQQ< V
(QQV W
nuevoPacienteQQW d
.QQd e
Documento_docenteQQe v
,QQv w
$numQQx y
)QQy z
)QQz {
!=QQ| ~
null	QQ É
)
QQÉ Ñ
{RR 
newSS 	
DatosSS
 
.SS 
UsersRegisterSS 
(SS 
)SS 
.SS  
agregarUsuarioSS  .
(SS. /
nuevoUsuarioSS/ ;
)SS; <
;SS< =
newTT 	
DatosTT
 
.TT 
UsersRegisterTT 
(TT 
)TT 
.TT  
agregarPacienteTT  /
(TT/ 0
nuevoPacienteTT0 =
)TT= >
;TT> ?
returnUU 
wraperUU 
.UU 
MensajeUU 
=UU 
$strUU 4
;UU4 5
}VV 
elseVV 

{WW 
returnXX 
wraperXX 
.XX 
MensajeXX 
=XX 
$strXX J
;XXJ K
}YY 
}ZZ 
else[[ 
{\\ 
return]] 
wraper]] 
.]] 
Mensaje]] 
=]] 
$str]] 5
;]]5 6
}^^ 
}__ 
catch`` 
(``	 

	Exception``
 
e`` 
)`` 
{aa 
returnbb 

$strbb 
+bb 
ebb 
;bb 
}cc 
}dd 
publicgg 
asyncgg	 
Taskgg 
<gg 

UAcudientegg 
>gg !
obtenerDatosAcudientegg  5
(gg5 6
stringgg6 <
cedulaEgg= D
)ggD E
{hh 	
UUsersii 	
usuarioii
 
=ii 
newii 
UUsersii 
(ii 
)ii  
;ii  !

UAcudientejj 
	acudientejj 
=jj 
newjj 

UAcudientejj (
(jj( )
)jj) *
;jj* +
usuariokk 

.kk
 
	Documentokk 
=kk 
cedulaEkk 
;kk 
usuariomm 

=mm 
newmm 
Datosmm 
.mm 

UsersLoginmm !
(mm! "
)mm" #
.mm# $&
verificarExistenciaUsuariomm$ >
(mm> ?
usuariomm? F
)mmF G
;mmG H
ifoo 
(oo 
usuariooo 
!=oo 
nulloo 
)oo  
{pp 
returnqq 

	acudienteqq 
=qq 
awaitqq 
newqq  
Datosqq! &
.qq& '

UsersLoginqq' 1
(qq1 2
)qq2 3
.qq3 4/
#datosAcudienteUsuarioSegunDocumentoqq4 W
(qqW X
cedulaEqqX _
)qq_ `
;qq` a
}rr 
elsess 
{tt 
	acudienteuu 
=uu 
nulluu 
;uu 
returnvv 

	acudientevv 
;vv 
}ww 
}yy 
public{{ 
async{{	 
Task{{ 
<{{ 
UDocente{{ 
>{{ 
obtenerDatosDocente{{ 1
({{1 2
string{{2 8
cedulaE{{9 @
){{@ A
{|| 
UUsers}} 	
usuario}}
 
=}} 
new}} 
UUsers}} 
(}} 
)}}  
;}}  !
UDocente~~ 
	acudiente~~ 
=~~ 
new~~ 
UDocente~~ $
(~~$ %
)~~% &
;~~& '
usuario 

.
 
	Documento 
= 
cedulaE 
; 
usuario
ÅÅ 

=
ÅÅ 
new
ÅÅ 
Datos
ÅÅ 
.
ÅÅ 

UsersLogin
ÅÅ !
(
ÅÅ! "
)
ÅÅ" #
.
ÅÅ# $(
verificarExistenciaUsuario
ÅÅ$ >
(
ÅÅ> ?
usuario
ÅÅ? F
)
ÅÅF G
;
ÅÅG H
if
ÉÉ 
(
ÉÉ 
usuario
ÉÉ 
!=
ÉÉ 
null
ÉÉ 
)
ÉÉ 
{
ÑÑ 
return
ÖÖ 

	acudiente
ÖÖ 
=
ÖÖ 
await
ÖÖ 
new
ÖÖ  
Datos
ÖÖ! &
.
ÖÖ& '

UsersLogin
ÖÖ' 1
(
ÖÖ1 2
)
ÖÖ2 3
.
ÖÖ3 4/
!datosDocenteUsuarioSegunDocumento
ÖÖ4 U
(
ÖÖU V
cedulaE
ÖÖV ]
)
ÖÖ] ^
;
ÖÖ^ _
}
ÜÜ 
else
áá 
{
àà 
	acudiente
ââ 
=
ââ 
null
ââ 
;
ââ 
return
ää 

	acudiente
ää 
;
ää 
}
ãã 
}
çç 
public
èè 
async
èè	 
Task
èè 
<
èè 
	UPaciente
èè 
>
èè "
obtenerDatosPaciente
èè 3
(
èè3 4
string
èè4 :
cedulaE
èè; B
)
èèB C
{
êê 
UUsers
ëë 	
usuario
ëë
 
=
ëë 
new
ëë 
UUsers
ëë 
(
ëë 
)
ëë  
;
ëë  !
	UPaciente
íí 
	acudiente
íí 
=
íí 
new
íí 
	UPaciente
íí &
(
íí& '
)
íí' (
;
íí( )
usuario
ìì 

.
ìì
 
	Documento
ìì 
=
ìì 
cedulaE
ìì 
;
ìì 
usuario
ïï 

=
ïï 
new
ïï 
Datos
ïï 
.
ïï 

UsersLogin
ïï !
(
ïï! "
)
ïï" #
.
ïï# $(
verificarExistenciaUsuario
ïï$ >
(
ïï> ?
usuario
ïï? F
)
ïïF G
;
ïïG H
if
óó 
(
óó 
usuario
óó 
!=
óó 
null
óó 
)
óó 
{
òò 
return
ôô 

	acudiente
ôô 
=
ôô 
await
ôô 
new
ôô  
Datos
ôô! &
.
ôô& '

UsersLogin
ôô' 1
(
ôô1 2
)
ôô2 3
.
ôô3 4)
datosPacienteSegunDocumento
ôô4 O
(
ôôO P
cedulaE
ôôP W
)
ôôW X
;
ôôX Y
}
öö 
else
õõ 
{
úú 
	acudiente
ùù 
=
ùù 
null
ùù 
;
ùù 
return
ûû 

	acudiente
ûû 
;
ûû 
}
üü 
}
°° 
}
££ 
}§§ ˝
RC:\Users\David\source\repos\proyectoTEA\LogicaDeNegocio\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str *
)* +
]+ ,
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
$str ,
), -
]- .
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
]$$) *