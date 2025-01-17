PGDMP  "    +            
    |            aerolin2024    16.4    16.4 =    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    17382    aerolin2024    DATABASE     ~   CREATE DATABASE aerolin2024 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE aerolin2024;
                postgres    false            �            1259    17384 	   aerolinea    TABLE     q   CREATE TABLE public.aerolinea (
    id_aerolinea integer NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.aerolinea;
       public         heap    postgres    false            �            1259    17383    aerolinea_id_aerolinea_seq    SEQUENCE     �   CREATE SEQUENCE public.aerolinea_id_aerolinea_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.aerolinea_id_aerolinea_seq;
       public          postgres    false    216            0           0    0    aerolinea_id_aerolinea_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.aerolinea_id_aerolinea_seq OWNED BY public.aerolinea.id_aerolinea;
          public          postgres    false    215            �            1259    17391    avion    TABLE     �   CREATE TABLE public.avion (
    id_avion integer NOT NULL,
    modelo character varying(50) NOT NULL,
    capacidad integer NOT NULL,
    id_aerolinea integer
);
    DROP TABLE public.avion;
       public         heap    postgres    false            �            1259    17390    avion_id_avion_seq    SEQUENCE     �   CREATE SEQUENCE public.avion_id_avion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.avion_id_avion_seq;
       public          postgres    false    218            1           0    0    avion_id_avion_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.avion_id_avion_seq OWNED BY public.avion.id_avion;
          public          postgres    false    217            �            1259    17459    factura    TABLE     �   CREATE TABLE public.factura (
    id_factura integer NOT NULL,
    fecha_factura timestamp without time zone NOT NULL,
    valor_factura numeric(10,2) NOT NULL,
    estado_factura character varying(50) NOT NULL,
    id_reserva integer
);
    DROP TABLE public.factura;
       public         heap    postgres    false            �            1259    17458    factura_id_factura_seq    SEQUENCE     �   CREATE SEQUENCE public.factura_id_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.factura_id_factura_seq;
       public          postgres    false    228            2           0    0    factura_id_factura_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.factura_id_factura_seq OWNED BY public.factura.id_factura;
          public          postgres    false    227            �            1259    17433    pasajero    TABLE     �   CREATE TABLE public.pasajero (
    id_pasajero integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    telefono character varying(20),
    email character varying(100)
);
    DROP TABLE public.pasajero;
       public         heap    postgres    false            �            1259    17432    pasajero_id_pasajero_seq    SEQUENCE     �   CREATE SEQUENCE public.pasajero_id_pasajero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pasajero_id_pasajero_seq;
       public          postgres    false    224            3           0    0    pasajero_id_pasajero_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pasajero_id_pasajero_seq OWNED BY public.pasajero.id_pasajero;
          public          postgres    false    223            �            1259    17442    reserva    TABLE     �   CREATE TABLE public.reserva (
    id_reserva integer NOT NULL,
    fecha_reserva timestamp without time zone NOT NULL,
    estado_reserva character varying(50) NOT NULL,
    id_pasajero integer,
    id_vuelo integer
);
    DROP TABLE public.reserva;
       public         heap    postgres    false            �            1259    17441    reserva_id_reserva_seq    SEQUENCE     �   CREATE SEQUENCE public.reserva_id_reserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.reserva_id_reserva_seq;
       public          postgres    false    226            4           0    0    reserva_id_reserva_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.reserva_id_reserva_seq OWNED BY public.reserva.id_reserva;
          public          postgres    false    225            �            1259    17420    tripulacion    TABLE       CREATE TABLE public.tripulacion (
    id_tripulacion integer NOT NULL,
    cargo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    es_piloto boolean DEFAULT false,
    id_vuelo integer
);
    DROP TABLE public.tripulacion;
       public         heap    postgres    false            �            1259    17419    tripulacion_id_tripulacion_seq    SEQUENCE     �   CREATE SEQUENCE public.tripulacion_id_tripulacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tripulacion_id_tripulacion_seq;
       public          postgres    false    222            5           0    0    tripulacion_id_tripulacion_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tripulacion_id_tripulacion_seq OWNED BY public.tripulacion.id_tripulacion;
          public          postgres    false    221            �            1259    17403    vuelo    TABLE     ?  CREATE TABLE public.vuelo (
    id_vuelo integer NOT NULL,
    id_avion integer,
    id_aerolinea integer,
    fecha_hora_salida timestamp without time zone NOT NULL,
    fecha_hora_llegada timestamp without time zone NOT NULL,
    origen character varying(100) NOT NULL,
    destino character varying(100) NOT NULL
);
    DROP TABLE public.vuelo;
       public         heap    postgres    false            �            1259    17402    vuelo_id_vuelo_seq    SEQUENCE     �   CREATE SEQUENCE public.vuelo_id_vuelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.vuelo_id_vuelo_seq;
       public          postgres    false    220            6           0    0    vuelo_id_vuelo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.vuelo_id_vuelo_seq OWNED BY public.vuelo.id_vuelo;
          public          postgres    false    219            n           2604    17387    aerolinea id_aerolinea    DEFAULT     �   ALTER TABLE ONLY public.aerolinea ALTER COLUMN id_aerolinea SET DEFAULT nextval('public.aerolinea_id_aerolinea_seq'::regclass);
 E   ALTER TABLE public.aerolinea ALTER COLUMN id_aerolinea DROP DEFAULT;
       public          postgres    false    215    216    216            o           2604    17394    avion id_avion    DEFAULT     p   ALTER TABLE ONLY public.avion ALTER COLUMN id_avion SET DEFAULT nextval('public.avion_id_avion_seq'::regclass);
 =   ALTER TABLE public.avion ALTER COLUMN id_avion DROP DEFAULT;
       public          postgres    false    217    218    218            u           2604    17462    factura id_factura    DEFAULT     x   ALTER TABLE ONLY public.factura ALTER COLUMN id_factura SET DEFAULT nextval('public.factura_id_factura_seq'::regclass);
 A   ALTER TABLE public.factura ALTER COLUMN id_factura DROP DEFAULT;
       public          postgres    false    228    227    228            s           2604    17436    pasajero id_pasajero    DEFAULT     |   ALTER TABLE ONLY public.pasajero ALTER COLUMN id_pasajero SET DEFAULT nextval('public.pasajero_id_pasajero_seq'::regclass);
 C   ALTER TABLE public.pasajero ALTER COLUMN id_pasajero DROP DEFAULT;
       public          postgres    false    224    223    224            t           2604    17445    reserva id_reserva    DEFAULT     x   ALTER TABLE ONLY public.reserva ALTER COLUMN id_reserva SET DEFAULT nextval('public.reserva_id_reserva_seq'::regclass);
 A   ALTER TABLE public.reserva ALTER COLUMN id_reserva DROP DEFAULT;
       public          postgres    false    225    226    226            q           2604    17423    tripulacion id_tripulacion    DEFAULT     �   ALTER TABLE ONLY public.tripulacion ALTER COLUMN id_tripulacion SET DEFAULT nextval('public.tripulacion_id_tripulacion_seq'::regclass);
 I   ALTER TABLE public.tripulacion ALTER COLUMN id_tripulacion DROP DEFAULT;
       public          postgres    false    222    221    222            p           2604    17406    vuelo id_vuelo    DEFAULT     p   ALTER TABLE ONLY public.vuelo ALTER COLUMN id_vuelo SET DEFAULT nextval('public.vuelo_id_vuelo_seq'::regclass);
 =   ALTER TABLE public.vuelo ALTER COLUMN id_vuelo DROP DEFAULT;
       public          postgres    false    219    220    220                      0    17384 	   aerolinea 
   TABLE DATA           9   COPY public.aerolinea (id_aerolinea, nombre) FROM stdin;
    public          postgres    false    216   5H                 0    17391    avion 
   TABLE DATA           J   COPY public.avion (id_avion, modelo, capacidad, id_aerolinea) FROM stdin;
    public          postgres    false    218   fH       )          0    17459    factura 
   TABLE DATA           g   COPY public.factura (id_factura, fecha_factura, valor_factura, estado_factura, id_reserva) FROM stdin;
    public          postgres    false    228   �H       %          0    17433    pasajero 
   TABLE DATA           R   COPY public.pasajero (id_pasajero, nombre, apellido, telefono, email) FROM stdin;
    public          postgres    false    224   �H       '          0    17442    reserva 
   TABLE DATA           c   COPY public.reserva (id_reserva, fecha_reserva, estado_reserva, id_pasajero, id_vuelo) FROM stdin;
    public          postgres    false    226   tI       #          0    17420    tripulacion 
   TABLE DATA           c   COPY public.tripulacion (id_tripulacion, cargo, nombre, apellido, es_piloto, id_vuelo) FROM stdin;
    public          postgres    false    222   �I       !          0    17403    vuelo 
   TABLE DATA           y   COPY public.vuelo (id_vuelo, id_avion, id_aerolinea, fecha_hora_salida, fecha_hora_llegada, origen, destino) FROM stdin;
    public          postgres    false    220   ;J       7           0    0    aerolinea_id_aerolinea_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.aerolinea_id_aerolinea_seq', 2, true);
          public          postgres    false    215            8           0    0    avion_id_avion_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.avion_id_avion_seq', 2, true);
          public          postgres    false    217            9           0    0    factura_id_factura_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.factura_id_factura_seq', 2, true);
          public          postgres    false    227            :           0    0    pasajero_id_pasajero_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pasajero_id_pasajero_seq', 2, true);
          public          postgres    false    223            ;           0    0    reserva_id_reserva_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.reserva_id_reserva_seq', 2, true);
          public          postgres    false    225            <           0    0    tripulacion_id_tripulacion_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.tripulacion_id_tripulacion_seq', 4, true);
          public          postgres    false    221            =           0    0    vuelo_id_vuelo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.vuelo_id_vuelo_seq', 2, true);
          public          postgres    false    219            w           2606    17389    aerolinea aerolinea_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.aerolinea
    ADD CONSTRAINT aerolinea_pkey PRIMARY KEY (id_aerolinea);
 B   ALTER TABLE ONLY public.aerolinea DROP CONSTRAINT aerolinea_pkey;
       public            postgres    false    216            y           2606    17396    avion avion_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT avion_pkey PRIMARY KEY (id_avion);
 :   ALTER TABLE ONLY public.avion DROP CONSTRAINT avion_pkey;
       public            postgres    false    218            �           2606    17464    factura factura_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (id_factura);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    228                       2606    17438    pasajero pasajero_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pasajero
    ADD CONSTRAINT pasajero_pkey PRIMARY KEY (id_pasajero);
 @   ALTER TABLE ONLY public.pasajero DROP CONSTRAINT pasajero_pkey;
       public            postgres    false    224            �           2606    17447    reserva reserva_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id_reserva);
 >   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_pkey;
       public            postgres    false    226            }           2606    17426    tripulacion tripulacion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tripulacion
    ADD CONSTRAINT tripulacion_pkey PRIMARY KEY (id_tripulacion);
 F   ALTER TABLE ONLY public.tripulacion DROP CONSTRAINT tripulacion_pkey;
       public            postgres    false    222            �           2606    17440    pasajero unique_email 
   CONSTRAINT     Q   ALTER TABLE ONLY public.pasajero
    ADD CONSTRAINT unique_email UNIQUE (email);
 ?   ALTER TABLE ONLY public.pasajero DROP CONSTRAINT unique_email;
       public            postgres    false    224            {           2606    17408    vuelo vuelo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT vuelo_pkey PRIMARY KEY (id_vuelo);
 :   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT vuelo_pkey;
       public            postgres    false    220            �           2606    17397    avion avion_id_aerolinea_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.avion
    ADD CONSTRAINT avion_id_aerolinea_fkey FOREIGN KEY (id_aerolinea) REFERENCES public.aerolinea(id_aerolinea);
 G   ALTER TABLE ONLY public.avion DROP CONSTRAINT avion_id_aerolinea_fkey;
       public          postgres    false    216    218    4727            �           2606    17465    factura factura_id_reserva_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_reserva_fkey FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva);
 I   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_id_reserva_fkey;
       public          postgres    false    4739    228    226            �           2606    17448     reserva reserva_id_pasajero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_id_pasajero_fkey FOREIGN KEY (id_pasajero) REFERENCES public.pasajero(id_pasajero);
 J   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_id_pasajero_fkey;
       public          postgres    false    224    4735    226            �           2606    17453    reserva reserva_id_vuelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id_vuelo);
 G   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_id_vuelo_fkey;
       public          postgres    false    226    4731    220            �           2606    17427 %   tripulacion tripulacion_id_vuelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tripulacion
    ADD CONSTRAINT tripulacion_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id_vuelo);
 O   ALTER TABLE ONLY public.tripulacion DROP CONSTRAINT tripulacion_id_vuelo_fkey;
       public          postgres    false    220    4731    222            �           2606    17414    vuelo vuelo_id_aerolinea_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT vuelo_id_aerolinea_fkey FOREIGN KEY (id_aerolinea) REFERENCES public.aerolinea(id_aerolinea);
 G   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT vuelo_id_aerolinea_fkey;
       public          postgres    false    4727    216    220            �           2606    17409    vuelo vuelo_id_avion_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT vuelo_id_avion_fkey FOREIGN KEY (id_avion) REFERENCES public.avion(id_avion);
 C   ALTER TABLE ONLY public.vuelo DROP CONSTRAINT vuelo_id_avion_fkey;
       public          postgres    false    220    218    4729               !   x�3�tL-��9�0/5Q���������� �Y	         2   x�3�t�O��KW076�4�0�4�2�t�,J*-Vp462�42 b�=... �K	U      )   E   x�3�4202�54�5�T04�20 "Nc= ������i�e�������*5/%35�$�ӈ+F��� ��:      %   g   x�3��)�,��M,*9�0/����������3(�����;�V$���%��rq�Z����{haP���������!gq~Zf�^Qbnf��=... h�%�      '   ?   x�3�4202�54�5�T04�2 !N����̢�ĔDNCNC.#E�0E�yɩ9 5@y�=... ���      #   h   x�3����/���*M��x�0�(����Ӑˈ�9� "�X��_��X�|ha"gP���1/�3$��(��ˈ˄ӱ*1-�$��7���'� h`P*F��� �#      !   X   x�3�4B##]C#]C+ B34��9��Z�雚���sha�'��)������tN��E%��y�\1z\\\ /T     