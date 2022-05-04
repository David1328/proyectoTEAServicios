�
AC:\Users\David\source\repos\proyectoTEA\Utilitarios\LoginToken.cs
	namespace		 	
Utilitarios		
 
{

 
[ 	
Serializable	 
] 
[
Table
(
$str
,
Schema
=
$str
)
]
public 
class 

LoginToken 
{ 	
private 
int 
id 
; 
private 
int 
user_id 
;  
private 
DateTime 

;* +
private 
DateTime 

;* +
private 
String 
token  
;  !
[ 
Key
] 
[ 
Column
( 
$str 
) 
] 
public 
int 
Id 
{ 
get 
=>  "
id# %
;% &
set' *
=>+ -
id. 0
=1 2
value3 8
;8 9
}: ;
[ 
Column
( 
$str 
) 
] 
public 
int 
User_id 
{  
get! $
=>% '
user_id( /
;/ 0
set1 4
=>5 7
user_id8 ?
=@ A
valueB G
;G H
}I J
[ 
Column
( 
$str $
)$ %
]% &
public 
DateTime 

{* +
get, /
=>0 2

;@ A
setB E
=>F H

=W X
valueY ^
;^ _
}` a
[ 
Column
( 
$str $
)$ %
]% &
public 
DateTime 

{* +
get, /
=>0 2

;@ A
setB E
=>F H

=W X
valueY ^
;^ _
}` a
[ 
Column
( 
$str 
) 
] 
public   
string   
Token   
{    !
get  " %
=>  & (
token  ) .
;  . /
set  0 3
=>  4 6
token  7 <
=  = >
value  ? D
;  D E
}  F G
}!! 	
}## �

HC:\Users\David\source\repos\proyectoTEA\Utilitarios\PacienteScoreJSon.cs
	namespace 	
Utilitarios
 
{ 
public		 
class		 
PacienteScoreJSon		 
{

 
private 	
String
 
documentoPaciente "
;" #
private 	
String
 
score 
; 
private
DateTime
 
fechaRealizacion
;
public 
string	 
DocumentoPaciente !
{" #
get$ '
=>( *
documentoPaciente+ <
;< =
set> A
=>B D
documentoPacienteE V
=W X
valueY ^
;^ _
}` a
public 
string	 
Score 
{ 
get 
=> 
score $
;$ %
set& )
=>* ,
score- 2
=3 4
value5 :
;: ;
}< =
public 
DateTime	 
FechaRealizacion "
{# $
get% (
=>) +
fechaRealizacion, <
;< =
set> A
=>B D
fechaRealizacionE U
=V W
valueX ]
;] ^
}_ `
} 
} �
NC:\Users\David\source\repos\proyectoTEA\Utilitarios\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 


( 
$str &
)& '
]' (
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
$str (
)( )
]) *
[
assembly
:

AssemblyCopyright
(
$str
)
]
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
]$$) *�
>C:\Users\David\source\repos\proyectoTEA\Utilitarios\UAcceso.cs
	namespace		 	
Utilitarios		
 
{

 
[ 
Serializable 
] 
[ 
Table 

(
 
$str 
, 
Schema 
= 
$str )
)) *
]* +
public 

class 
UAcceso 
{ 
private 
int 
	id_acceso 
; 
private 
int 

id_usuario 
; 
private 
DateTime 
fecha_inicioSesion +
;+ ,
private 
Nullable 
< 
DateTime !
>! "
fecha_finSesion# 2
;2 3
private 
string 
sesion 
; 
[ 	
Key	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
int 
	Id_acceso 
{ 
get "
=># %
	id_acceso& /
;/ 0
set1 4
=>5 7
	id_acceso8 A
=B C
valueD I
;I J
}K L
[ 	
Column	 
( 
$str 
) 
] 
public 
int 

Id_usuario 
{ 
get  #
=>$ &

id_usuario' 1
;1 2
set3 6
=>7 9

id_usuario: D
=E F
valueG L
;L M
}N O
[ 	
Column	 
( 
$str $
)$ %
]% &
public 
DateTime 
Fecha_inicioSesion *
{+ ,
get- 0
=>1 3
fecha_inicioSesion4 F
;F G
setH K
=>L N
fecha_inicioSesionO a
=b c
valued i
;i j
}k l
[ 	
Column	 
( 
$str !
)! "
]" #
public 
Nullable 
< 
DateTime  
>  !
Fecha_finSesion" 1
{2 3
get4 7
=>8 :
fecha_finSesion; J
;J K
setL O
=>P R
fecha_finSesionS b
=c d
valuee j
;j k
}l m
[   	
Column  	 
(   
$str   
)   
]   
public!! 
string!! 
Sesion!! 
{!! 
get!! "
=>!!# %
sesion!!& ,
;!!, -
set!!. 1
=>!!2 4
sesion!!5 ;
=!!< =
value!!> C
;!!C D
}!!E F
}## 
}$$ �$
AC:\Users\David\source\repos\proyectoTEA\Utilitarios\UActividad.cs
	namespace 	
