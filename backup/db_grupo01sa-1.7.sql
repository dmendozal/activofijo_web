PGDMP                         w            db_grupo01sa "   10.11 (Ubuntu 10.11-1.pgdg18.04+1) "   10.11 (Ubuntu 10.11-1.pgdg18.04+1) ?    x           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            {           1262    25517    db_grupo01sa    DATABASE     ~   CREATE DATABASE db_grupo01sa WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_BO.UTF-8' LC_CTYPE = 'es_BO.UTF-8';
    DROP DATABASE db_grupo01sa;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            |           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13081    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            }           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    25518    activo    TABLE     ?  CREATE TABLE public.activo (
    idactivo integer DEFAULT nextval(('Activo_idactivo_seq'::text)::regclass) NOT NULL,
    codigo character varying(50) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL,
    fkidestado integer NOT NULL,
    fkidbien integer NOT NULL,
    fkidubicacion integer NOT NULL,
    qr character varying(150),
    fkidproveedor integer,
    fecha_adquisicion date,
    monto real,
    garantia integer
);
    DROP TABLE public.activo;
       public         postgres    false    3            ?            1259    25523    activo_idactivo_seq    SEQUENCE     |   CREATE SEQUENCE public.activo_idactivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.activo_idactivo_seq;
       public       postgres    false    3            ?            1259    25525 
   asignacion    TABLE       CREATE TABLE public.asignacion (
    fkidactivo integer NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL,
    fkiduser integer NOT NULL,
    idasignacion integer DEFAULT nextval(('asignacion_idasignacion_seq'::text)::regclass) NOT NULL,
    fecha date
);
    DROP TABLE public.asignacion;
       public         postgres    false    3            ?            1259    25530    asignacion_idasignacion_seq    SEQUENCE     ?   CREATE SEQUENCE public.asignacion_idasignacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.asignacion_idasignacion_seq;
       public       postgres    false    3            ?            1259    25532    bien    TABLE     ?   CREATE TABLE public.bien (
    idbien integer DEFAULT nextval(('Bien_idbien_seq'::text)::regclass) NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(200) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
    DROP TABLE public.bien;
       public         postgres    false    3            ?            1259    25540    bien_idbien_seq    SEQUENCE     x   CREATE SEQUENCE public.bien_idbien_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.bien_idbien_seq;
       public       postgres    false    3            ?            1259    25542    cargo    TABLE     ?   CREATE TABLE public.cargo (
    idcargo integer DEFAULT nextval(('Cargo_idcargo_seq'::text)::regclass) NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(100) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
    DROP TABLE public.cargo;
       public         postgres    false    3            ?            1259    25547    cargo_idcargo_seq    SEQUENCE     z   CREATE SEQUENCE public.cargo_idcargo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.cargo_idcargo_seq;
       public       postgres    false    3            ?            1259    25549    empresa    TABLE     b  CREATE TABLE public.empresa (
    idempresa integer DEFAULT nextval(('Empresa_idempresa_seq'::text)::regclass) NOT NULL,
    razon_social character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    direccion character varying(100) NOT NULL,
    telefono character varying(50) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
    DROP TABLE public.empresa;
       public         postgres    false    3            ?            1259    25554    empresa_idempresa_seq    SEQUENCE     ~   CREATE SEQUENCE public.empresa_idempresa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.empresa_idempresa_seq;
       public       postgres    false    3            ?            1259    25556    estado    TABLE     ?   CREATE TABLE public.estado (
    idestado integer DEFAULT nextval(('Estado_idestado_seq'::text)::regclass) NOT NULL,
    sigla character varying(10) NOT NULL,
    nombre character varying(50) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL
);
    DROP TABLE public.estado;
       public         postgres    false    3            ?            1259    25561    estado_idestado_seq    SEQUENCE     |   CREATE SEQUENCE public.estado_idestado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.estado_idestado_seq;
       public       postgres    false    3            ?            1259    25563    failed_jobs    TABLE     ?   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         postgres    false    3            ?            1259    25570    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public       postgres    false    208    3            ~           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
            public       postgres    false    209            ?            1259    25577    inventario_idinventario_seq    SEQUENCE     ?   CREATE SEQUENCE public.inventario_idinventario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.inventario_idinventario_seq;
       public       postgres    false    3            ?            1259    25579    mantenimiento    TABLE     ?  CREATE TABLE public.mantenimiento (
    idmantenimiento integer DEFAULT nextval(('Mantenimiento_idmantenimiento_seq'::text)::regclass) NOT NULL,
    fecha_ingreso date NOT NULL,
    fecha_devolucion date NOT NULL,
    fkidactivo integer NOT NULL,
    fkidempresa integer NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL,
    detalle character varying(250) NOT NULL,
    tipo character varying(20),
    monto real
);
 !   DROP TABLE public.mantenimiento;
       public         postgres    false    3            ?            1259    25584 !   mantenimiento_idmantenimiento_seq    SEQUENCE     ?   CREATE SEQUENCE public.mantenimiento_idmantenimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.mantenimiento_idmantenimiento_seq;
       public       postgres    false    3            ?            1259    25586 
   migrations    TABLE     ?   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    3            ?            1259    25589    migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    213    3                       0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    214            ?            1259    25591    model_has_permissions    TABLE     ?   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public         postgres    false    3            ?            1259    25594    model_has_roles    TABLE     ?   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) DEFAULT 'App\User'::character varying NOT NULL,
    model_id bigint NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public         postgres    false    3            ?            1259    25598    password_resets    TABLE     ?   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false    3            ?            1259    25604    permissions    TABLE     ?   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false    3            ?            1259    25610    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    218    3            ?           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    219            ?            1259    36992 	   proveedor    TABLE     ?   CREATE TABLE public.proveedor (
    idproveedor integer DEFAULT nextval(('proveedor_idproveedor_seq'::text)::regclass) NOT NULL,
    razon_social character varying(100),
    nit character varying(100),
    email character varying(100)
);
    DROP TABLE public.proveedor;
       public         postgres    false    3            ?            1259    36984    proveedor_idproveedor_seq    SEQUENCE     ?   CREATE SEQUENCE public.proveedor_idproveedor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.proveedor_idproveedor_seq;
       public       postgres    false    3            ?            1259    36998    revision    TABLE     ?   CREATE TABLE public.revision (
    idrevision integer DEFAULT nextval(('revision_idrevision_seq'::text)::regclass) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL,
    fecha date NOT NULL,
    fkidactivo integer NOT NULL
);
    DROP TABLE public.revision;
       public         postgres    false    3            ?            1259    36982    revision_idrevision_seq    SEQUENCE     ?   CREATE SEQUENCE public.revision_idrevision_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.revision_idrevision_seq;
       public       postgres    false    3            ?            1259    25612    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public         postgres    false    3            ?            1259    25615    roles    TABLE       CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) DEFAULT 'web'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false    3            ?            1259    25622    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    3    221            ?           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    222            ?            1259    25624 	   ubicacion    TABLE     ?   CREATE TABLE public.ubicacion (
    idubicacion integer DEFAULT nextval(('Ubicacion_idubicacion_seq'::text)::regclass) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit" NOT NULL,
    tipo character varying(25),
    sigla character varying(25)
);
    DROP TABLE public.ubicacion;
       public         postgres    false    3            ?            1259    25629    ubicacion_idubicacion_seq    SEQUENCE     ?   CREATE SEQUENCE public.ubicacion_idubicacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ubicacion_idubicacion_seq;
       public       postgres    false    3            ?            1259    25631    users    TABLE       CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    apellido character varying(50),
    direccion character varying(50),
    telefono character varying(15),
    foto character varying(150)
);
    DROP TABLE public.users;
       public         postgres    false    3            ?            1259    25637    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    225    3            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    226            ?            1259    25639    usuario    TABLE     ?  CREATE TABLE public.usuario (
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
       public         postgres    false    3            ?            1259    25643    usuario_idusuario_seq    SEQUENCE     ~   CREATE SEQUENCE public.usuario_idusuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public       postgres    false    3            ?            1259    36986    visita    TABLE     ?   CREATE TABLE public.visita (
    fecha date NOT NULL,
    ip character varying(30) NOT NULL,
    estado bit(1) DEFAULT B'1'::"bit",
    visita integer
);
    DROP TABLE public.visita;
       public         postgres    false    3            ?           2604    25645    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208            ?           2604    25646    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    213            ?           2604    25647    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218            ?           2604    25648    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221            ?           2604    25649    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225            P          0    25518    activo 
   TABLE DATA               ?   COPY public.activo (idactivo, codigo, estado, fkidestado, fkidbien, fkidubicacion, qr, fkidproveedor, fecha_adquisicion, monto, garantia) FROM stdin;
    public       postgres    false    196   ?       R          0    25525 
   asignacion 
   TABLE DATA               W   COPY public.asignacion (fkidactivo, estado, fkiduser, idasignacion, fecha) FROM stdin;
    public       postgres    false    198   ??       T          0    25532    bien 
   TABLE DATA               C   COPY public.bien (idbien, nombre, descripcion, estado) FROM stdin;
    public       postgres    false    200   ɞ       V          0    25542    cargo 
   TABLE DATA               E   COPY public.cargo (idcargo, nombre, descripcion, estado) FROM stdin;
    public       postgres    false    202   s?       X          0    25549    empresa 
   TABLE DATA               ^   COPY public.empresa (idempresa, razon_social, email, direccion, telefono, estado) FROM stdin;
    public       postgres    false    204   ??       Z          0    25556    estado 
   TABLE DATA               A   COPY public.estado (idestado, sigla, nombre, estado) FROM stdin;
    public       postgres    false    206   G?       \          0    25563    failed_jobs 
   TABLE DATA               [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public       postgres    false    208   ??       _          0    25579    mantenimiento 
   TABLE DATA               ?   COPY public.mantenimiento (idmantenimiento, fecha_ingreso, fecha_devolucion, fkidactivo, fkidempresa, estado, detalle, tipo, monto) FROM stdin;
    public       postgres    false    211   ɡ       a          0    25586 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    213   1?       c          0    25591    model_has_permissions 
   TABLE DATA               T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public       postgres    false    215   ??       d          0    25594    model_has_roles 
   TABLE DATA               H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public       postgres    false    216   բ       e          0    25598    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    217   ?       f          0    25604    permissions 
   TABLE DATA               S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    218   .?       t          0    36992 	   proveedor 
   TABLE DATA               J   COPY public.proveedor (idproveedor, razon_social, nit, email) FROM stdin;
    public       postgres    false    232   i?       u          0    36998    revision 
   TABLE DATA               I   COPY public.revision (idrevision, estado, fecha, fkidactivo) FROM stdin;
    public       postgres    false    233   ??       h          0    25612    role_has_permissions 
   TABLE DATA               F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public       postgres    false    220   Ԧ       i          0    25615    roles 
   TABLE DATA               M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public       postgres    false    221   ??       k          0    25624 	   ubicacion 
   TABLE DATA               E   COPY public.ubicacion (idubicacion, estado, tipo, sigla) FROM stdin;
    public       postgres    false    223   u?       m          0    25631    users 
   TABLE DATA               ?   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, apellido, direccion, telefono, foto) FROM stdin;
    public       postgres    false    225   ??       o          0    25639    usuario 
   TABLE DATA               w   COPY public.usuario (idusuario, nombre, apellido, email, password, direccion, telefono, fkidcargo, estado) FROM stdin;
    public       postgres    false    227   H?       s          0    36986    visita 
   TABLE DATA               ;   COPY public.visita (fecha, ip, estado, visita) FROM stdin;
    public       postgres    false    231   e?       ?           0    0    activo_idactivo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.activo_idactivo_seq', 26, true);
            public       postgres    false    197            ?           0    0    asignacion_idasignacion_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.asignacion_idasignacion_seq', 10, true);
            public       postgres    false    199            ?           0    0    bien_idbien_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bien_idbien_seq', 11, true);
            public       postgres    false    201            ?           0    0    cargo_idcargo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cargo_idcargo_seq', 1, false);
            public       postgres    false    203            ?           0    0    empresa_idempresa_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.empresa_idempresa_seq', 14, true);
            public       postgres    false    205            ?           0    0    estado_idestado_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.estado_idestado_seq', 4, true);
            public       postgres    false    207            ?           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
            public       postgres    false    209            ?           0    0    inventario_idinventario_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inventario_idinventario_seq', 1, false);
            public       postgres    false    210            ?           0    0 !   mantenimiento_idmantenimiento_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mantenimiento_idmantenimiento_seq', 8, true);
            public       postgres    false    212            ?           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);
            public       postgres    false    214            ?           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 62, true);
            public       postgres    false    219            ?           0    0    proveedor_idproveedor_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.proveedor_idproveedor_seq', 1, false);
            public       postgres    false    230            ?           0    0    revision_idrevision_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.revision_idrevision_seq', 1, false);
            public       postgres    false    229            ?           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 1, true);
            public       postgres    false    222            ?           0    0    ubicacion_idubicacion_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ubicacion_idubicacion_seq', 13, true);
            public       postgres    false    224            ?           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 15, true);
            public       postgres    false    226            ?           0    0    usuario_idusuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 1, false);
            public       postgres    false    228            ?           2606    25651    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public         postgres    false    208            ?           2606    25653    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    213            ?           2606    25655 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public         postgres    false    215    215    215            ?           2606    25657 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public         postgres    false    216    216    216            ?           2606    25659    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    218            ?           2606    25661    activo pk_activo 
   CONSTRAINT     T   ALTER TABLE ONLY public.activo
    ADD CONSTRAINT pk_activo PRIMARY KEY (idactivo);
 :   ALTER TABLE ONLY public.activo DROP CONSTRAINT pk_activo;
       public         postgres    false    196            ?           2606    25663    asignacion pk_asignacion 
   CONSTRAINT     `   ALTER TABLE ONLY public.asignacion
    ADD CONSTRAINT pk_asignacion PRIMARY KEY (idasignacion);
 B   ALTER TABLE ONLY public.asignacion DROP CONSTRAINT pk_asignacion;
       public         postgres    false    198            ?           2606    25665    bien pk_bienes 
   CONSTRAINT     P   ALTER TABLE ONLY public.bien
    ADD CONSTRAINT pk_bienes PRIMARY KEY (idbien);
 8   ALTER TABLE ONLY public.bien DROP CONSTRAINT pk_bienes;
       public         postgres    false    200            ?           2606    25667    empresa pk_empresa 
   CONSTRAINT     W   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT pk_empresa PRIMARY KEY (idempresa);
 <   ALTER TABLE ONLY public.empresa DROP CONSTRAINT pk_empresa;
       public         postgres    false    204            ?           2606    25669    estado pk_estado 
   CONSTRAINT     T   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT pk_estado PRIMARY KEY (idestado);
 :   ALTER TABLE ONLY public.estado DROP CONSTRAINT pk_estado;
       public         postgres    false    206            ?           2606    25673    mantenimiento pk_mantenimiento 
   CONSTRAINT     i   ALTER TABLE ONLY public.mantenimiento
    ADD CONSTRAINT pk_mantenimiento PRIMARY KEY (idmantenimiento);
 H   ALTER TABLE ONLY public.mantenimiento DROP CONSTRAINT pk_mantenimiento;
       public         postgres    false    211            ?           2606    25675    cargo pk_tipo 
   CONSTRAINT     P   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT pk_tipo PRIMARY KEY (idcargo);
 7   ALTER TABLE ONLY public.cargo DROP CONSTRAINT pk_tipo;
       public         postgres    false    202            ?           2606    25677    ubicacion pk_ubicacion 
   CONSTRAINT     ]   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT pk_ubicacion PRIMARY KEY (idubicacion);
 @   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT pk_ubicacion;
       public         postgres    false    223            ?           2606    25679    usuario pk_usuario 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (idusuario);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT pk_usuario;
       public         postgres    false    227            ?           2606    36997    proveedor proveedor_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (idproveedor);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public         postgres    false    232            ?           2606    37004    revision revision_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.revision
    ADD CONSTRAINT revision_pkey PRIMARY KEY (idrevision);
 @   ALTER TABLE ONLY public.revision DROP CONSTRAINT revision_pkey;
       public         postgres    false    233            ?           2606    25681 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public         postgres    false    220    220            ?           2606    25683    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    221            ?           2606    25685    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    225            ?           2606    25687    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    225            ?           2606    36991    visita visita_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_pkey PRIMARY KEY (fecha, ip);
 <   ALTER TABLE ONLY public.visita DROP CONSTRAINT visita_pkey;
       public         postgres    false    231    231            ?           1259    25688 /   model_has_permissions_model_id_model_type_index    INDEX     ?   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public         postgres    false    215    215            ?           1259    25689 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public         postgres    false    216    216            ?           1259    25690    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    217            ?           2606    37010     activo activo_fkidproveedor_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.activo
    ADD CONSTRAINT activo_fkidproveedor_fkey FOREIGN KEY (fkidproveedor) REFERENCES public.proveedor(idproveedor) NOT VALID;
 J   ALTER TABLE ONLY public.activo DROP CONSTRAINT activo_fkidproveedor_fkey;
       public       postgres    false    3014    232    196            ?           2606    25691 #   asignacion asignacion_fkiduser_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asignacion
    ADD CONSTRAINT asignacion_fkiduser_fkey FOREIGN KEY (fkiduser) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.asignacion DROP CONSTRAINT asignacion_fkiduser_fkey;
       public       postgres    false    3008    198    225            ?           2606    25696    activo fk_activo_bien    FK CONSTRAINT     x   ALTER TABLE ONLY public.activo
    ADD CONSTRAINT fk_activo_bien FOREIGN KEY (fkidbien) REFERENCES public.bien(idbien);
 ?   ALTER TABLE ONLY public.activo DROP CONSTRAINT fk_activo_bien;
       public       postgres    false    200    196    2977            ?           2606    25701    activo fk_activo_estado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.activo
    ADD CONSTRAINT fk_activo_estado FOREIGN KEY (fkidestado) REFERENCES public.estado(idestado);
 A   ALTER TABLE ONLY public.activo DROP CONSTRAINT fk_activo_estado;
       public       postgres    false    196    206    2983            ?           2606    25706    activo fk_activo_ubicacion    FK CONSTRAINT     ?   ALTER TABLE ONLY public.activo
    ADD CONSTRAINT fk_activo_ubicacion FOREIGN KEY (fkidubicacion) REFERENCES public.ubicacion(idubicacion);
 D   ALTER TABLE ONLY public.activo DROP CONSTRAINT fk_activo_ubicacion;
       public       postgres    false    196    223    3004            ?           2606    25711    asignacion fk_asignacion_activo    FK CONSTRAINT     ?   ALTER TABLE ONLY public.asignacion
    ADD CONSTRAINT fk_asignacion_activo FOREIGN KEY (fkidactivo) REFERENCES public.activo(idactivo);
 I   ALTER TABLE ONLY public.asignacion DROP CONSTRAINT fk_asignacion_activo;
       public       postgres    false    198    196    2973            ?           2606    25721 %   mantenimiento fk_mantenimiento_activo    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mantenimiento
    ADD CONSTRAINT fk_mantenimiento_activo FOREIGN KEY (fkidactivo) REFERENCES public.activo(idactivo);
 O   ALTER TABLE ONLY public.mantenimiento DROP CONSTRAINT fk_mantenimiento_activo;
       public       postgres    false    211    196    2973            ?           2606    25726 &   mantenimiento fk_mantenimiento_empresa    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mantenimiento
    ADD CONSTRAINT fk_mantenimiento_empresa FOREIGN KEY (fkidempresa) REFERENCES public.empresa(idempresa);
 P   ALTER TABLE ONLY public.mantenimiento DROP CONSTRAINT fk_mantenimiento_empresa;
       public       postgres    false    211    2981    204            ?           2606    25731    usuario fk_usuario_cargo    FK CONSTRAINT     ~   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usuario_cargo FOREIGN KEY (fkidcargo) REFERENCES public.cargo(idcargo);
 B   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_usuario_cargo;
       public       postgres    false    202    2979    227            ?           2606    25736 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public       postgres    false    215    218    2998            ?           2606    25741 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public       postgres    false    216    221    3002            ?           2606    37005 !   revision revision_fkidactivo_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.revision
    ADD CONSTRAINT revision_fkidactivo_fkey FOREIGN KEY (fkidactivo) REFERENCES public.activo(idactivo);
 K   ALTER TABLE ONLY public.revision DROP CONSTRAINT revision_fkidactivo_fkey;
       public       postgres    false    2973    233    196            ?           2606    25746 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public       postgres    false    220    218    2998            ?           2606    25751 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public       postgres    false    3002    220    221            P   ?   x?uͱ?0????????3uc?``???b !??Q?.m?ǻ{fVEU??v??y-????????M??y/5c?gC'CX??B*1????=?KJݵ ??޵N????~?B#xG(?oDι	?G?yp???i??      R      x?3?4?4??????22?-A?=... =<1      T   ?  x?m?An?0E??)???m?d?1*Y????X(RR??? ]u??/??R?E??j?f???L??ZTz?wz_?~Y,o??:? ??jׅ??UP??B?P?]7????L?9??l"?>?s??C6????;b???A?#?AK??RiäJ??5Ժ??7?)d????? ?e?BM??R"ڟ??o?{;4? ?~????\$0??瑜0rm+^?@?80??Կ|?嶮6??v?[]???߅???x?"?^?1????ƚؘ?o?F'???^J????`?d?ܝ??yN??BMgˉ???(@kB4.?ξ???fQZZ???I?????:YN͍g??R??XQ???b%^FI'?Z??dq?6?Jo6S9?o??????\BG"6??ģOhvF?nʵ????O??d????`      V      x?????? ? ?      X   ?   x?]?M
?0?דSx?`̏u??^??B???4?IShO??¶?>x??h???n?q?}?!?? *	%Sknяnj???eii?&$?H?o??wO^ly}h?F??ō9_???/盛?'?|qu?>???hc????nA
?ZaW?h?9?1V??S?s????M~      Z   U   x?3?t?s?t*M?Sp-.IL??4?2????&? ??9??|9?R?S?3K|?JR?2s3S?J@?&@?N?|??H*P F??? ?V?      \      x?????? ? ?      _   X   x?3?420??54?52@0?8?L9?883??K9}?B??\?\?B<??9M????Vt???AA??H:͉Չa??:M?????? ??=?      a   w   x?U???0??k?0f?3໘???0????IDzѫ?䧆=?1??pW?E?2QC??$9??t??h??:@Ť???:??wX?a??i?c?w6^\;m???+???,?e?V????? zh:*      c      x?????? ? ?      d   ,   x?3?t,(??	-N-?4?2A??s??"?̸??x?\1z\\\ -??      e      x?????? ? ?      f   +  x???ݎ? ??㧘?Hϲ?*ӉV???j???_?6	??J???c??1U3?????s??????R?ʽ??F{k%????q?%Ru ???'???K?'ӌ?}????v?:~NwQkȫ.?j?Z??%??͵??>?=M???Q'??jK?b?\???'??:?U?oS?0?????t?????C[?{??D???Ě?|`?&?W??h??M2T??VK?m>???>??|????$1??)-??QY???ʲe??Jb??KZq??S?z?+Fq??ص?3??6ӝGAk;@Lv??t+?/???????????c~?I??D??$??$Z???{??-H7???y??j̖?	^?Ş??)???r?􂃁㨮tN?u?v?uQ_iͼ?5??i????'40????xf???b?ҢcV?[?0иj?~??}?/xd<?e?8??ȥy????C?P?????cH{???????^?????kZ???z?U?̾??o????8?Ы?[?????a?zX??^?e?L~?-~?+??|?-E}?7+?z``ts??Y??t??M???m/1??=??????+-1??*???Oc?Ā{!?3??P?#??y?}LB>1??|??;?p?????7E??h?6 0?j????????6C?????M??^?ߏ???y?u)<?`~?f??0?&MPr??ٹa??+???`"??m7	?>r?F??eI???!?J?k???>^??x?????_????Ā[m?C4??JZ?K!????P?0hq??`?K?$-??\}
???2?? ?x?      t   >   x?3?t?-(J-NT0?44C?T???Cznbf?^r~.?\?????????1L???=... ?0      u      x?????? ? ?      h     x?-??q1C?sTL&??u?K??#|?Ԭ??4???W?d?g???????????>?M?)???o????>???`+X?
v`qqqqD??ADAшF4?}C#???5??RSFM5ԔRk???tQ?(]?.J???E??D?}???P?"??f?,n?? ??{шF4??hD??b?b?b???.?,?*?(?(?D??Ƴ?/?C5v?n??a7??????_?a#l???qeQeQ????ϵ???X"      i   {   x?m?=?0?g?? U?Q?Up??]?ࡍ?F???VU???????K??i?KU?x??i??w!:ҩ???1??fQ^[UW?MY?5[??m1?W??U?`?ǒ?0??n???jL~?>/??V:?      k   \   x?Uν
?0???0b?:??P(??????ݎN??B???L?:1?z?n3??X??H??!W'?CQ?Y?᳀??ݕ@?2???_"????$o      m   W  x?}?Io?0???Wp??`c֞&%L??eQ/?b08Ò&??ISU3?d*=[??????ϔb\2??q???m????q??Bz???? ??[?v?L?C~\??]?k?-?5Q??.;?T???(???-???Io??bF?XtX?4?]?%|R*3?ehJ??름??6??
??Z?'??J5?$2?i?$s?pI?r,Ӟ!MDM?KKZI?uMڦ? ?巩?? ??1lIX$??ݴc;_??????`???l???s????/???_d?j?wx????ZK?n!K??? ?0??C	?+????5 ?G????'?[p??v??, U?0?ˌ);????0Z
?sWUD??FS??U?2???d5
?f?y?~sg@[=?????????CQM??:Ҩ#@f????.ͽܭ???{WS??]???W/??b??QJ@#??i?nV???V)???f??+!e???G|?|???'??併,j??S2wz?T?<?A???S????ah??Y?Ʀ1?!?^??????2?O??A??1[?7⽷???fN??>tA?????]??	?????E?aN;?j????^\bI7?[??FH#:2!?2B?J???ө&?      o      x?????? ? ?      s   $   x?320??54?5??442?3 BCNN?=... S?     