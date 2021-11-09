PGDMP                     
    y            proyectoTEA    13.4    13.4 0    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17048    proyectoTEA    DATABASE     i   CREATE DATABASE "proyectoTEA" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "proyectoTEA";
                postgres    false                        2615    17105 	   seguridad    SCHEMA        CREATE SCHEMA seguridad;
    DROP SCHEMA seguridad;
                postgres    false                        2615    17049    usuarios    SCHEMA        CREATE SCHEMA usuarios;
    DROP SCHEMA usuarios;
                postgres    false            �            1259    17108    acceso    TABLE     �   CREATE TABLE seguridad.acceso (
    id_acceso integer NOT NULL,
    "fecha_inicioSesion" time without time zone NOT NULL,
    "fecha_finSesion" time without time zone,
    sesion text NOT NULL
);
    DROP TABLE seguridad.acceso;
    	   seguridad         heap    postgres    false    5            �            1259    17106    acceso_id_acceso_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.acceso_id_acceso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE seguridad.acceso_id_acceso_seq;
    	   seguridad          postgres    false    5    211            �           0    0    acceso_id_acceso_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE seguridad.acceso_id_acceso_seq OWNED BY seguridad.acceso.id_acceso;
       	   seguridad          postgres    false    210            �            1259    17119    token_login_aplicacion    TABLE     �   CREATE TABLE seguridad.token_login_aplicacion (
    id integer NOT NULL,
    user_id numeric NOT NULL,
    fecha_generado time with time zone NOT NULL,
    fecha_vigencia time with time zone NOT NULL,
    token text NOT NULL
);
 -   DROP TABLE seguridad.token_login_aplicacion;
    	   seguridad         heap    postgres    false    5            �            1259    17117    token_login_aplicacion_id_seq    SEQUENCE     �   CREATE SEQUENCE seguridad.token_login_aplicacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE seguridad.token_login_aplicacion_id_seq;
    	   seguridad          postgres    false    213    5            �           0    0    token_login_aplicacion_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE seguridad.token_login_aplicacion_id_seq OWNED BY seguridad.token_login_aplicacion.id;
       	   seguridad          postgres    false    212            �            1259    17050 	   acudiente    TABLE     �   CREATE TABLE usuarios.acudiente (
    id_acudiente integer NOT NULL,
    nombre_acudiente text NOT NULL,
    apellido_acudiente text NOT NULL,
    cedula text NOT NULL,
    correo text NOT NULL
);
    DROP TABLE usuarios.acudiente;
       usuarios         heap    postgres    false    4            �            1259    17056    acudiente_id_acudiente_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.acudiente_id_acudiente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE usuarios.acudiente_id_acudiente_seq;
       usuarios          postgres    false    202    4            �           0    0    acudiente_id_acudiente_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE usuarios.acudiente_id_acudiente_seq OWNED BY usuarios.acudiente.id_acudiente;
          usuarios          postgres    false    203            �            1259    17058    docente    TABLE     �   CREATE TABLE usuarios.docente (
    id_docente integer NOT NULL,
    nombre_docente text NOT NULL,
    apellido_docente text NOT NULL,
    nit text NOT NULL,
    id_institucion integer NOT NULL,
    correo text NOT NULL,
    cedula text NOT NULL
);
    DROP TABLE usuarios.docente;
       usuarios         heap    postgres    false    4            �            1259    17064    docente_id_docente_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.docente_id_docente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE usuarios.docente_id_docente_seq;
       usuarios          postgres    false    204    4            �           0    0    docente_id_docente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE usuarios.docente_id_docente_seq OWNED BY usuarios.docente.id_docente;
          usuarios          postgres    false    205            �            1259    17066    institucion    TABLE     q   CREATE TABLE usuarios.institucion (
    id_institucion integer NOT NULL,
    nombre_institucion text NOT NULL
);
 !   DROP TABLE usuarios.institucion;
       usuarios         heap    postgres    false    4            �            1259    17072    institucion_id_institucion_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.institucion_id_institucion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE usuarios.institucion_id_institucion_seq;
       usuarios          postgres    false    206    4            �           0    0    institucion_id_institucion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE usuarios.institucion_id_institucion_seq OWNED BY usuarios.institucion.id_institucion;
          usuarios          postgres    false    207            �            1259    17082    usuario    TABLE     �   CREATE TABLE usuarios.usuario (
    id_usuario integer NOT NULL,
    numero_documento text NOT NULL,
    clave_usuario text NOT NULL,
    tipo_usuario_id integer NOT NULL
);
    DROP TABLE usuarios.usuario;
       usuarios         heap    postgres    false    4            �            1259    17088    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE usuarios.usuario_id_usuario_seq;
       usuarios          postgres    false    208    4            �           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE usuarios.usuario_id_usuario_seq OWNED BY usuarios.usuario.id_usuario;
          usuarios          postgres    false    209            L           2604    17111    acceso id_acceso    DEFAULT     z   ALTER TABLE ONLY seguridad.acceso ALTER COLUMN id_acceso SET DEFAULT nextval('seguridad.acceso_id_acceso_seq'::regclass);
 B   ALTER TABLE seguridad.acceso ALTER COLUMN id_acceso DROP DEFAULT;
    	   seguridad          postgres    false    211    210    211            M           2604    17122    token_login_aplicacion id    DEFAULT     �   ALTER TABLE ONLY seguridad.token_login_aplicacion ALTER COLUMN id SET DEFAULT nextval('seguridad.token_login_aplicacion_id_seq'::regclass);
 K   ALTER TABLE seguridad.token_login_aplicacion ALTER COLUMN id DROP DEFAULT;
    	   seguridad          postgres    false    212    213    213            H           2604    17090    acudiente id_acudiente    DEFAULT     �   ALTER TABLE ONLY usuarios.acudiente ALTER COLUMN id_acudiente SET DEFAULT nextval('usuarios.acudiente_id_acudiente_seq'::regclass);
 G   ALTER TABLE usuarios.acudiente ALTER COLUMN id_acudiente DROP DEFAULT;
       usuarios          postgres    false    203    202            I           2604    17091    docente id_docente    DEFAULT     |   ALTER TABLE ONLY usuarios.docente ALTER COLUMN id_docente SET DEFAULT nextval('usuarios.docente_id_docente_seq'::regclass);
 C   ALTER TABLE usuarios.docente ALTER COLUMN id_docente DROP DEFAULT;
       usuarios          postgres    false    205    204            J           2604    17092    institucion id_institucion    DEFAULT     �   ALTER TABLE ONLY usuarios.institucion ALTER COLUMN id_institucion SET DEFAULT nextval('usuarios.institucion_id_institucion_seq'::regclass);
 K   ALTER TABLE usuarios.institucion ALTER COLUMN id_institucion DROP DEFAULT;
       usuarios          postgres    false    207    206            K           2604    17094    usuario id_usuario    DEFAULT     |   ALTER TABLE ONLY usuarios.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuarios.usuario_id_usuario_seq'::regclass);
 C   ALTER TABLE usuarios.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       usuarios          postgres    false    209    208            �          0    17108    acceso 
   TABLE DATA           _   COPY seguridad.acceso (id_acceso, "fecha_inicioSesion", "fecha_finSesion", sesion) FROM stdin;
 	   seguridad          postgres    false    211   �7       �          0    17119    token_login_aplicacion 
   TABLE DATA           g   COPY seguridad.token_login_aplicacion (id, user_id, fecha_generado, fecha_vigencia, token) FROM stdin;
 	   seguridad          postgres    false    213   	8       �          0    17050 	   acudiente 
   TABLE DATA           i   COPY usuarios.acudiente (id_acudiente, nombre_acudiente, apellido_acudiente, cedula, correo) FROM stdin;
    usuarios          postgres    false    202   &8       �          0    17058    docente 
   TABLE DATA           v   COPY usuarios.docente (id_docente, nombre_docente, apellido_docente, nit, id_institucion, correo, cedula) FROM stdin;
    usuarios          postgres    false    204   �8       �          0    17066    institucion 
   TABLE DATA           K   COPY usuarios.institucion (id_institucion, nombre_institucion) FROM stdin;
    usuarios          postgres    false    206   9       �          0    17082    usuario 
   TABLE DATA           a   COPY usuarios.usuario (id_usuario, numero_documento, clave_usuario, tipo_usuario_id) FROM stdin;
    usuarios          postgres    false    208   $9       �           0    0    acceso_id_acceso_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('seguridad.acceso_id_acceso_seq', 4, true);
       	   seguridad          postgres    false    210            �           0    0    token_login_aplicacion_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('seguridad.token_login_aplicacion_id_seq', 1, false);
       	   seguridad          postgres    false    212            �           0    0    acudiente_id_acudiente_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('usuarios.acudiente_id_acudiente_seq', 2, true);
          usuarios          postgres    false    203            �           0    0    docente_id_docente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('usuarios.docente_id_docente_seq', 6, true);
          usuarios          postgres    false    205            �           0    0    institucion_id_institucion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('usuarios.institucion_id_institucion_seq', 1, false);
          usuarios          postgres    false    207            �           0    0    usuario_id_usuario_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('usuarios.usuario_id_usuario_seq', 18, true);
          usuarios          postgres    false    209            W           2606    17116    acceso acceso_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY seguridad.acceso
    ADD CONSTRAINT acceso_pkey PRIMARY KEY (id_acceso);
 ?   ALTER TABLE ONLY seguridad.acceso DROP CONSTRAINT acceso_pkey;
    	   seguridad            postgres    false    211            Y           2606    17127 2   token_login_aplicacion token_login_aplicacion_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY seguridad.token_login_aplicacion
    ADD CONSTRAINT token_login_aplicacion_pkey PRIMARY KEY (id);
 _   ALTER TABLE ONLY seguridad.token_login_aplicacion DROP CONSTRAINT token_login_aplicacion_pkey;
    	   seguridad            postgres    false    213            S           2606    17096 "   institucion pk_usuario_institucion 
   CONSTRAINT     �   ALTER TABLE ONLY usuarios.institucion
    ADD CONSTRAINT pk_usuario_institucion PRIMARY KEY (id_institucion, nombre_institucion);
 N   ALTER TABLE ONLY usuarios.institucion DROP CONSTRAINT pk_usuario_institucion;
       usuarios            postgres    false    206    206            O           2606    17098    acudiente pk_usuarios_acudiente 
   CONSTRAINT     i   ALTER TABLE ONLY usuarios.acudiente
    ADD CONSTRAINT pk_usuarios_acudiente PRIMARY KEY (id_acudiente);
 K   ALTER TABLE ONLY usuarios.acudiente DROP CONSTRAINT pk_usuarios_acudiente;
       usuarios            postgres    false    202            Q           2606    17100    docente pk_usuarios_docente 
   CONSTRAINT     c   ALTER TABLE ONLY usuarios.docente
    ADD CONSTRAINT pk_usuarios_docente PRIMARY KEY (id_docente);
 G   ALTER TABLE ONLY usuarios.docente DROP CONSTRAINT pk_usuarios_docente;
       usuarios            postgres    false    204            U           2606    17104    usuario pk_ususario_usuario 
   CONSTRAINT     c   ALTER TABLE ONLY usuarios.usuario
    ADD CONSTRAINT pk_ususario_usuario PRIMARY KEY (id_usuario);
 G   ALTER TABLE ONLY usuarios.usuario DROP CONSTRAINT pk_ususario_usuario;
       usuarios            postgres    false    208            �   S   x�m�;
�0 �99Lh�m�⢈�{�:���G���Hh�~�?�5�
�(�jAl&�:��R����*ٟz�Q�P�U�_L�#      �      x������ � �      �   S   x�3�t�q�r�s	r�tJ-�K��4400745�0��LI,�L�+,��+I-�����34vH�M���K���2¢�4b����� }#�      �   n   x�3�tI,�L��/��442"N#���^aif^Ij�^N~����Cznbf�^r~.����������%�%�-��)�od�eB�~K�~S�����ԏE��P;��1z\\\ �n      �      x������ � �      �   ^   x�m���0�s<L�I�g��?GQ�|��z�,`�H��*9Pc

=X\V��GHG��m�"�(S�i����W�G)��3}W罗�Z�u���d/�     