Utilitarios
 
{ 
[ 
Table 

(
 
$str 
, 
Schema 
=  
$str! .
). /
]/ 0
public 

class 

UActividad 
{		 
private

 
int

 
id_actividad

  
;

  !
private 
string 
nombreActividad &
;& '
private 
string 
descripcion "
;" #
private
string
docente_creador
;
private 	
string
 
contenido_actividad $
;$ %
private 	
int
 
tipo_actividad 
; 
private 	
string
 (
estudiantesHicieronActividad -
;- .
private 	
PacienteScoreJSon
 
nuevoEstudiante +
;+ ,
private 	
string
  
tipo_actividad_texto %
;% &
[ 	
Key	 
] 
[ 	
Column	 
( 
$str 
) 
]  
public 
int 
Id_actividad 
{  !
get" %
=>& (
id_actividad) 5
;5 6
set7 :
=>; =
id_actividad> J
=K L
valueM R
;R S
}T U
[ 	
Column	 
( 
$str "
)" #
]# $
public 
string 
NombreActividad %
{& '
get( +
=>, .
nombreActividad/ >
;> ?
set@ C
=>D F
nombreActividadG V
=W X
valueY ^
;^ _
}` a
[ 	
Column	 
( 
$str 
) 
] 
public 
string 
Descripcion !
{" #
get$ '
=>( *
descripcion+ 6
;6 7
set8 ;
=>< >
descripcion? J
=K L
valueM R
;R S
}T U
[ 	
Column	 
( 
$str !
)! "
]" #
public 
string 
Docente_creador %
{& '
get( +
=>, .
docente_creador/ >
;> ?
set@ C
=>D F
docente_creadorG V
=W X
valueY ^
;^ _
}` a
[ 
Column 	
(	 

$str
 
)  
]  !
public 
string	 
Contenido_actividad #
{$ %
get& )
=>* ,
contenido_actividad- @
;@ A
setB E
=>F H
contenido_actividadI \
=] ^
value_ d
;d e
}f g
[   
Column   	
(  	 

$str  
 
)   
]   
public!! 
int!!	 
Tipo_actividad!!
{!! 
get!! !
=>!!" $
tipo_actividad!!% 3
;!!3 4
set!!5 8
=>!!9 ;
tipo_actividad!!< J
=!!K L
value!!M R
;!!R S
}!!T U
["" 
Column"" 	
(""	 

$str""
 
)"" 
]"" 
public## 
string##	 (
EstudiantesHicieronActividad## ,
{##- .
get##/ 2
=>##3 5(
estudiantesHicieronActividad##6 R
;##R S
set##T W
=>##X Z(
estudiantesHicieronActividad##[ w
=##x y
value##z 
;	## �
}
##� �
[&& 
	NotMapped&& 
]&& 
public'' 
string''	  
Tipo_actividad_texto'' $
{''% &
get''' *
=>''+ - 
tipo_actividad_texto''. B
;''B C
set''D G
=>''H J 
tipo_actividad_texto''K _
=''` a
value''b g
;''g h
}''i j
[(( 
	NotMapped(( 
](( 
public)) 
PacienteScoreJSon))	 
NuevoEstudiante)) *
{))+ ,
get))- 0
=>))1 3
nuevoEstudiante))4 C
;))C D
set))E H
=>))I K
nuevoEstudiante))L [
=))\ ]
value))^ c
;))c d
}))e f
}** 
}++ �
AC:\Users\David\source\repos\proyectoTEA\Utilitarios\UAcudiente.cs
	namespace		 	
Utilitarios		
 
{

 
[ 
Serializable 
] 
[ 
Table 
( 
$str 
, 
Schema 
= 
$str (
)( )
]) *
public
class

UAcudiente
{ 
private 	
int
 
acudiente_id 
; 
private 	
String
 
nombre 
; 
private 	
String
 
apellido 
; 
private 	
String
 
	documento 
; 
private 	
String
 
correo 
; 
private 	
String
 
clave 
; 
[ 
Key 
] 
[ 
Column 	
(	 

$str
 
) 
] 
public 
int	 
Acudiente_id
{ 
get 
=>  "
acudiente_id# /
;/ 0
set1 4
=>5 7
acudiente_id8 D
=E F
valueG L
;L M
}N O
[ 
Column 	
(	 

$str
 
) 
] 
public 
string	 
Nombre 
{ 
get 
=> 
nombre  &
;& '
set( +
=>, .
nombre/ 5
=6 7
value8 =
;= >
}? @
[ 
Column 	
(	 

$str
 
) 
]  
public 
string	 
Apellido 
{ 
get 
=> !
apellido" *
;* +
set, /
=>0 2
apellido3 ;
=< =
value> C
;C D
}E F
[ 
Column 	
(	 

$str
 
) 
] 
public   
string  	 
	Documento   
{   
get   
=>    "
	documento  # ,
;  , -
set  . 1
=>  2 4
	documento  5 >
=  ? @
value  A F
;  F G
}  H I
[!! 
Column!! 	
(!!	 

$str!!
 
)!! 
]!! 
public"" 
string""	 
Correo"" 
{"" 
get"" 
=>"" 
correo""  &
;""& '
set""( +
=>"", .
correo""/ 5
=""6 7
value""8 =
;""= >
}""? @
[$$ 
	NotMapped$$ 
]$$ 
public%% 
string%%	 
Clave%% 
{%% 
get%% 
=>%% 
clave%% $
;%%$ %
set%%& )
=>%%* ,
clave%%- 2
=%%3 4
value%%5 :
;%%: ;
}%%< =
}&& 
}'' �"
?C:\Users\David\source\repos\proyectoTEA\Utilitarios\UDocente.cs
	namespace 	
Utilitarios
 
{ 
[ 
Serializable 
] 
[ 
Table 
( 
$str 
, 
Schema 
= 
$str %
)% &
]& '
public		 
class		 
UDocente		 
{

 
private 	
int
 

docente_id 
; 
private 	
String
 
	documento 
; 
private
String
 
nombre
;
private 	
String
 
apellido 
; 
private 	
String
 
nit 
; 
private 	
int
 
institucion_id 
; 
private 	
String
 %
numero_documento_paciente *
;* +
private 	
String
 
correo 
; 
private 	
String
 
clave 
; 
[ 
Key 
] 
[ 
Column 	
(	 

$str
 
) 
] 
public 
int	 

Docente_id
{ 
get 
=>  

docente_id! +
;+ ,
set- 0
=>1 3

docente_id4 >
=? @
valueA F
;F G
}H I
[ 
Column 	
(	 

$str
 
) 
] 
public 
string	 
	Documento 
{ 
get 
=>  "
	documento# ,
;, -
set. 1
=>2 4
	documento5 >
=? @
valueA F
;F G
}H I
[ 
Column 	
(	 

$str
 
) 
] 
public 
string	 
Nombre 
{ 
get 
=> 
nombre  &
;& '
set( +
=>, .
nombre/ 5
=6 7
value8 =
;= >
}? @
[ 
Column 	
(	 

$str
 
) 
] 
public 
string	 
Apellido 
{ 
get 
=> !
apellido" *
;* +
set, /
=>0 2
apellido3 ;
=< =
value> C
;C D
}E F
[ 
Column 	
(	 

$str
 
) 
] 
public 
string	 
Nit 
{ 
get 
=> 
nit  
;  !
set" %
=>& (
nit) ,
=- .
value/ 4
;4 5
}6 7
[   
Column   	
(  	 

$str  
 
)   
]   
public!! 
int!!	 
Institucion_id!!
{!! 
get!! !
=>!!" $
institucion_id!!% 3
;!!3 4
set!!5 8
=>!!9 ;
institucion_id!!< J
=!!K L
value!!M R
;!!R S
}!!T U
["" 
Column"" 	
(""	 

$str""
 
)"" 
]"" 
public## 
string##	 
Correo## 
{## 
get## 
=>## 
correo##  &
;##& '
set##( +
=>##, .
correo##/ 5
=##6 7
value##8 =
;##= >
}##? @
[%% 
	NotMapped%% 
]%% 
public&& 
string&&	 
Clave&& 
{&& 
get&& 
=>&& 
clave&& $
;&&$ %
set&&& )
=>&&* ,
clave&&- 2
=&&3 4
value&&5 :
;&&: ;
}&&< =
['' 
	NotMapped'' 
]'' 
public(( 
string((	 %
Numero_documento_paciente(( )
{((* +
get((, /
=>((0 2%
numero_documento_paciente((3 L
;((L M
set((N Q
=>((R T%
numero_documento_paciente((U n
=((o p
value((q v
;((v w
}((x y
})) 
}** �&
@C:\Users\David\source\repos\proyectoTEA\Utilitarios\UPaciente.cs
	namespace		 	
Utilitarios		
 
{

 
[ 
Serializable 
] 
[ 
Table 
( 
$str 
, 
Schema 
= 
$str &
)& '
]' (
public
class
	UPaciente
{ 
private 	
int
 
paciente_id 
; 
private 	
String
 
nombre 
; 
private 	
String
 
apellido 
; 
private 	
String
 
	documento 
; 
private 	
int
 

; 
private 	
int
 
edad 
; 
private 	
String
 
documento_docente "
;" #
private 	
String
 
documento_acudiente $
;$ %
private 	
int
 
institucion_id 
; 
private 	
String
 
clave 
; 
[ 
Key 
] 
[ 
Column 	
(	 

$str
 
) 
] 
public 
int	 
Paciente_id
{ 
get 
=> !
paciente_id" -
;- .
set/ 2
=>3 5
paciente_id6 A
=B C
valueD I
;I J
}K L
[ 
Column 	
(	 

$str
 
) 
] 
public 
string	 
Nombre 
{ 
get 
=> 
nombre  &
;& '
set( +
=>, .
nombre/ 5
=6 7
value8 =
;= >
}? @
[   
Column   	
(  	 

$str  
 
)   
]   
public!! 
string!!	 
Apellido!! 
{!! 
get!! 
=>!! !
apellido!!" *
;!!* +
set!!, /
=>!!0 2
apellido!!3 ;
=!!< =
value!!> C
;!!C D
}!!E F
["" 
Column"" 	
(""	 

$str""
 
)"" 
]"" 
public## 
string##	 
	Documento## 
{## 
get## 
=>##  "
	documento### ,
;##, -
set##. 1
=>##2 4
	documento##5 >
=##? @
value##A F
;##F G
}##H I
[$$ 
Column$$ 	
($$	 

$str$$
 
)$$ 
]$$ 
public%% 
int%%	 

{%% 
get%%  
=>%%! #

;%%1 2
set%%3 6
=>%%7 9

=%%H I
value%%J O
;%%O P
}%%Q R
[&& 
Column&& 	
(&&	 

$str&&
 
)&& 
]&& 
public'' 
int''	 
Edad''
{'' 
get'' 
=>'' 
edad'' 
;''  
set''! $
=>''% '
edad''( ,
=''- .
value''/ 4
;''4 5
}''6 7
[(( 
Column(( 	
(((	 

$str((
 
)(( 
](( 
public)) 
string))	 
Documento_docente)) !
{))" #
get))$ '
=>))( *
documento_docente))+ <
;))< =
set))> A
=>))B D
documento_docente))E V
=))W X
value))Y ^
;))^ _
}))` a
[** 
Column** 	
(**	 

$str**
 
)** 
]** 
public++ 
string++	 
Documento_acudiente++ #
{++$ %
get++& )
=>++* ,
documento_acudiente++- @
;++@ A
set++B E
=>++F H
documento_acudiente++I \
=++] ^
value++_ d
;++d e
}++f g
[,, 
Column,, 	
(,,	 

$str,,
 
),, 
],, 
public-- 
int--	 
Institucion_id--
{-- 
get-- !
=>--" $
institucion_id--% 3
;--3 4
set--5 8
=>--9 ;
institucion_id--< J
=--K L
value--M R
;--R S
}--T U
[00 
	NotMapped00 
]00 
public11 
string11	 
Clave11 
{11 
get11 
=>11 
clave11 $
;11$ %
set11& )
=>11* ,
clave11- 2
=113 4
value115 :
;11: ;
}11< =
}22 
}33 �

;C:\Users\David\source\repos\proyectoTEA\Utilitarios\URol.cs
	namespace		 	
Utilitarios		
 
{

 
[ 
Serializable 
] 
[
Table

(
 
$str
,
Schema
=
$str
)
]
public 

class 
URol 
{ 
private 
int 
id_rol 
; 
private 
string 

nombre_rol !
;! "
[ 	
Key	 
] 
[ 	
Column	 
( 
$str 
) 
] 
public 
int 
Id_rol 
{ 
get 
=>  "
id_rol# )
;) *
set+ .
=>/ 1
id_rol2 8
=9 :
value; @
;@ A
}B C
[ 	
Column	 
( 
$str 
) 
] 
public 
string 

Nombre_rol  
{! "
get# &
=>' )

nombre_rol* 4
;4 5
set6 9
=>: <

nombre_rol= G
=H I
valueJ O
;O P
}Q R
} 
} �

EC:\Users\David\source\repos\proyectoTEA\Utilitarios\UTipoActividad.cs
	namespace 	
Utilitarios
 
{ 
[ 
Table 
( 
$str 
, 
Schema 
=  
$str! .
). /
]/ 0
public 
class 
UTipoActividad 
{		 
private

 	
int


 
id_tp_actividad

 
;

 
private 	
string
 
actividadNombre  
;  !
[
Key
]
[ 
Column 	
(	 

$str
 
) 
] 
public 
int	 
Id_tp_actividad
{ 
get "
=># %
id_tp_actividad& 5
;5 6
set7 :
=>; =
id_tp_actividad> M
=N O
valueP U
;U V
}W X
[ 
Column 	
(	 

$str
 
) 
] 
public 
string	 
ActividadNombre 
{  !
get" %
=>& (
actividadNombre) 8
;8 9
set: =
=>> @
actividadNombreA P
=Q R
valueS X
;X Y
}Z [
} 
} �
=C:\Users\David\source\repos\proyectoTEA\Utilitarios\UUsers.cs
	namespace 	
Utilitarios
 
{ 
[ 
Serializable 
] 
[ 
Table 
( 
$str 
, 
Schema 
= 
$str &
)& '
]' (
public		 
class		 
UUsers		 
{

 
private 	
int
 
id 
; 
private 	
String
 
	documento 
; 
private
String
 
clave
;
private 	
int
 
rol_id 
; 
private 	
String
 
sesion 
; 
[ 
Key 
] 
[ 
Column 	
(	 

$str
 
) 
] 
public 
int	 
Id
{ 
get 
=> 
id 
; 
set  
=>! #
id$ &
=' (
value) .
;. /
}0 1
[ 
Column 	
(	 

$str
 
) 
] 
public 
string	 
	Documento 
{ 
get 
=>  "
	documento# ,
;, -
set. 1
=>2 4
	documento5 >
=? @
valueA F
;F G
}H I
[ 
Column 	
(	 

$str
 
) 
] 
public 
string	 
Clave 
{ 
get 
=> 
clave $
;$ %
set& )
=>* ,
clave- 2
=3 4
value5 :
;: ;
}< =
[ 
Column 	
(	 

$str
 
) 
] 
public 
int	 
Rol_id
{ 
get 
=> 
rol_id #
;# $
set% (
=>) +
rol_id, 2
=3 4
value5 :
;: ;
}< =
[ 
	NotMapped 
] 
public 
string	 
Sesion 
{ 
get 
=> 
sesion  &
;& '
set( +
=>, .
sesion/ 5
=6 7
value8 =
;= >
}? @
} 
} �	
=C:\Users\David\source\repos\proyectoTEA\Utilitarios\Wraper.cs
	namespace 	
Utilitarios
 
{ 
public		 

class		 
Wraper		 
{

 
private 
string 
mensaje 
; 
private 
UUsers 

;$ %
private
string
token
;
public 
string 
Mensaje 
{ 
get  #
=>$ &
mensaje' .
;. /
set0 3
=>4 6
mensaje7 >
=? @
valueA F
;F G
}H I
public 
UUsers 

{$ %
get& )
=>* ,

;: ;
set< ?
=>@ B

=Q R
valueS X
;X Y
}Z [
public 
string 
Token 
{ 
get !
=>" $
token% *
;* +
set, /
=>0 2
token3 8
=9 :
value; @
;@ A
}B C
} 
} 