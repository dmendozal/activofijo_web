PGDMP          #            
    w            db_grupo01sa "   10.10 (Ubuntu 10.10-1.pgdg18.04+1) "   10.10 (Ubuntu 10.10-1.pgdg18.04+1) v    Z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            [           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            \           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ]           1262    16384    db_grupo01sa    DATABASE     ~   CREATE DATABASE db_grupo01sa WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_BO.UTF-8' LC_CTYPE = 'es_BO.UTF-8';
    DROP DATABASE db_grupo01sa;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ^           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13081    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            _           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    16387    activo    TABLE     6  CREATE TABLE public.activo (
    idactivo integer DEFAULT nextval(('Activo_idactivo_seq'::text)::regclass) NOT NULL,
    codigo character varying(50) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL,
    fkidestado integer NOT NULL,
    fkidbien integer NOT NULL,
    fkidubicacion integer NOT NULL
);
    DROP TABLE public.activo;
       public         postgres    false    3            ?            1259    16385    activo_idactivo_seq    SEQUENCE     |   CREATE SEQUENCE public.activo_idactivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.activo_idactivo_seq;
       public       postgres    false    3            ?            1259    16391 
   asignacion    TABLE     ?   CREATE TABLE public.asignacion (
    fkidusuario integer NOT NULL,
    fkidactivo integer NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
    DROP TABLE public.asignacion;
       public         postgres    false    3            ?            1259    16396    bien    TABLE     ?   CREATE TABLE public.bien (
    idbien integer DEFAULT nextval(('Bien_idbien_seq'::text)::regclass) NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
    DROP TABLE public.bien;
       public         postgres    false    3            ?            1259    16394    bien_idbien_seq    SEQUENCE     x   CREATE SEQUENCE public.bien_idbien_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.bien_idbien_seq;
       public       postgres    false    3            ?            1259    16405    cargo    TABLE     ?   CREATE TABLE public.cargo (
    idcargo integer DEFAULT nextval(('Cargo_idcargo_seq'::text)::regclass) NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(100) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
    DROP TABLE public.cargo;
       public         postgres    false    3            ?            1259    16403    cargo_idcargo_seq    SEQUENCE     z   CREATE SEQUENCE public.cargo_idcargo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.cargo_idcargo_seq;
       public       postgres    false    3            ?            1259    16411    empresa    TABLE     b  CREATE TABLE public.empresa (
    idempresa integer DEFAULT nextval(('Empresa_idempresa_seq'::text)::regclass) NOT NULL,
    razon_social character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    direccion character varying(100) NOT NULL,
    telefono character varying(50) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
    DROP TABLE public.empresa;
       public         postgres    false    3            ?            1259    16409    empresa_idempresa_seq    SEQUENCE     ~   CREATE SEQUENCE public.empresa_idempresa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.empresa_idempresa_seq;
       public       postgres    false    3            ?            1259    16417    estado    TABLE     ?   CREATE TABLE public.estado (
    idestado integer DEFAULT nextval(('Estado_idestado_seq'::text)::regclass) NOT NULL,
    sigla character varying(10) NOT NULL,
    nombre character varying(50) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
    DROP TABLE public.estado;
       public         postgres    false    3            ?            1259    16415    estado_idestado_seq    SEQUENCE     |   CREATE SEQUENCE public.estado_idestado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.estado_idestado_seq;
       public       postgres    false    3            ?            1259    24731    failed_jobs    TABLE     ?   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         postgres    false    3            ?            1259    24729    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public       postgres    false    3    221            `           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
            public       postgres    false    220            ?            1259    16423 
   inventario    TABLE     ?   CREATE TABLE public.inventario (
    idinventario integer DEFAULT nextval(('Inventario_idinventario_seq'::text)::regclass) NOT NULL,
    fkidbien integer NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
    DROP TABLE public.inventario;
       public         postgres    false    3            ?            1259    16421    inventario_idinventario_seq    SEQUENCE     ?   CREATE SEQUENCE public.inventario_idinventario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.inventario_idinventario_seq;
       public       postgres    false    3            ?            1259    16429    mantenimiento    TABLE     m  CREATE TABLE public.mantenimiento (
    idmantenimiento integer DEFAULT nextval(('Mantenimiento_idmantenimiento_seq'::text)::regclass) NOT NULL,
    fecha_ingreso date NOT NULL,
    fecha_devolucion date NOT NULL,
    fecha_garantia date NOT NULL,
    fkidactivo integer NOT NULL,
    fkidempresa integer NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
 !   DROP TABLE public.mantenimiento;
       public         postgres    false    3            ?            1259    16427 !   mantenimiento_idmantenimiento_seq    SEQUENCE     ?   CREATE SEQUENCE public.mantenimiento_idmantenimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.mantenimiento_idmantenimiento_seq;
       public       postgres    false    3            ?            1259    24703 
   migrations    TABLE     ?   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    3            ?            1259    24701    migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    216    3            a           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    215            ?            1259    24763    model_has_permissions    TABLE     ?   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public         postgres    false    3            ?            1259    24774    model_has_roles    TABLE     ?   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public         postgres    false    3            ?            1259    24722    password_resets    TABLE     ?   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false    3            ?            1259    24743    permissions    TABLE     ?   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false    3            ?            1259    24741    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    3    223            b           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    222            ?            1259    24785    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public         postgres    false    3            ?            1259    24754    roles    TABLE     ?   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false    3            ?            1259    24752    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    3    225            c           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    224            ?            1259    16435 	   ubicacion    TABLE     ?   CREATE TABLE public.ubicacion (
    idubicacion integer DEFAULT nextval(('Ubicacion_idubicacion_seq'::text)::regclass) NOT NULL,
    aula integer NOT NULL,
    piso integer NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
    DROP TABLE public.ubicacion;
       public         postgres    false    3            ?            1259    16433    ubicacion_idubicacion_seq    SEQUENCE     ?   CREATE SEQUENCE public.ubicacion_idubicacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ubicacion_idubicacion_seq;
       public       postgres    false    3            ?            1259    24711    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         postgres    false    3            ?            1259    24709    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    3    218            d           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    217            ?            1259    16441    usuario    TABLE     ?  CREATE TABLE public.usuario (
    idusuario integer DEFAULT nextval(('Usuario_idusuario_seq'::text)::regclass) NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(50) NOT NULL,
    direccion character varying(100) NOT NULL,
    telefono character varying(20) NOT NULL,
    fkidcargo integer NOT NULL,
    estado bit(1) NOT NULL
);
    DROP TABLE public.usuario;
       public         postgres    false    3            ?            1259    16439    usuario_idusuario_seq    SEQUENCE     ~   CREATE SEQUENCE public.usuario_idusuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public       postgres    false    3            ?           2604    24734    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    221    221            ?           2604    24706    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    216    216            ?           2604    24746    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222    223            ?           2604    24757    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    225    225            ?           2604    24714    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    218    218            8          0    16387    activo 
   TABLE DATA               _   COPY public.activo (idactivo, codigo, estado, fkidestado, fkidbien, fkidubicacion) FROM stdin;
    public       postgres    false    197   x?       9          0    16391 
   asignacion 
   TABLE DATA               E   COPY public.asignacion (fkidusuario, fkidactivo, estado) FROM stdin;
    public       postgres    false    198   ??       ;          0    16396    bien 
   TABLE DATA               C   COPY public.bien (idbien, nombre, descripcion, estado) FROM stdin;
    public       postgres    false    200   ʋ       =          0    16405    cargo 
   TABLE DATA               E   COPY public.cargo (idcargo, nombre, descripcion, estado) FROM stdin;
    public       postgres    false    202   ?       ?          0    16411    empresa 
   TABLE DATA               ^   COPY public.empresa (idempresa, razon_social, email, direccion, telefono, estado) FROM stdin;
    public       postgres    false    204   /?       A          0    16417    estado 
   TABLE DATA               A   COPY public.estado (idestado, sigla, nombre, estado) FROM stdin;
    public       postgres    false    206   ??       P          0    24731    failed_jobs 
   TABLE DATA               [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public       postgres    false    221   ??       C          0    16423 
   inventario 
   TABLE DATA               D   COPY public.inventario (idinventario, fkidbien, estado) FROM stdin;
    public       postgres    false    208   ܌       E          0    16429    mantenimiento 
   TABLE DATA               ?   COPY public.mantenimiento (idmantenimiento, fecha_ingreso, fecha_devolucion, fecha_garantia, fkidactivo, fkidempresa, estado) FROM stdin;
    public       postgres    false    210   ??       K          0    24703 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    216   ?       U          0    24763    model_has_permissions 
   TABLE DATA               T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public       postgres    false    226   ??       V          0    24774    model_has_roles 
   TABLE DATA               H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public       postgres    false    227   ??       N          0    24722    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    219   ׍       R          0    24743    permissions 
   TABLE DATA               S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    223   ??       W          0    24785    role_has_permissions 
   TABLE DATA               F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public       postgres    false    228   ?       T          0    24754    roles 
   TABLE DATA               M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    225   .?       G          0    16435 	   ubicacion 
   TABLE DATA               D   COPY public.ubicacion (idubicacion, aula, piso, estado) FROM stdin;
    public       postgres    false    212   K?       M          0    24711    users 
   TABLE DATA               u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public       postgres    false    218   p?       I          0    16441    usuario 
   TABLE DATA               w   COPY public.usuario (idusuario, nombre, apellido, email, password, direccion, telefono, fkidcargo, estado) FROM stdin;
    public       postgres    false    214   /?       e           0    0    activo_idactivo_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.activo_idactivo_seq', 2, true);
            public       postgres    false    196            f           0    0    bien_idbien_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.bien_idbien_seq', 1, true);
            public       postgres    false    199            g           0    0    cargo_idcargo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cargo_idcargo_seq', 1, false);
            public       postgres    false    201            h           0    0    empresa_idempresa_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.empresa_idempresa_seq', 14, true);
            public       postgres    false    203            i           0    0    estado_idestado_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.estado_idestado_seq', 1, true);
            public       postgres    false    205            j           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
            public       postgres    false    220            k           0    0    inventario_idinventario_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inventario_idinventario_seq', 1, false);
            public       postgres    false    207            l           0    0 !   mantenimiento_idmantenimiento_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.mantenimiento_idmantenimiento_seq', 1, false);
            public       postgres    false    209            m           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);
            public       postgres    false    215            n           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);
            public       postgres    false    222            o           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
            public       postgres    false    224            p           0    0    ubicacion_idubicacion_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.ubicacion_idubicacion_seq', 1, true);
            public       postgres    false    211            q           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
            public       postgres    false    217            r           0    0    usuario_idusuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 1, false);
            public       postgres    false    213            ?           2606    24740    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public         postgres    false    221            ?           2606    24708    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    216            ?           2606    24773 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public         postgres    false    226    226    226            ?           2606    24784 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public         postgres    false    227    227    227            ?           2606    24751    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    223            ?           2606    16446    activo pk_activo 
   CONSTRAINT     T   ALTER TABLE ONLY public.activo
    ADD CONSTRAINT pk_activo PRIMARY KEY (idactivo);
 :   ALTER TABLE ONLY public.activo DROP CONSTRAINT pk_activo;
       public         postgres    false    197            ?           2606    16448    bien pk_bienes 
   CONSTRAINT     P   ALTER TABLE ONLY public.bien
    ADD CONSTRAINT pk_bienes PRIMARY KEY (idbien);
 8   ALTER TABLE ONLY public.bien DROP CONSTRAINT pk_bienes;
       public         postgres    false    200            ?           2606    16452    empresa pk_empresa 
   CONSTRAINT     W   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT pk_empresa PRIMARY KEY (idempresa);
 <   ALTER TABLE ONLY public.empresa DROP CONSTRAINT pk_empresa;
       public         postgres    false    204            ?           2606    16454    estado pk_estado 
   CONSTRAINT     T   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT pk_estado PRIMARY KEY (idestado);
 :   ALTER TABLE ONLY public.estado DROP CONSTRAINT pk_estado;
       public         postgres    false    206            ?           2606    16456    inventario pk_inventario 
   CONSTRAINT     `   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT pk_inventario PRIMARY KEY (idinventario);
 B   ALTER TABLE ONLY public.inventario DROP CONSTRAINT pk_inventario;
       public         postgres    false    208            ?           2606    16458    mantenimiento pk_mantenimiento 
   CONSTRAINT     i   ALTER TABLE ONLY public.mantenimiento
    ADD CONSTRAINT pk_mantenimiento PRIMARY KEY (idmantenimiento);
 H   ALTER TABLE ONLY public.mantenimiento DROP CONSTRAINT pk_mantenimiento;
       public         postgres    false    210            ?           2606    16450    cargo pk_tipo 
   CONSTRAINT     P   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT pk_tipo PRIMARY KEY (idcargo);
 7   ALTER TABLE ONLY public.cargo DROP CONSTRAINT pk_tipo;
       public         postgres    false    202            ?           2606    16460    ubicacion pk_ubicacion 
   CONSTRAINT     ]   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT pk_ubicacion PRIMARY KEY (idubicacion);
 @   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT pk_ubicacion;
       public         postgres    false    212            ?           2606    16462    usuario pk_usuario 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (idusuario);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT pk_usuario;
       public         postgres    false    214            ?           2606    24799 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public         postgres    false    228    228            ?           2606    24762    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    225            ?           2606    24721    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    218            ?           2606    24719    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    218            ?           1259    24766 /   model_has_permissions_model_id_model_type_index    INDEX     ?   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public         postgres    false    226    226            ?           1259    24777 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public         postgres    false    227    227            ?           1259    24728    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    219            ?           2606    16463    activo fk_activo_bien    FK CONSTRAINT     x   ALTER TABLE ONLY public.activo
    ADD CONSTRAINT fk_activo_bien FOREIGN KEY (fkidbien) REFERENCES public.bien(idbien);
 ?   ALTER TABLE ONLY public.activo DROP CONSTRAINT fk_activo_bien;
       public       postgres    false    197    200    2957            ?           2606    16468    activo fk_activo_estado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.activo
    ADD CONSTRAINT fk_activo_estado FOREIGN KEY (fkidestado) REFERENCES public.estado(idestado);
 A   ALTER TABLE ONLY public.activo DROP CONSTRAINT fk_activo_estado;
       public       postgres    false    197    2963    206            ?           2606    16473    activo fk_activo_ubicacion    FK CONSTRAINT     ?   ALTER TABLE ONLY public.activo
    ADD CONSTRAINT fk_activo_ubicacion FOREIGN KEY (fkidubicacion) REFERENCES public.ubicacion(idubicacion);
 D   ALTER TABLE ONLY public.activo DROP CONSTRAINT fk_activo_ubicacion;
       public       postgres    false    2969    197    212            ?           2606    16478    asignacion fk_asignacion_activo    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asignacion
    ADD CONSTRAINT fk_asignacion_activo FOREIGN KEY (fkidactivo) REFERENCES public.activo(idactivo);
 I   ALTER TABLE ONLY public.asignacion DROP CONSTRAINT fk_asignacion_activo;
       public       postgres    false    198    197    2955            ?           2606    16483     asignacion fk_asignacion_usuario    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asignacion
    ADD CONSTRAINT fk_asignacion_usuario FOREIGN KEY (fkidusuario) REFERENCES public.usuario(idusuario);
 J   ALTER TABLE ONLY public.asignacion DROP CONSTRAINT fk_asignacion_usuario;
       public       postgres    false    2971    198    214            ?           2606    16488    inventario fk_inventario_bien    FK CONSTRAINT     ?   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_inventario_bien FOREIGN KEY (fkidbien) REFERENCES public.bien(idbien);
 G   ALTER TABLE ONLY public.inventario DROP CONSTRAINT fk_inventario_bien;
       public       postgres    false    200    208    2957            ?           2606    16493 %   mantenimiento fk_mantenimiento_activo    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mantenimiento
    ADD CONSTRAINT fk_mantenimiento_activo FOREIGN KEY (fkidactivo) REFERENCES public.activo(idactivo);
 O   ALTER TABLE ONLY public.mantenimiento DROP CONSTRAINT fk_mantenimiento_activo;
       public       postgres    false    2955    210    197            ?           2606    16498 &   mantenimiento fk_mantenimiento_empresa    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mantenimiento
    ADD CONSTRAINT fk_mantenimiento_empresa FOREIGN KEY (fkidempresa) REFERENCES public.empresa(idempresa);
 P   ALTER TABLE ONLY public.mantenimiento DROP CONSTRAINT fk_mantenimiento_empresa;
       public       postgres    false    204    210    2961            ?           2606    16503    usuario fk_usuario_cargo    FK CONSTRAINT     ~   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usuario_cargo FOREIGN KEY (fkidcargo) REFERENCES public.cargo(idcargo);
 B   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_usuario_cargo;
       public       postgres    false    202    214    2959            ?           2606    24767 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public       postgres    false    223    226    2982            ?           2606    24778 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public       postgres    false    225    2984    227            ?           2606    24788 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public       postgres    false    228    223    2982            ?           2606    24793 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public       postgres    false    228    225    2984            8   %   x?3?54161160??B.CΔ??N(7F??? ???      9      x?????? ? ?      ;   8   x?3????I?tpr?Wq?qu???t?Wp???Rp?q?s?/?4?????? @@      =      x?????? ? ?      ?   O   x?3?L)N???/-rH?M???K???,NL)?442?4?24&????S??\?)?y??9??*?M?,?̀?b???? ?2?      A   !   x?3?t?s?t*M?Sp-.IL??4?????? R0?      P      x?????? ? ?      C      x?????? ? ?      E      x?????? ? ?      K   w   x?U???0??k?0f?3໘???0????IDzѫ?䧆=?1??pW?E?2QC??$9??t??h??:@Ť???:??wX?a??i?c?w6^\;m???+???,?e?V????? zh:*      U      x?????? ? ?      V      x?????? ? ?      N      x?????? ? ?      R      x?????? ? ?      W      x?????? ? ?      T      x?????? ? ?      G      x?3?4?4?4?????? ??      M   ?   x?mλ?0 @ѹ?
VJ[ R&	"*???(?*b?Z@??\Y?p?K@~???ﬔ?h?EI@1a:???'?q??4???]?ɳ??????????T??;Ś?7?*???????? ?}9O?y]|??>?????%???h?v++˼j?I?g?䋶?|1z3b?? ????;      I      x?????? ? ?     