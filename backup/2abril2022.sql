PGDMP                         z            proyectoTEA    12.4    12.4 F    h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            k           1262    42554    proyectoTEA    DATABASE     �   CREATE DATABASE "proyectoTEA" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "proyectoTEA";
                postgres    false                        2615    42555    actividades    SCHEMA        CREATE SCHEMA actividades;
    DROP SCHEMA actividades;
                postgres    false                        2615    42556 	   seguridad    SCHEMA        CREATE SCHEMA seguridad;
    DROP SCHEMA seguridad;
                postgres    false                        2615    42557    usuarios    SCHEMA        CREATE SCHEMA usuarios;
    DROP SCHEMA usuarios;
                postgres    false            �            1259    42558 	   actividad    TABLE       CREATE TABLE actividades.actividad (
    id_actividad integer NOT NULL,
    nombre_actividad text NOT NULL,
    descripcion text NOT NULL,
    docente_creador text NOT NULL,
    contenido_actividad text NOT NULL,
    tipo_actividad integer NOT NULL,
    estudiantes text
);
 "   DROP TABLE actividades.actividad;
       actividades         heap    postgres    false    8            �            1259    42564    Acticidad_id_actividad_seq    SEQUENCE     �   CREATE SEQUENCE actividades."Acticidad_id_actividad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE actividades."Acticidad_id_actividad_seq";
       actividades          postgres    false    205    8            l           0    0    Acticidad_id_actividad_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE actividades."Acticidad_id_actividad_seq" OWNED BY actividades.actividad.id_actividad;
          actividades          postgres    false    206            �            1259    66946    tp_actividad    TABLE     m   CREATE TABLE actividades.tp_actividad (
    tp_actividad_id integer NOT NULL,
    actividad text NOT NULL
);
 %   DROP TABLE actividades.tp_actividad;
       actividades         heap    postgres    false    8            �            1259    66944     tp_actividad_tp_actividad_id_seq    SEQUENCE     �   CREATE SEQUENCE actividades.tp_actividad_tp_actividad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE actividades.tp_actividad_tp_actividad_id_seq;
       actividades          postgres    false    8    222            m           0    0     tp_actividad_tp_actividad_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE actividades.tp_actividad_tp_actividad_id_seq OWNED BY actividades.tp_actividad.tp_actividad_id;
          actividades          postgres    false    221            �            1259    42566    acceso    TABLE     �   CREATE TABLE seguridad.acceso (
    id_acceso integer NOT NULL,
    sesion text NOT NULL,
    "fecha_inicioSesion" timestamp without time zone,
    "fecha_finSesion" timestamp without time zone,
    id_usuario integer NOT NULL
);
    DROP TABLE seguridad.acceso;
    	   seguridad         heap    postgres    false    7            �            1259    42572    acceso_id_acceso_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.acceso_id_acceso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE seguridad.acceso_id_acceso_seq;
    	   seguridad          postgres    false    7    207            n           0    0    acceso_id_acceso_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE seguridad.acceso_id_acceso_seq OWNED BY seguridad.acceso.id_acceso;
       	   seguridad          postgres    false    208            �            1259    42574    token_login_aplicacion    TABLE     �   CREATE TABLE seguridad.token_login_aplicacion (
    id integer NOT NULL,
    user_id numeric NOT NULL,
    fecha_generado time with time zone NOT NULL,
    fecha_vigencia time with time zone NOT NULL,
    token text NOT NULL
);
 -   DROP TABLE seguridad.token_login_aplicacion;
    	   seguridad         heap    postgres    false    7            �            1259    42580    token_login_aplicacion_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.token_login_aplicacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE seguridad.token_login_aplicacion_id_seq;
    	   seguridad          postgres    false    209    7            o           0    0    token_login_aplicacion_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE seguridad.token_login_aplicacion_id_seq OWNED BY seguridad.token_login_aplicacion.id;
       	   seguridad          postgres    false    210            �            1259    42582 	   acudiente    TABLE     �   CREATE TABLE usuarios.acudiente (
    id_acudiente integer NOT NULL,
    nombre_acudiente text NOT NULL,
    apellido_acudiente text NOT NULL,
    cedula text NOT NULL,
    correo text NOT NULL
);
    DROP TABLE usuarios.acudiente;
       usuarios         heap    postgres    false    4            �            1259    42588    acudiente_id_acudiente_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.acudiente_id_acudiente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE usuarios.acudiente_id_acudiente_seq;
       usuarios          postgres    false    4    211            p           0    0    acudiente_id_acudiente_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE usuarios.acudiente_id_acudiente_seq OWNED BY usuarios.acudiente.id_acudiente;
          usuarios          postgres    false    212            �            1259    42590    docente    TABLE     �   CREATE TABLE usuarios.docente (
    id_docente integer NOT NULL,
    nombre_docente text NOT NULL,
    apellido_docente text NOT NULL,
    nit text NOT NULL,
    id_institucion integer NOT NULL,
    correo text NOT NULL,
    cedula text NOT NULL
);
    DROP TABLE usuarios.docente;
       usuarios         heap    postgres    false    4            �            1259    42596    docente_id_docente_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.docente_id_docente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE usuarios.docente_id_docente_seq;
       usuarios          postgres    false    213    4            q           0    0    docente_id_docente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE usuarios.docente_id_docente_seq OWNED BY usuarios.docente.id_docente;
          usuarios          postgres    false    214            �            1259    42598    institucion    TABLE     q   CREATE TABLE usuarios.institucion (
    id_institucion integer NOT NULL,
    nombre_institucion text NOT NULL
);
 !   DROP TABLE usuarios.institucion;
       usuarios         heap    postgres    false    4            �            1259    42604    institucion_id_institucion_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.institucion_id_institucion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE usuarios.institucion_id_institucion_seq;
       usuarios          postgres    false    215    4            r           0    0    institucion_id_institucion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE usuarios.institucion_id_institucion_seq OWNED BY usuarios.institucion.id_institucion;
          usuarios          postgres    false    216            �            1259    42606    paciente    TABLE     I  CREATE TABLE usuarios.paciente (
    id_paciente integer NOT NULL,
    nombre_paciente text NOT NULL,
    apellido_paciente text NOT NULL,
    numero_documento text NOT NULL,
    grado_autismo integer NOT NULL,
    edad integer NOT NULL,
    cedula_docente text,
    cedula_acudiente text,
    id_institucion integer NOT NULL
);
    DROP TABLE usuarios.paciente;
       usuarios         heap    postgres    false    4            �            1259    42612    paciente_id_paciente_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.paciente_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE usuarios.paciente_id_paciente_seq;
       usuarios          postgres    false    4    217            s           0    0    paciente_id_paciente_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE usuarios.paciente_id_paciente_seq OWNED BY usuarios.paciente.id_paciente;
          usuarios          postgres    false    218            �            1259    42614    usuario    TABLE     �   CREATE TABLE usuarios.usuario (
    id_usuario integer NOT NULL,
    numero_documento text NOT NULL,
    clave_usuario text NOT NULL,
    tipo_usuario_id integer NOT NULL
);
    DROP TABLE usuarios.usuario;
       usuarios         heap    postgres    false    4            �            1259    42620    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE usuarios.usuario_id_usuario_seq;
       usuarios          postgres    false    219    4            t           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE usuarios.usuario_id_usuario_seq OWNED BY usuarios.usuario.id_usuario;
          usuarios          postgres    false    220            �
           2604    42622    actividad id_actividad    DEFAULT     �   ALTER TABLE ONLY actividades.actividad ALTER COLUMN id_actividad SET DEFAULT nextval('actividades."Acticidad_id_actividad_seq"'::regclass);
 J   ALTER TABLE actividades.actividad ALTER COLUMN id_actividad DROP DEFAULT;
       actividades          postgres    false    206    205            �
           2604    66949    tp_actividad tp_actividad_id    DEFAULT     �   ALTER TABLE ONLY actividades.tp_actividad ALTER COLUMN tp_actividad_id SET DEFAULT nextval('actividades.tp_actividad_tp_actividad_id_seq'::regclass);
 P   ALTER TABLE actividades.tp_actividad ALTER COLUMN tp_actividad_id DROP DEFAULT;
       actividades          postgres    false    222    221    222            �
           2604    42623    acceso id_acceso    DEFAULT     z   ALTER TABLE ONLY seguridad.acceso ALTER COLUMN id_acceso SET DEFAULT nextval('seguridad.acceso_id_acceso_seq'::regclass);
 B   ALTER TABLE seguridad.acceso ALTER COLUMN id_acceso DROP DEFAULT;
    	   seguridad          postgres    false    208    207            �
           2604    42624    token_login_aplicacion id    DEFAULT     �   ALTER TABLE ONLY seguridad.token_login_aplicacion ALTER COLUMN id SET DEFAULT nextval('seguridad.token_login_aplicacion_id_seq'::regclass);
 K   ALTER TABLE seguridad.token_login_aplicacion ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    210    209            �
           2604    42625    acudiente id_acudiente    DEFAULT     �   ALTER TABLE ONLY usuarios.acudiente ALTER COLUMN id_acudiente SET DEFAULT nextval('usuarios.acudiente_id_acudiente_seq'::regclass);
 G   ALTER TABLE usuarios.acudiente ALTER COLUMN id_acudiente DROP DEFAULT;
       usuarios          postgres    false    212    211            �
           2604    42626    docente id_docente    DEFAULT     |   ALTER TABLE ONLY usuarios.docente ALTER COLUMN id_docente SET DEFAULT nextval('usuarios.docente_id_docente_seq'::regclass);
 C   ALTER TABLE usuarios.docente ALTER COLUMN id_docente DROP DEFAULT;
       usuarios          postgres    false    214    213            �
           2604    42627    institucion id_institucion    DEFAULT     �   ALTER TABLE ONLY usuarios.institucion ALTER COLUMN id_institucion SET DEFAULT nextval('usuarios.institucion_id_institucion_seq'::regclass);
 K   ALTER TABLE usuarios.institucion ALTER COLUMN id_institucion DROP DEFAULT;
       usuarios          postgres    false    216    215            �
           2604    42628    paciente id_paciente    DEFAULT     �   ALTER TABLE ONLY usuarios.paciente ALTER COLUMN id_paciente SET DEFAULT nextval('usuarios.paciente_id_paciente_seq'::regclass);
 E   ALTER TABLE usuarios.paciente ALTER COLUMN id_paciente DROP DEFAULT;
       usuarios          postgres    false    218    217            �
           2604    42629    usuario id_usuario    DEFAULT     |   ALTER TABLE ONLY usuarios.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuarios.usuario_id_usuario_seq'::regclass);
 C   ALTER TABLE usuarios.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       usuarios          postgres    false    220    219            T          0    42558 	   actividad 
   TABLE DATA           �   COPY actividades.actividad (id_actividad, nombre_actividad, descripcion, docente_creador, contenido_actividad, tipo_actividad, estudiantes) FROM stdin;
    actividades          postgres    false    205   �S       e          0    66946    tp_actividad 
   TABLE DATA           G   COPY actividades.tp_actividad (tp_actividad_id, actividad) FROM stdin;
    actividades          postgres    false    222   �T       V          0    42566    acceso 
   TABLE DATA           k   COPY seguridad.acceso (id_acceso, sesion, "fecha_inicioSesion", "fecha_finSesion", id_usuario) FROM stdin;
 	   seguridad          postgres    false    207   �T       X          0    42574    token_login_aplicacion 
   TABLE DATA           g   COPY seguridad.token_login_aplicacion (id, user_id, fecha_generado, fecha_vigencia, token) FROM stdin;
 	   seguridad          postgres    false    209   U       Z          0    42582 	   acudiente 
   TABLE DATA           i   COPY usuarios.acudiente (id_acudiente, nombre_acudiente, apellido_acudiente, cedula, correo) FROM stdin;
    usuarios          postgres    false    211   *U       \          0    42590    docente 
   TABLE DATA           v   COPY usuarios.docente (id_docente, nombre_docente, apellido_docente, nit, id_institucion, correo, cedula) FROM stdin;
    usuarios          postgres    false    213   tU       ^          0    42598    institucion 
   TABLE DATA           K   COPY usuarios.institucion (id_institucion, nombre_institucion) FROM stdin;
    usuarios          postgres    false    215   �U       `          0    42606    paciente 
   TABLE DATA           �   COPY usuarios.paciente (id_paciente, nombre_paciente, apellido_paciente, numero_documento, grado_autismo, edad, cedula_docente, cedula_acudiente, id_institucion) FROM stdin;
    usuarios          postgres    false    217   �U       b          0    42614    usuario 
   TABLE DATA           a   COPY usuarios.usuario (id_usuario, numero_documento, clave_usuario, tipo_usuario_id) FROM stdin;
    usuarios          postgres    false    219   8V       u           0    0    Acticidad_id_actividad_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('actividades."Acticidad_id_actividad_seq"', 26, true);
          actividades          postgres    false    206            v           0    0     tp_actividad_tp_actividad_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('actividades.tp_actividad_tp_actividad_id_seq', 1, false);
          actividades          postgres    false    221            w           0    0    acceso_id_acceso_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('seguridad.acceso_id_acceso_seq', 319, true);
       	   seguridad          postgres    false    208            x           0    0    token_login_aplicacion_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('seguridad.token_login_aplicacion_id_seq', 1, false);
       	   seguridad          postgres    false    210            y           0    0    acudiente_id_acudiente_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('usuarios.acudiente_id_acudiente_seq', 4, true);
          usuarios          postgres    false    212            z           0    0    docente_id_docente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('usuarios.docente_id_docente_seq', 15, true);
          usuarios          postgres    false    214            {           0    0    institucion_id_institucion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('usuarios.institucion_id_institucion_seq', 1, false);
          usuarios          postgres    false    216            |           0    0    paciente_id_paciente_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('usuarios.paciente_id_paciente_seq', 20, true);
          usuarios          postgres    false    218            }           0    0    usuario_id_usuario_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('usuarios.usuario_id_usuario_seq', 75, true);
          usuarios          postgres    false    220            �
           2606    42631    actividad Acticidad_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY actividades.actividad
    ADD CONSTRAINT "Acticidad_pkey" PRIMARY KEY (id_actividad);
 I   ALTER TABLE ONLY actividades.actividad DROP CONSTRAINT "Acticidad_pkey";
       actividades            postgres    false    205            �
           2606    66954 (   tp_actividad pk_actividades_tp_actividad 
   CONSTRAINT     x   ALTER TABLE ONLY actividades.tp_actividad
    ADD CONSTRAINT pk_actividades_tp_actividad PRIMARY KEY (tp_actividad_id);
 W   ALTER TABLE ONLY actividades.tp_actividad DROP CONSTRAINT pk_actividades_tp_actividad;
       actividades            postgres    false    222            �
           2606    42633    acceso acceso_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY seguridad.acceso
    ADD CONSTRAINT acceso_pkey PRIMARY KEY (id_acceso);
 ?   ALTER TABLE ONLY seguridad.acceso DROP CONSTRAINT acceso_pkey;
    	   seguridad            postgres    false    207            �
           2606    42635 2   token_login_aplicacion token_login_aplicacion_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY seguridad.token_login_aplicacion
    ADD CONSTRAINT token_login_aplicacion_pkey PRIMARY KEY (id);
 _   ALTER TABLE ONLY seguridad.token_login_aplicacion DROP CONSTRAINT token_login_aplicacion_pkey;
    	   seguridad            postgres    false    209            �
           2606    42637 "   institucion pk_usuario_institucion 
   CONSTRAINT     �   ALTER TABLE ONLY usuarios.institucion
    ADD CONSTRAINT pk_usuario_institucion PRIMARY KEY (id_institucion, nombre_institucion);
 N   ALTER TABLE ONLY usuarios.institucion DROP CONSTRAINT pk_usuario_institucion;
       usuarios            postgres    false    215    215            �
           2606    42639    paciente pk_usuario_paciente 
   CONSTRAINT     e   ALTER TABLE ONLY usuarios.paciente
    ADD CONSTRAINT pk_usuario_paciente PRIMARY KEY (id_paciente);
 H   ALTER TABLE ONLY usuarios.paciente DROP CONSTRAINT pk_usuario_paciente;
       usuarios            postgres    false    217            �
           2606    42641    acudiente pk_usuarios_acudiente 
   CONSTRAINT     i   ALTER TABLE ONLY usuarios.acudiente
    ADD CONSTRAINT pk_usuarios_acudiente PRIMARY KEY (id_acudiente);
 K   ALTER TABLE ONLY usuarios.acudiente DROP CONSTRAINT pk_usuarios_acudiente;
       usuarios            postgres    false    211            �
           2606    42643    docente pk_usuarios_docente 
   CONSTRAINT     c   ALTER TABLE ONLY usuarios.docente
    ADD CONSTRAINT pk_usuarios_docente PRIMARY KEY (id_docente);
 G   ALTER TABLE ONLY usuarios.docente DROP CONSTRAINT pk_usuarios_docente;
       usuarios            postgres    false    213            �
           2606    42645    usuario pk_ususario_usuario 
   CONSTRAINT     c   ALTER TABLE ONLY usuarios.usuario
    ADD CONSTRAINT pk_ususario_usuario PRIMARY KEY (id_usuario);
 G   ALTER TABLE ONLY usuarios.usuario DROP CONSTRAINT pk_ususario_usuario;
       usuarios            postgres    false    219            T   �   x�M�1�0F�˯�mI�m7AE�I+r$Q#�J���ݖb�������_ޒ��F'�lu��AI9V#=�[��&i|�� !_0�@����`Fu߷��L@�./�����bV��ͅG�$�k:�q��t�����;ϝ9���տ�"4J�H#�5���q���V�շ���1c�`�C�      e   4   x�3����,IL�<�9O�,�()1�ˈ�%�8�(� "������������ �W�      V   (   x�343�L,N"�?23�260�,NI+NC��qqq �r
+      X      x������ � �      Z   :   x�3�t�K)J-�,��+I-��4400745�00�LI,�LqH�M���K������� �a�      \   P   x�34�tI,�L�,��+I-��4400224214614�4�LI�B��r�s���s3s���sA��M�,̸b���� �.D      ^      x������ � �      `   7   x�34��*M�SpI,�L���/H��4400745�0��4B8׌3ƏӐ+F��� �#F      b   4   x�33�4400745�00�44261R\f�as����B�&l����� ��     