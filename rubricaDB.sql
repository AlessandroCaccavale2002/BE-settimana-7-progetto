PGDMP     /    $                 z            rubricaTelefono    13.5    13.5     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16411    rubricaTelefono    DATABASE     m   CREATE DATABASE "rubricaTelefono" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
 !   DROP DATABASE "rubricaTelefono";
                postgres    false            ?            1259    16417    contatto    TABLE     ?   CREATE TABLE public.contatto (
    id integer NOT NULL,
    cognome character varying(255),
    email character varying(255),
    nome character varying(255)
);
    DROP TABLE public.contatto;
       public         heap    postgres    false            ?            1259    16412    numero    TABLE     m   CREATE TABLE public.numero (
    numero_telefono character varying(255) NOT NULL,
    id_contatto integer
);
    DROP TABLE public.numero;
       public         heap    postgres    false            ?            1259    16430    sequence    TABLE     k   CREATE TABLE public.sequence (
    seq_name character varying(50) NOT NULL,
    seq_count numeric(38,0)
);
    DROP TABLE public.sequence;
       public         heap    postgres    false            ?          0    16417    contatto 
   TABLE DATA           <   COPY public.contatto (id, cognome, email, nome) FROM stdin;
    public          postgres    false    201          ?          0    16412    numero 
   TABLE DATA           >   COPY public.numero (numero_telefono, id_contatto) FROM stdin;
    public          postgres    false    200   x       ?          0    16430    sequence 
   TABLE DATA           7   COPY public.sequence (seq_name, seq_count) FROM stdin;
    public          postgres    false    202   ?       ,           2606    16424    contatto contatto_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contatto
    ADD CONSTRAINT contatto_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contatto DROP CONSTRAINT contatto_pkey;
       public            postgres    false    201            *           2606    16416    numero numero_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.numero
    ADD CONSTRAINT numero_pkey PRIMARY KEY (numero_telefono);
 <   ALTER TABLE ONLY public.numero DROP CONSTRAINT numero_pkey;
       public            postgres    false    200            .           2606    16434    sequence sequence_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sequence
    ADD CONSTRAINT sequence_pkey PRIMARY KEY (seq_name);
 @   ALTER TABLE ONLY public.sequence DROP CONSTRAINT sequence_pkey;
       public            postgres    false    202            /           2606    16425    numero fk_numero_id_contatto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.numero
    ADD CONSTRAINT fk_numero_id_contatto FOREIGN KEY (id_contatto) REFERENCES public.contatto(id);
 F   ALTER TABLE ONLY public.numero DROP CONSTRAINT fk_numero_id_contatto;
       public          postgres    false    200    201    2860            ?   Y   x?3?,?/.???M,??3r2?R???2K ?\???~@΀?Ԓ?|?!=713G/9?*?eh`???????S??f!??????? v%       ?   J   x?%???@?7??K??#?F????H7F?6,܌T?LX?4Z??????z?5%y?????????      ?      x?v?ww??445?????? &t     