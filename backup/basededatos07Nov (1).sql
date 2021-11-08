PGDMP         ;            
    y            proyectoTEA    12.4    12.4 (    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    42215    proyectoTEA    DATABASE     �   CREATE DATABASE "proyectoTEA" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "proyectoTEA";
                postgres    false                        2615    42216    usuarios    SCHEMA        CREATE SCHEMA usuarios;
    DROP SCHEMA usuarios;
                postgres    false            �            1259    42241 	   acudiente    TABLE     �   CREATE TABLE usuarios.acudiente (
    id_acudiente integer NOT NULL,
    nombre_acudiente text NOT NULL,
    apellido_acudiente text NOT NULL,
    cedula text NOT NULL,
    correo text NOT NULL
);
    DROP TABLE usuarios.acudiente;
       usuarios         heap    postgres    false    8            �            1259    42239    acudiente_id_acudiente_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.acudiente_id_acudiente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE usuarios.acudiente_id_acudiente_seq;
       usuarios          postgres    false    208    8            :           0    0    acudiente_id_acudiente_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE usuarios.acudiente_id_acudiente_seq OWNED BY usuarios.acudiente.id_acudiente;
          usuarios          postgres    false    207            �            1259    42252    docente    TABLE     �   CREATE TABLE usuarios.docente (
    id_docente integer NOT NULL,
    nombre_docente text NOT NULL,
    apellido_docente text NOT NULL,
    nit text NOT NULL,
    id_institucion integer NOT NULL,
    correo text NOT NULL,
    cedula text NOT NULL
);
    DROP TABLE usuarios.docente;
       usuarios         heap    postgres    false    8            �            1259    42250    docente_id_docente_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.docente_id_docente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE usuarios.docente_id_docente_seq;
       usuarios          postgres    false    210    8            ;           0    0    docente_id_docente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE usuarios.docente_id_docente_seq OWNED BY usuarios.docente.id_docente;
          usuarios          postgres    false    209            �            1259    42263    institucion    TABLE     q   CREATE TABLE usuarios.institucion (
    id_institucion integer NOT NULL,
    nombre_institucion text NOT NULL
);
 !   DROP TABLE usuarios.institucion;
       usuarios         heap    postgres    false    8            �            1259    42261    institucion_id_institucion_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.institucion_id_institucion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE usuarios.institucion_id_institucion_seq;
       usuarios          postgres    false    212    8            <           0    0    institucion_id_institucion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE usuarios.institucion_id_institucion_seq OWNED BY usuarios.institucion.id_institucion;
          usuarios          postgres    false    211            �            1259    42230    rol_usuario    TABLE     a   CREATE TABLE usuarios.rol_usuario (
    id_rol integer NOT NULL,
    nombre_rol text NOT NULL
);
 !   DROP TABLE usuarios.rol_usuario;
       usuarios         heap    postgres    false    8            �            1259    42228    rol_usuario_id_tipo_usuario_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.rol_usuario_id_tipo_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE usuarios.rol_usuario_id_tipo_usuario_seq;
       usuarios          postgres    false    8    206            =           0    0    rol_usuario_id_tipo_usuario_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE usuarios.rol_usuario_id_tipo_usuario_seq OWNED BY usuarios.rol_usuario.id_rol;
          usuarios          postgres    false    205            �            1259    42219    usuario    TABLE     �   CREATE TABLE usuarios.usuario (
    id_usuario integer NOT NULL,
    numero_documento text NOT NULL,
    clave_usuario text NOT NULL,
    tipo_usuario_id integer NOT NULL
);
    DROP TABLE usuarios.usuario;
       usuarios         heap    postgres    false    8            �            1259    42217    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE usuarios.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE usuarios.usuario_id_usuario_seq;
       usuarios          postgres    false    204    8            >           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE usuarios.usuario_id_usuario_seq OWNED BY usuarios.usuario.id_usuario;
          usuarios          postgres    false    203            �
           2604    42244    acudiente id_acudiente    DEFAULT     �   ALTER TABLE ONLY usuarios.acudiente ALTER COLUMN id_acudiente SET DEFAULT nextval('usuarios.acudiente_id_acudiente_seq'::regclass);
 G   ALTER TABLE usuarios.acudiente ALTER COLUMN id_acudiente DROP DEFAULT;
       usuarios          postgres    false    207    208    208            �
           2604    42255    docente id_docente    DEFAULT     |   ALTER TABLE ONLY usuarios.docente ALTER COLUMN id_docente SET DEFAULT nextval('usuarios.docente_id_docente_seq'::regclass);
 C   ALTER TABLE usuarios.docente ALTER COLUMN id_docente DROP DEFAULT;
       usuarios          postgres    false    209    210    210            �
           2604    42266    institucion id_institucion    DEFAULT     �   ALTER TABLE ONLY usuarios.institucion ALTER COLUMN id_institucion SET DEFAULT nextval('usuarios.institucion_id_institucion_seq'::regclass);
 K   ALTER TABLE usuarios.institucion ALTER COLUMN id_institucion DROP DEFAULT;
       usuarios          postgres    false    211    212    212            �
           2604    42233    rol_usuario id_rol    DEFAULT     �   ALTER TABLE ONLY usuarios.rol_usuario ALTER COLUMN id_rol SET DEFAULT nextval('usuarios.rol_usuario_id_tipo_usuario_seq'::regclass);
 C   ALTER TABLE usuarios.rol_usuario ALTER COLUMN id_rol DROP DEFAULT;
       usuarios          postgres    false    205    206    206            �
           2604    42222    usuario id_usuario    DEFAULT     |   ALTER TABLE ONLY usuarios.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuarios.usuario_id_usuario_seq'::regclass);
 C   ALTER TABLE usuarios.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       usuarios          postgres    false    204    203    204            /          0    42241 	   acudiente 
   TABLE DATA           i   COPY usuarios.acudiente (id_acudiente, nombre_acudiente, apellido_acudiente, cedula, correo) FROM stdin;
    usuarios          postgres    false    208   
.       1          0    42252    docente 
   TABLE DATA           v   COPY usuarios.docente (id_docente, nombre_docente, apellido_docente, nit, id_institucion, correo, cedula) FROM stdin;
    usuarios          postgres    false    210   m.       3          0    42263    institucion 
   TABLE DATA           K   COPY usuarios.institucion (id_institucion, nombre_institucion) FROM stdin;
    usuarios          postgres    false    212   �.       -          0    42230    rol_usuario 
   TABLE DATA           ;   COPY usuarios.rol_usuario (id_rol, nombre_rol) FROM stdin;
    usuarios          postgres    false    206   /       +          0    42219    usuario 
   TABLE DATA           a   COPY usuarios.usuario (id_usuario, numero_documento, clave_usuario, tipo_usuario_id) FROM stdin;
    usuarios          postgres    false    204   >/       ?           0    0    acudiente_id_acudiente_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('usuarios.acudiente_id_acudiente_seq', 2, true);
          usuarios          postgres    false    207            @           0    0    docente_id_docente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('usuarios.docente_id_docente_seq', 6, true);
          usuarios          postgres    false    209            A           0    0    institucion_id_institucion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('usuarios.institucion_id_institucion_seq', 1, false);
          usuarios          postgres    false    211            B           0    0    rol_usuario_id_tipo_usuario_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('usuarios.rol_usuario_id_tipo_usuario_seq', 3, true);
          usuarios          postgres    false    205            C           0    0    usuario_id_usuario_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('usuarios.usuario_id_usuario_seq', 12, true);
          usuarios          postgres    false    203            �
           2606    42271 "   institucion pk_usuario_institucion 
   CONSTRAINT     �   ALTER TABLE ONLY usuarios.institucion
    ADD CONSTRAINT pk_usuario_institucion PRIMARY KEY (id_institucion, nombre_institucion);
 N   ALTER TABLE ONLY usuarios.institucion DROP CONSTRAINT pk_usuario_institucion;
       usuarios            postgres    false    212    212            �
           2606    42249    acudiente pk_usuarios_acudiente 
   CONSTRAINT     i   ALTER TABLE ONLY usuarios.acudiente
    ADD CONSTRAINT pk_usuarios_acudiente PRIMARY KEY (id_acudiente);
 K   ALTER TABLE ONLY usuarios.acudiente DROP CONSTRAINT pk_usuarios_acudiente;
       usuarios            postgres    false    208            �
           2606    42260    docente pk_usuarios_docente 
   CONSTRAINT     c   ALTER TABLE ONLY usuarios.docente
    ADD CONSTRAINT pk_usuarios_docente PRIMARY KEY (id_docente);
 G   ALTER TABLE ONLY usuarios.docente DROP CONSTRAINT pk_usuarios_docente;
       usuarios            postgres    false    210            �
           2606    42238 #   rol_usuario pk_usuarios_rol_usuario 
   CONSTRAINT     g   ALTER TABLE ONLY usuarios.rol_usuario
    ADD CONSTRAINT pk_usuarios_rol_usuario PRIMARY KEY (id_rol);
 O   ALTER TABLE ONLY usuarios.rol_usuario DROP CONSTRAINT pk_usuarios_rol_usuario;
       usuarios            postgres    false    206            �
           2606    42227    usuario pk_ususario_usuario 
   CONSTRAINT     c   ALTER TABLE ONLY usuarios.usuario
    ADD CONSTRAINT pk_ususario_usuario PRIMARY KEY (id_usuario);
 G   ALTER TABLE ONLY usuarios.usuario DROP CONSTRAINT pk_ususario_usuario;
       usuarios            postgres    false    204            /   S   x�3�t�q�r�s	r�tJ-�K��4400745�0��LI,�L�+,��+I-�����34vH�M���K���2¢�4b����� }#�      1   n   x�3�tI,�L��/��442"N#���^aif^Ij�^N~����Cznbf�^r~.����������%�%�-��)�od�eB�~K�~S�����ԏE��P;��1z\\\ �n      3      x������ � �      -   &   x�3�t�ON�+I�2�tL.M���9�!�=... �
�      +   [   x�m��� �3���K����@Ur�^��a�H��*9Pc

=X\V�����jK۫�|P�L�u�nچ��R��gzV��.��>��}x ��,V     