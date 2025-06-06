PGDMP     &    +                z            nordwind    13.7    13.3 L    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16511    nordwind    DATABASE     ]   CREATE DATABASE nordwind WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE nordwind;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �           0    0    SCHEMA public    ACL     R   REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT USAGE ON SCHEMA public TO student;
                   postgres    false    3            �            1259    16512 
   categories    TABLE     �   CREATE TABLE public.categories (
    category_id smallint NOT NULL,
    category_name character varying(15) NOT NULL,
    description text,
    picture bytea
);
    DROP TABLE public.categories;
       public         heap    postgres    false    3            �           0    0    TABLE categories    ACL     4   GRANT SELECT ON TABLE public.categories TO student;
          public          postgres    false    200            �            1259    16536    customer_customer_demo    TABLE     v   CREATE TABLE public.customer_customer_demo (
    customer_id bpchar NOT NULL,
    customer_type_id bpchar NOT NULL
);
 *   DROP TABLE public.customer_customer_demo;
       public         heap    postgres    false    3            �           0    0    TABLE customer_customer_demo    ACL     @   GRANT SELECT ON TABLE public.customer_customer_demo TO student;
          public          postgres    false    203            �            1259    16520    customer_demographics    TABLE     l   CREATE TABLE public.customer_demographics (
    customer_type_id bpchar NOT NULL,
    customer_desc text
);
 )   DROP TABLE public.customer_demographics;
       public         heap    postgres    false    3            �           0    0    TABLE customer_demographics    ACL     ?   GRANT SELECT ON TABLE public.customer_demographics TO student;
          public          postgres    false    201            �            1259    16528 	   customers    TABLE     �  CREATE TABLE public.customers (
    customer_id bpchar NOT NULL,
    company_name character varying(40) NOT NULL,
    contact_name character varying(30),
    contact_title character varying(30),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    phone character varying(24),
    fax character varying(24)
);
    DROP TABLE public.customers;
       public         heap    postgres    false    3            �           0    0    TABLE customers    ACL     3   GRANT SELECT ON TABLE public.customers TO student;
          public          postgres    false    202            �            1259    16639    employee_territories    TABLE     �   CREATE TABLE public.employee_territories (
    employee_id smallint NOT NULL,
    territory_id character varying(20) NOT NULL
);
 (   DROP TABLE public.employee_territories;
       public         heap    postgres    false    3            �           0    0    TABLE employee_territories    ACL     >   GRANT SELECT ON TABLE public.employee_territories TO student;
          public          postgres    false    211            �            1259    16554 	   employees    TABLE     s  CREATE TABLE public.employees (
    employee_id smallint NOT NULL,
    last_name character varying(20) NOT NULL,
    first_name character varying(10) NOT NULL,
    title character varying(30),
    title_of_courtesy character varying(25),
    birth_date date,
    hire_date date,
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    home_phone character varying(24),
    extension character varying(4),
    photo bytea,
    notes text,
    reports_to smallint,
    photo_path character varying(255)
);
    DROP TABLE public.employees;
       public         heap    postgres    false    3            �           0    0    TABLE employees    ACL     3   GRANT SELECT ON TABLE public.employees TO student;
          public          postgres    false    204            �            1259    16654    order_details    TABLE     �   CREATE TABLE public.order_details (
    order_id smallint NOT NULL,
    product_id smallint NOT NULL,
    unit_price real NOT NULL,
    quantity smallint NOT NULL,
    discount real NOT NULL
);
 !   DROP TABLE public.order_details;
       public         heap    postgres    false    3                        0    0    TABLE order_details    ACL     7   GRANT SELECT ON TABLE public.order_details TO student;
          public          postgres    false    212            �            1259    16603    orders    TABLE     �  CREATE TABLE public.orders (
    order_id smallint NOT NULL,
    customer_id bpchar,
    employee_id smallint,
    order_date date,
    required_date date,
    shipped_date date,
    ship_via smallint,
    freight real,
    ship_name character varying(40),
    ship_address character varying(60),
    ship_city character varying(15),
    ship_region character varying(15),
    ship_postal_code character varying(10),
    ship_country character varying(15)
);
    DROP TABLE public.orders;
       public         heap    postgres    false    3                       0    0    TABLE orders    ACL     0   GRANT SELECT ON TABLE public.orders TO student;
          public          postgres    false    209            �            1259    16575    products    TABLE     c  CREATE TABLE public.products (
    product_id smallint NOT NULL,
    product_name character varying(40) NOT NULL,
    supplier_id smallint,
    category_id smallint,
    quantity_per_unit character varying(20),
    unit_price real,
    units_in_stock smallint,
    units_on_order smallint,
    reorder_level smallint,
    discontinued integer NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false    3                       0    0    TABLE products    ACL     2   GRANT SELECT ON TABLE public.products TO student;
          public          postgres    false    206            �            1259    16590    region    TABLE     h   CREATE TABLE public.region (
    region_id smallint NOT NULL,
    region_description bpchar NOT NULL
);
    DROP TABLE public.region;
       public         heap    postgres    false    3                       0    0    TABLE region    ACL     0   GRANT SELECT ON TABLE public.region TO student;
          public          postgres    false    207            �            1259    16598    shippers    TABLE     �   CREATE TABLE public.shippers (
    shipper_id smallint NOT NULL,
    company_name character varying(40) NOT NULL,
    phone character varying(24)
);
    DROP TABLE public.shippers;
       public         heap    postgres    false    3                       0    0    TABLE shippers    ACL     2   GRANT SELECT ON TABLE public.shippers TO student;
          public          postgres    false    208            �            1259    16567 	   suppliers    TABLE     �  CREATE TABLE public.suppliers (
    supplier_id smallint NOT NULL,
    company_name character varying(40) NOT NULL,
    contact_name character varying(30),
    contact_title character varying(30),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    phone character varying(24),
    fax character varying(24),
    homepage text
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false    3                       0    0    TABLE suppliers    ACL     3   GRANT SELECT ON TABLE public.suppliers TO student;
          public          postgres    false    205            �            1259    16626    territories    TABLE     �   CREATE TABLE public.territories (
    territory_id character varying(20) NOT NULL,
    territory_description bpchar NOT NULL,
    region_id smallint NOT NULL
);
    DROP TABLE public.territories;
       public         heap    postgres    false    3                       0    0    TABLE territories    ACL     5   GRANT SELECT ON TABLE public.territories TO student;
          public          postgres    false    210            �            1259    16669 	   us_states    TABLE     �   CREATE TABLE public.us_states (
    state_id smallint NOT NULL,
    state_name character varying(100),
    state_abbr character varying(2),
    state_region character varying(50)
);
    DROP TABLE public.us_states;
       public         heap    postgres    false    3                       0    0    TABLE us_states    ACL     3   GRANT SELECT ON TABLE public.us_states TO student;
          public          postgres    false    213            �          0    16512 
   categories 
   TABLE DATA                 public          postgres    false    200   <X       �          0    16536    customer_customer_demo 
   TABLE DATA                 public          postgres    false    203   �Y       �          0    16520    customer_demographics 
   TABLE DATA                 public          postgres    false    201   �Y       �          0    16528 	   customers 
   TABLE DATA                 public          postgres    false    202   �Y       �          0    16639    employee_territories 
   TABLE DATA                 public          postgres    false    211   �r       �          0    16554 	   employees 
   TABLE DATA                 public          postgres    false    204   >t       �          0    16654    order_details 
   TABLE DATA                 public          postgres    false    212   p{       �          0    16603    orders 
   TABLE DATA                 public          postgres    false    209   ��       �          0    16575    products 
   TABLE DATA                 public          postgres    false    206   �      �          0    16590    region 
   TABLE DATA                 public          postgres    false    207         �          0    16598    shippers 
   TABLE DATA                 public          postgres    false    208   {      �          0    16567 	   suppliers 
   TABLE DATA                 public          postgres    false    205   M      �          0    16626    territories 
   TABLE DATA                 public          postgres    false    210   �      �          0    16669 	   us_states 
   TABLE DATA                 public          postgres    false    213   �      :           2606    16519    categories categories_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    200            @           2606    16543 2   customer_customer_demo customer_customer_demo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_customer_demo
    ADD CONSTRAINT customer_customer_demo_pkey PRIMARY KEY (customer_id, customer_type_id);
 \   ALTER TABLE ONLY public.customer_customer_demo DROP CONSTRAINT customer_customer_demo_pkey;
       public            postgres    false    203    203            <           2606    16527 0   customer_demographics customer_demographics_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.customer_demographics
    ADD CONSTRAINT customer_demographics_pkey PRIMARY KEY (customer_type_id);
 Z   ALTER TABLE ONLY public.customer_demographics DROP CONSTRAINT customer_demographics_pkey;
       public            postgres    false    201            >           2606    16535    customers customers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    202            P           2606    16643 .   employee_territories employee_territories_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.employee_territories
    ADD CONSTRAINT employee_territories_pkey PRIMARY KEY (employee_id, territory_id);
 X   ALTER TABLE ONLY public.employee_territories DROP CONSTRAINT employee_territories_pkey;
       public            postgres    false    211    211            B           2606    16561    employees employees_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    204            R           2606    16658     order_details order_details_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (order_id, product_id);
 J   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_pkey;
       public            postgres    false    212    212            L           2606    16610    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    209            F           2606    16579    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    206            H           2606    16597    region region_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (region_id);
 <   ALTER TABLE ONLY public.region DROP CONSTRAINT region_pkey;
       public            postgres    false    207            J           2606    16602    shippers shippers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT shippers_pkey PRIMARY KEY (shipper_id);
 @   ALTER TABLE ONLY public.shippers DROP CONSTRAINT shippers_pkey;
       public            postgres    false    208            D           2606    16574    suppliers suppliers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplier_id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    205            N           2606    16633    territories territories_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.territories
    ADD CONSTRAINT territories_pkey PRIMARY KEY (territory_id);
 F   ALTER TABLE ONLY public.territories DROP CONSTRAINT territories_pkey;
       public            postgres    false    210            T           2606    16673    us_states us_states_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.us_states
    ADD CONSTRAINT us_states_pkey PRIMARY KEY (state_id);
 B   ALTER TABLE ONLY public.us_states DROP CONSTRAINT us_states_pkey;
       public            postgres    false    213            V           2606    16549 >   customer_customer_demo customer_customer_demo_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_customer_demo
    ADD CONSTRAINT customer_customer_demo_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);
 h   ALTER TABLE ONLY public.customer_customer_demo DROP CONSTRAINT customer_customer_demo_customer_id_fkey;
       public          postgres    false    3646    203    202            U           2606    16544 C   customer_customer_demo customer_customer_demo_customer_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_customer_demo
    ADD CONSTRAINT customer_customer_demo_customer_type_id_fkey FOREIGN KEY (customer_type_id) REFERENCES public.customer_demographics(customer_type_id);
 m   ALTER TABLE ONLY public.customer_customer_demo DROP CONSTRAINT customer_customer_demo_customer_type_id_fkey;
       public          postgres    false    201    3644    203            _           2606    16649 :   employee_territories employee_territories_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_territories
    ADD CONSTRAINT employee_territories_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);
 d   ALTER TABLE ONLY public.employee_territories DROP CONSTRAINT employee_territories_employee_id_fkey;
       public          postgres    false    3650    211    204            ^           2606    16644 ;   employee_territories employee_territories_territory_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_territories
    ADD CONSTRAINT employee_territories_territory_id_fkey FOREIGN KEY (territory_id) REFERENCES public.territories(territory_id);
 e   ALTER TABLE ONLY public.employee_territories DROP CONSTRAINT employee_territories_territory_id_fkey;
       public          postgres    false    210    211    3662            W           2606    16562 #   employees employees_reports_to_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_reports_to_fkey FOREIGN KEY (reports_to) REFERENCES public.employees(employee_id);
 M   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_reports_to_fkey;
       public          postgres    false    3650    204    204            a           2606    16664 )   order_details order_details_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id);
 S   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_order_id_fkey;
       public          postgres    false    3660    209    212            `           2606    16659 +   order_details order_details_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 U   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_product_id_fkey;
       public          postgres    false    3654    206    212            Z           2606    16611    orders orders_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);
 H   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_customer_id_fkey;
       public          postgres    false    3646    209    202            [           2606    16616    orders orders_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);
 H   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_employee_id_fkey;
       public          postgres    false    3650    204    209            \           2606    16621    orders orders_ship_via_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_ship_via_fkey FOREIGN KEY (ship_via) REFERENCES public.shippers(shipper_id);
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_ship_via_fkey;
       public          postgres    false    209    208    3658            X           2606    16580 "   products products_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(category_id);
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_category_id_fkey;
       public          postgres    false    3642    200    206            Y           2606    16585 "   products products_supplier_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(supplier_id);
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_supplier_id_fkey;
       public          postgres    false    3652    205    206            ]           2606    16634 &   territories territories_region_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.territories
    ADD CONSTRAINT territories_region_id_fkey FOREIGN KEY (region_id) REFERENCES public.region(region_id);
 P   ALTER TABLE ONLY public.territories DROP CONSTRAINT territories_region_id_fkey;
       public          postgres    false    3656    210    207            �   4  x��R�N�0��+|+Ho$N4T���N\6�������)��Y;E\�%�ȳ3���͗ӷ���W��i���3Mk�A}<<�O���|�����F���WQ�nFJ���� �� �A�(�;�����~0��օ�����N���/���A�V'=Fm�&U�a�9���u��ڗ�v�w��!�cS�-~5��2��U�J�de�{��n�b#���Z�OLօq�Sg��1ͤ�y�H�w�q}�n���o�ȇԿ`4�0j'���f�� r�riTŭ�]���-���w�̀*�s���,�9+y/t���!��      �   
   x���          �   
   x���          �      x��\[o+Ǒ~��h ����rf�O#��x�[HJ���$��mg�PG|���������@�}Z����{�^��I`��&9������{��pLڽq���I���i��ъ�	y�;�������>��>�+?��YBn�4e�')�]sJ�p�o��,!C��Y��|#?ן���Q׉툉k<ī�c���n�'޸c񊆯�fj5Ms,��KÆm�W���7��S�珇R���q��ȃ "�՚B:��J,�N?%�~	Y,���h��	(iFa��4���o!1�?��/��4"7���A/�֔�]&�����#�m�,���cө�ظ�S"�Q�#ҍbFdL�X�����w�P���� �������i��z���Ǳ�-��pF�#�Q,L�j��V4!�4���gM���Ca�a1�$d��D�,*�ӳ��f �z|�2뎮�v�=�i8���+�ލr��!!IH'����k1�\�pK*> >�j��!ލi��3�M���<g!!R�N��t�<�%��F/l��bi���t��iاNu:��R'��XP�����,I�oa��N7��u��(,�߽�w�㫃.���~ހ��k5���3�*:�{��%�Y���o���O<�r�ƻ/�ݗ��CH���f�s[2l؜@^:W�aX�:�SF�ݗ����de񼤑�i�z<�r!\����]7��QA�~�}#U���Y�Y����x�˞�~�(Z���{o���1Ѐ�A��b>;�n��k��T��շ�r	Xq��O'�WE����$
	]����i�H�E��	_��H`��@bl6�\G�t��0 2+�S���E���a�-�ni�C����qW	���M4&�@�,��o鄥���4
��t
,;� ���B���`3�@���?ӔS�-q���3|}&��ۆf�ĉ�L�Hq=�n=�_����2�&D��<�)pHD�d����]���1@�x�����K��j��/�n蕣E�o���L�,98<��"6T.���1�"Ѝ�j�Hyr5|�j*�☧1Mi��"��\�¬4]S�I|�4���]�vyl��~��޸�	�8"S���� �:M�6[ѽ=�Q�	���	O#}�`$w�4x�g�ƍ7¸��1�ͬ��}0Rq/Zג��<<����y�5�{�=�֩�ʴK6djz�x�O�*�j�m�r�WՌ�ݮ��� a)]��c�6Æ��@뢒�$I��Q<�߀��^:Yj�@r��L�ő<�c�i����ny�̦�˩�@ot�����k��`'�tG/%8wd���ا;-&��b/,~�ȥ���F�OF%�3�^%J����r71އ� K���h ��i���*�L���/lN���j؆�8���az��M5�=�p+���UL�&#+A?��e�i;#:����@�9D�&�h�2�Y`sO�K�dYg<����z�m>����K��G
�ZT��Pd7!��\���؏�EH5m� `�E��˖c����%���9�1M�촆�G�bdc"�1�g�H �bBI]��D��\a��>z��-b ~�Q�t� �L˰˃���z�w۾
�+�p��Mh0�T��T3ζ�h �yS��Ì�~������2�X S{x<׮<���H�.^�[2�R҆m�����.�Fu_���Fj�/3#0Sd�4��xK�N���evjJRt�N=�X�ь��`=�`�wR-�)�cN�&�'��m�p���G���ty K����d�G��Kw8&��w���F]��8����uY�h� �v?���\�V:gE{���i�ԓB'bX�`v?O�%qG5ײ�̡�v6<a��W0[͚�~�X�%AE�<�,���o�U6�M���	����P�j�f�B��!�tS�w1��
���x�A���"��Z6�ܰ��t��i������Ri _	��Q7�����
�!�h���׮s��( 	�����cO\TD���x�4�1�Yb*Qi�A;��� ]�Y��y��Vـ�a[�m&��Ni �#��� hH��*'@~&p�2���b ���WD$q��oX'���/#ͧ%m �r��:ٜ��1m�f�jJ�
�ٝ�iIt�D�D�hF+��YQ��P�Y�oZ֐�&�xiµ�l�?�`��4�� 
KZ�K��a��Ĳ�.�'*��]��/�.��	&-*��_׈r�#�%Q��6f�1��C�C���Qyۈm �%,�v���c���0*A�]�q�Q�#$��	O�B���hC�[�p�Ty#]@ ND�1YA�j�5HJ��r�F�Q��R����-_I3*d_B��(��5��}�c"��uV��/տӀ!Hj�aO�X���cirWG����<�Q�rE��#�X�����a�aq�f�����ѣhf��/�߰:���4�_������/one��\i3OPg�g�<߀��f��l�<Fz\!��=_jF�h ?��=�@�9��.r#A�f����u�!��F2Q��Ï9����N,�(8���G�hh�ow|���Ű����	p)*�T��=R��_��%�=��p�b*���(T;�?`��Y�p�;�f��)�BD}��DA�x�D+��E�x��҅n���~'���c�N�B�Y8�_[�k�ր}2B��jQ��فvy��M�y��0��a�Rb�l6�0�Q�\�V�P��\t���X�3��THA�j��j����AP���"��DӼؚ���,�B8�|�H���M%�kF�R���^� ݎYQ�1<0G[a�|m���W��u|Y�h'2��T�@�f,�V���^��A��_3�^�v百*�_�o��D�ȳX�,}S'�@�]��zn�U�̿+��C��k��<���9>� ���1X K\C:zd`GХل���	�0�N���<$4x
6*	���N;~\#��+:A�_��r@�8
y�.��p�P@Hp��GkE0ER 2�v�3>lju۫�V]��|h��
4��w�v�Њr�HB#?�*�KK4=T�<�'���~��)�u�8�o��"��T@�q�BC�;N�
�a%ﮕ
�|!��x���.6���	Fr���8�[�={�Q�AG�J�tY�ԓ���&O�$B>���x����Y�K���jE����J��+y "R��,�#��=]7H?F^(J�d,��j՟)��ȿr(���̆q��^.����g�Qe�Z�]I�;lI�R���,�K�.K���pҥs��PT8���2�&Z�J��6�S�o �5,�s��PD�
��G�&�8J�f�I���<��H��p��{r�:`=��&2�8�݇��q�4$�`�G1���`n{fe�퀺(��6��XO�����.
����üQ���]b0�Q��uCc�(��"R$�-s�p$\?e<����2eE`L[]ؖi굆g[�c��|����(m{����OE]��-�k��-�b�촿
����U��8�+�H��j:����R�^�6�jMc5�D^;�	�Ѵjv���s�g�*AA�ג�RIX�7�@����A�
 ���쯴}�'�(��)��|Fd�/)��{	�g;��Lê�5]�N�i��pc��ۀ#K�,��rǣ`s��}��%�D!��͢�8����)n,�J�T�1��j�	 �4CU���
���9�Q���y�^�bQTp*�I�����A�c����v-�lUu�����8�_�t]��5W�Vr4��i:1����L��m�que��@�A%�1	P,	�x�xi��|S�~"Ӌw_T�L4�L��{�#ћ�I��<P�Z� �
Y[�?�{P�/N�ա�K�p��)��ς,��e�5�#��Y�ϣ���z�K�R�t�mO�B����^8�h���Gn��$�U��zɠʌX~:'�&�2�'1�]>�=;D� ���ELU�J��Y���o�|y$؟� �4@��
O��3*����8i��in'^��ur���MT|���k��V���2��~EkC��e�s�,s�~0#ψ3�5yRoB���nϘ��y�Z���z�hQ�����Y���9E�ɵ�g׭�S�q[�D?M�<
z������ 	  ��1�Y���y3[���-b1�����"���|�9晗�ͭaY�����i�Nr9��m�0D��$���S��ݗ}͉��M�"������f#ʁ��c��������7d2a8�Q7��a�թ�єS�b6h�2����L�.�)�&�y��.9a�� Z_Ws���6� BҤɂ��o�Ș;]�qU���X�v�)f�A.�����,G�ăG�ˎR.X0����V���8Ƿ5����a7���QT�\�a�'��s�J�	���<�p�9!O��{[�)��$t�|'�T���-��(���AKDR�T�(xlݴT �m��_�j�Dˑ<S����b��Td)�A�?q�9��Q�fa�0]��pN[��:�e���D��v(���J1ѱ:��tv��;d+,�w"�~�Ğ����#�Q򁸪b|���uj��]8� O��N�)�W����R��h$&H��)�����i��̈�v�,d/4���.�nj�EqD���W/��^S����˲�\&�n��]���d�l(��t��,��x��W�yܙ��2��?V@C���6�K���+(�*�������>�:m���]�!]�"9�Ul&����%͓Ͷ��+�I�!���g�F���a�N�l>�p`VL�q�Ve1ߪ�Q�^y�+xbdZ���06�2!�*n�����^Y�Y�ev���7Y��
���`i��� 㴸�"0,�*���ٳ"l���N�N��ON�$��ީ��eZ��z���1Wf!�GTeF��ƈ�"x�}\>��C���}����<��mS�7���i#��Ȑ���ɰ�m}/喧����e!�U?�'b��+��v��I��Ue�g�Og��Xm���N&�
1�{�;��!H"�O��E!M䝕,����=[l��P�%]�#�(Y:�r�9jߵroF���U4G��<����Ъ�G�S�W�oX�ւ(-��j"�l��߿�����'Q����#���Ս����8�Ѽ�t��Sk���c1,�:Q��ߋ��C�������3�-2��i���n�'�z����ҮT���}�`��'d����U&E�k��V@'��R��Aф��l������׋��N��%� �Єň�D_/��G�L����\����W��J�{-�j�5��ޅ�H�{�9uۖ�~���*l4贇J�B���P��_u��q*ZM�0�.^���v4��E��3ɩBG�īg�g.�͛E>m5T��0Ӱ�
du�8�-���������,?oN�"����qv�A�z����2�-���\ŵ~U�6�ö����Ô��Q�NVȽ���k�$��n���:|Kz�s�v#�둏��'<�虾�#2+�X�V��,m6�_��7c:�M>�g%yF��Ӌ'G��m���6x��eK��f���<��=�XdKk����r�Ws+$��~We$�h��њm����*zM�yy9ys:0?�EK�1�E*���@fi�Y�`��n�^ih7�
1�ե��Jr�i���X���W�e���ed��)%�Յ�%�fx�j�3�od�#�.v��gD���L��C=aH$�B�w������/ɡ���XE��B�0�wZ�=?(MT8�~�B?<�J�7�YA�T
��(�{e�Y��ae	��y����>���$R�C'�������E���t�a�˴�C�rl�������?��)�7�����fs3F+:O�h�U�k��x�����s�Rw�Pbyk�"���]��n7�J`>M3�
B@����2wh &x`p�t��F��B��L�ɯe��@�m�m�նUW��a�����9J��cL�(HDl� ��`�&���o�;�����2��R�!��غ~v��Q���|��۳߻�\�3qdA�lz��y̐�� 0EA�]P\*�Ɗ�(E��#ܗX���S�ut]���CӮt5����??�ȹ�Y�\fr��ˈ<D���$k��}Iӌ�~d�=-�vnyX8���5�2���F_/w�ӑ��Y� �sQAQ9�,?6$����r�t�I�Uм/Y��V
R]�t�#ή+���Q�a<߷UI�y!XM3��W�t1: �$@R��G���lR#��.T�Ũh1U"�d����qt6��I$���L�]hw���y �$4�;�bb�i�r�߿A�X��iB
G7.K����̌��aX�uU��<�z���<�����t+���5ٲ%p�!�e!g/|�=ڋ,��[ (�Pq��<)�җ�-����B�o�x�2j�V�Ay������Y�      �   I  x����JA�{�boUI&�NOzX�
�z,{X������;��}��d���������kw��:O����z�����m���v����x~y��;~��{����� `N���Dfs�q±�v`�W`I+�+��B���D�3W�J8nP�*����֌�A�8*Aְ14V�$a�+�����bw��]01t��1G��V5�`}�n��<7j�����3��a�"ǌ����&i8s;���p"8�DJ��W`^و��\��M�1�ü~h4@i���[�9�3(�D��Jeo)�aǦ�`u�P�-�5,x�,?��۰�{�l�Aj�      �   "  x��X]S�8}��[a���c�c�)P��X���/����ڒG����{�d��B;�O�F�����ܣ\\-�o���j���U)����Ro�������|�������,�y���ʍx���e&صV�B��॰􏏦O�i�q/���)�&�(���`���������-}]�LW���f~�$D�p���G�`t��4�M�IL_�I:��_��rcFdBދ�Ҳ��!j%L&��T,���U�8�.���M*'��Nj�A7߄�j��FW���*D4V�-�k���%�!�$�3�Y0��.T�>�a��
��6(���F�ܲO�T\�Y�h��)-�,k���9�TL��Q_�Df��=�5RҎ��v��0���n����WĠ{©�p���4��Yb�ٴՓ�|%�"b,e��`Z��7�Q��9��;W
vV�n�Y�9�40�gr-3v#+vQ�ڠ�ͬ�@�*O����ρd�\�ۇ<��ꃨ:R~X{"�WU����w������@�h�"	Ga_7E�%�hH�vNz���8f�ڂ_|�N�����S�o%��O��p�,��I(<L��}n��8]�\l�UV�JZl='O�uZ��(�F�#�09���.���*q��LG��Ƞ7�Wv�5��qI�i�D#Vȅ8WHCAv��-j"��i�Q�����'C��#E�h���.;�ބx���b�}�pr�������7��DH{aE�W�cz^i��&�޾���ς>�b��4�v�w	�B��G~F�:W�Rڂ�'��ƈ���V�6����� j8ճ�n�p�b�:� F��AM	��q�f�Fyn�+7*�HA��Ȧ�k�'��r#˖�_<���fS�+}��U���7��"�i����:�D��:e�]'"qzA���w�(a��A��,˒>����hq�ɗ��q�L&ɤmC��!!���p��ӹ��Z�l��{m�3ӎ�2/]���ٞ �m���m$�k�q}U�h�(p�h[�~��
���62F�N�;P��V�IFcZ�P��}O��5���*�.�˾uЈ�ڮx$f;n���E�e�Zt���5m�u���b��%aWm^ob�H�ly�6�!D�s5�k@У�Gޞ�)j�uc�Wu	a:Ez��󳘍�e�x<�O��(d�@�^ҍEc���o��.g'LdZ�Jf����������3��6
�v�5�������)�<"��xE�������3�)��A��EBY�e��RVb߱`�=+sm����x�_8N�H<ɷ��-n�r®�a�M����,0�M�?#Q��u)��84��"���E;�4��w݌�KK��|#`�����_՝Ğ�ű���S�|��tq���t�铌��LȒQ��
C�\��7�,jS�@�������N(�=���0�٧ �3;=�c+T�T#�W;��1[���������oy�PX�(��`�zct-����aʮ�1/5�C��?2!Q�{I���P�:?���3M�΅�M'�{<!��1�#�cQ��4�}v�?���ְo{�0��E9&Ɏ >��m��=��f0Bz�}��u�m�o//;ހ"��a�[���e��T�׶��Δ��:�P�"\U�x�dD���G`���*�I�U�{�4/(��'(�|��wII���Z���1{�=�9�j�΂�5}��^y��GT�0�vp�U�}Ue�I/��$v����ܥ�1:Ɵ���Y�]ǳ��?������D���~�8ϛ,�-hn��¾H~�^;�(:��s,�-��/���]�%��K����-��u��J~���z޽�^1��      �      x���K�5�r���g�֧���1� 
	LH�@�?�嶫����1��C���K������?���ǿ�����������������?����������������O����ǿ������s�����������Ͽ�7�w���w\�Ӂ>�|B�	 �g��O�΃��Ɵ/Lߐ�c���)l:�N!�U�s% ��C�,{A����	�;Ƈ`����Șѯ�ɢ�c\��%�
�яf�}���|�����������5NZ�>^n�pp�;�ܳ����w?�z �O�w|���u�/R���A���$|��"�E��\t��DH�_�}C�7|��;����ED��v�x�K_�?\�b/Ef �#��9MI�� ��*CX2� �_͌ ڸL� ��C�Ώ��}�����]��1Te%�!we��q`�(�q%��ۇ��nՇw�4�B�ב���}�:@���*���E�| VF�ۆ`4�]�,�(�~�f� /F42���n��T~�S�d�P&s���<��X��`.�z�ޭ�LQ�]>l-����C[,w��GkL��������4 m���A�p3��j����b�����\ꡀ�,�Kv�8�wB|�>�l����Fq!��4NtY��	���x�;�^�>��K_�B�AX�Z @�#���8:,�!+�N�F�o,��u��M��`,S`�:�+��� ̭@��eS��0�:��	�4�fMh����P ��#�{��ª].t��' o��_k NRu
��v�5P_��b'����	�:t J��#��  ��Q�J&���7��	��S�ܧ�\�`N�P"��R���^@����>�g���]Y�u�#�:H�sc�U�;�S��ڵg���֟@��	���
�F��D9U,I�>+�Dv�_+�v}�L���&XL��2���@�0�2R�T��y�h7��>̌j68�6#Xs���`�0`��h�1 �۳ A#��^��;��2&+�d�O��Xr�����Ue��T�>F�P~E�vl2���Vm,.2C��Wn�A�A��Z�� ����Ǚ��L��K�粖,т`�@�"IA0��}1-F��˗�	�}�M�-Z�8F���m��6:��Ġ�x I͖�-AR3�#���[�m-�/!��%���モd�{T�ë��`
y� M��a�P<61��Pt�(E{<k��38��`E�-ۍ��U��m�.���&� �9��Ԅ�)�}Z �FB'�(t��H����$���0k%S�#�LZ���#ɴLW�6�Ȗ��"^�R��$[ t
A(�GG������`"\�دW�����`��1O\Ή��^R��ն��E��eWl����@�ڒp�n����G¸,� &�AҲ����j�����X�Cl�)##��L��]�مlLPzU�H�P 4��J�C���_�1L��jc�L�T�.����C7�ri���IA�8��
�)rC��g²��5Jņ.�4�p7�ge�A]��c����Z��
rХV�4�l�@-;�2u7eYf����On{�-em�Q�L��Q�@�&ڊ0�2����nv]�O���4�"��A�A;�H� �_�n�Z�}EuQb2�Dw˹��)�b�!`7$�2��lB�L�
Ɗ��~��ۀ���m�}�ok�F"f�iXHH���������B�`����MV�M«�h!�kJQ�ic-(gz��E ×�^!��t�k���!����g�Xl��H��*Q��]�P�b۲"0�j����1�1C��0�Lg��2�K�Q"��RMs"��ە玨X�K��l_r哥�Y��)�Y�� ��`��'�^�o�
L�ItgY�)�ZH�v����\۪F��rhC	A�jҐx�Pz,c��+B$�#=���k�b�yo$���IEnl���	nxu	���Y�.Y���(d�O膥�6���JG��"�� �jo$��w2���T�/N8B�H#}��ۙ�m�okn�G�B���"��X���K�k�
���;p!Zُn�+�$g:Yc�C����#�" ��, �%� +9Anv�E!t@9Y�+)��Bu'��M0����������b_r�|止Ȉ�`���,���0i���",)�BQ?ϔ�8<���gm*����<�J��lƾ"���4s��8񀊫�$���b���|w�Y��Ѝ���x��S�a��Xx�Z�u���`,��wC��T���5�C�Z��9�����& դ�^m�X��o�(}�����-���q��t�u� M&�5ZN|_O��")�%Ru�c	�x�(�U�ϋ� �"\��t
N�S#q��xUq����)�.����]�� �n!e7���/	�v�&k�=�W�(��2���4� (;�X��,d�(>��NH(���hP��~�U���IB��֍�1Vfz���*������ �u�vƏu�odI7ǐU�K�t��;�q�(�^s���YC|���,6��xF� �
M$��ϟ�3��&C��ۙ)������վ�?&�Δ�7����p�3;���[�耊4A8z=G��C��)�(��_2�JG��Z$�Р��m�h�o@�k�2AV�Ѩ ���p�*v�M)@�Gm����7�ЄI���)�Y��=$��!{� y��S��'`�WT:��e��Hk�g�@4@�5��Q>\�����+�V�啨i@�KT/��`���,�x#�@1� ��
��� s������N�q&���f�r	 �!��0���\-E �w�-�P���b�ee��������H��e��&8y��qNA�	02WF� ��w�9�R���?6#EfĖ��|W�}�}P!"�C����zӑM�Er@n�-@���!����iAy�j2�b�T	!K�6�騜>v3΄�P�X@�a,�������m�.1
Eʲ����jQr���ωMx�r��2��$Ê�}��]8�Ї�a �.g���!f-Cb�:8���i�0����%vj�u��p_�����`�B�i��τ�	��y��� ���M̠9d#���N\�4�`����j�@����RG�]G��pt���Ƶ��"�0Lelm7�f���"��>�u. �|܍~����R��V!"*�1��)c�C�Pw�1��G��!/��GN�$����O��@o��}�:��]�_§�����"W<:(r!��dt��?""�J|�6rx��D��,�m[8X��� "v�T�d3]Oq��KP�[U� 空LY_ 	�B��<�Y�L���̌J���G�΋u��/z.T�&����vj�l�����pr�L�t���C��f�R�{q }5�A8%H.|r��İ�j_�FZA8*j�I�EU� ̊XC�L� ���i ��/�"=�"�#����d��Df">��0���cwQ�k��u���z].��Ւ7�RU���6�DPy�m�#)]��Uo
����vt�F\H�= ����Y�WxM��#��p��5 f�'��r:�!�� ��L:�e�6,B"�0�m� I,dOk	�\��#Sp��h��~^��[1�o�}�f}�a���d�)��/QMV�S���F�<��N_7��6��ѩ	ƫ�f!,G��+����a�n��{&�����#�<_��)d�Z~�G���`#��Z�7;�Y��T��ߐ���8h��5�}��băR��_�A�9�r˚��$�Sگ|�&B���R ��N�� �\i#�Z�mE�T�İ�%t ;�)%f�Z�D.JE#��"Z�<�jkUX��V0>^e5sQ�Q�Ո6!V� i��(D�u� @Xm����cNF�ɒO�,�$D"3LJ�P��ػ�!"Qw��HV_��U��)�f��d!���us�\�����Va�u�a�C1��C���\u[P	�2�ѫiC;>���.B�.88yY N{c3��L�fD;}�k �u    @�O��N>b�GT�����4>T�WG�����k�z�\���D^���g����y^�,z�,E�<��M|����AnV�- ���>m���	1p�� �?��q��y{c�l���u���V9	�V�Qs[�k�]��y�7�V��2/')!O� ��c��Ѐ�v�?�S��Hk9�����qpBl��T<_�{)1% �ǲ-��襴$D�K�=Q&Oq��Ԛ�Z�c�'p���By�E�������OBo�
�TZ��t=���<Ѳ};���@b_�3�Lo��Foҏ�+� R_���/�b�@�'0�(:�[T�D���/���/����6�$!;�ؗ�y�{�O?�x����r�QB]�Qz=5�=ܹ�#��i��_�>����������P�;An�S��{s5�O ��&�FX�Sqn�~pPƫa6�~ڿ/T�%��*K�#�aβ�,������e>�L�������*qѨ��J=�v=�^&X�&
J
Bx����z��M>���h ��,�y6�n���x�{?��R82^$<y�L�@? ����B�r{��� ��u��DR�E���H��VR�T��X:7�k�xU�Z��� O�b:a�2~����M�Π<B�x �R�����$�ha�e��Cx]�mc�#�E�s(��ȋ�O�\;��d;2X��P#�dc�5��_B0��Mw�A�GG�8��@ ��RR�� FC��1N���
4����;!�%8.�����	���GN �;n}�>����O�ߖ�|��L��(�f#]`�o�	�)�зd��o�I3� �E�cm.�.��@]�a�e����ȣ��_�4���*�����l����j�	7M�������b�'�O�˃XP1����np���(��b�Q��l���Dfj�nO���#0Ȼ�Ws#�\zYE.��fKd�d�T{��삅x0���9�̠O�˷�GA�w�=[,&�A�iO1����$E�%d᥷�x�rI���i�'^w
�>� <�X��Gf�k2�G��SAP�q "5�g�Rr5u���LaP�d%G�
�
1�dL��Ა��4.��Y��tC �J�6��,�!QRᔱ{A��˲CõH�H�n?�K���C�n8�`=+��+#
 TR��X���4�&�)6���@mqa��a�����㟛A
�rT��j�tZ:�c̣}3<[�����VY˲�Je�o �4�J,Fq. 3�����2c�Q 5���b��u*���e�Lǘ�@t�D�ϢSb�1��.	�څ"��U�ǎu����BX{d�X��.�*����?��*���X5e��G���jW�U�� �xѲ��,�R�A��B��R�oH�͘Q�'�~
S�L��H���R����$7X�UDq쨕b" D �Wh�׌=9�O	��(ff�6��u������5�a3dLw���W�Ŷ�)atc��� K>���w����1fL���*W�_�O�MeEdH�W�P��W��d8�뵜	�j�_����jZڟ��6D�e ���\|�C�YD��kUU��ݮ��ms���o��90� &z ����� O,����� .�B�2\���-��+����&��x�ʳ�EJ���G����Ͷ4��U�c�_EGB�$�3�F�`{ն|"�S�EK� ��i�]W��ܿ��2"d�ϬD5*2|�̠.w������������w\4��"w�C8A�:�9����C]PV��CL��p����˝���g@:X V:#�SS�ef�ܰb��r��YlP 46�kc	�ޚ T�߀7w:�Ǽ�Ϡ��O�i	S���e���D��Yhiy����L��˴��+pݺ� ;+���%��Sŀp`��- ? �n�}f	cj�¶f�c�nE_M�����{��Q&��T���Sn6�}mx-����S8������G�A�:�t	��#H�}@����63�G��/�#6AF_?Z��?e�Dݗ^������"�K��	������|{�G�����$�b�Tk4V8�}��qm��u��}Nh�G��yGΒe�0���V�}@vթ@�ަ�]L�B�U
V<	���j*�̠��֡�Z���^���fc���2J��Xp	cdy�0~���c؎JD�7 ���Lf�펢�2�3��A�"ڄ)|�,%B"8�H )CZ�9����Jʐ���G�X����"f�aZ�� 4��x�h�ÈcY(?�e�Y:{�ll!_R=�80G=�Ʌ�A^LR� B)�ƻ+�!�����:"[�e��d�G%9�����]�2h�F^�P����!���li4q�$�hI��D�ESOC6i��!�E`U�I�2��q�I�9�"]��U�7��j;[�1OB���1_�}Z	�Vt�W���
O��MÆ�.&�:�j�g�#��j1�yv~q��R
�p�>BT3�t����A�*����Uά�nྡྷ[��x�6 �^@����Y�#��$Ax�R� �W�5���) '�����W�ч��ʆU6��G$(���t����Rs�g��K@���<��_[:�;�R����~|�*Ć@|����~�أ�<Z� ³��CD��Y��@��;ztG l�,�X;��?;$�����ܛ�ߴ��dE�41�V\�T��~AUn"c�C,�
`�Pv5rA����'�@,���Q�}�dZ$q�b*��5&�5Of���ȕ�g���Ӑ��k��J���iB ��d/�!L�D���k��J�Fӫ��t���@8�^����!�&��O�����s񭡰X���oD�K��/*A�~��u��_�,��-�z�,�*W�o��ow�L!��� �t�֣���/�3�އg��g;@(�����e�P�z����sH"�Ƴ`LMF���*]��3�\��V�Ϯ7���@�(�!P*���)��`,�m6�V���AC�	������L��%����ΝA�L#���#r��p{��|�Ӟ��-v�9����vfӀN>#����>�$r�1jy�=��S0�ִ~��u�����5LM-�����i͓�<�M���]G��x��k���0�f(wFx;�e�$
QN���x�$�v|^x ������/!�,&�ϊ��i��wKw��Ib�2~��C4}��C�p���Xr���.�jɀ � @�?��,p$,���%-±1�}�"�]K��x�b!k^�9��XEXOh5�C�K&�]�	� �R8�y���v���c?�:�+�"Y �l�r�T��@�&0�-���y�	��d�A�_�8!o��K5��*�	4A��HV��9�	- ��̧uV���F ��i������Y�l&m�m��r��+#z'�4Vy������r�@0P򜬯��EȚ� &���O:����r���� GL ���dL}+g/�IY�*�1��`���&�vt��ط�v\C�S�7(`C���L_�Etn��\R�unf��Ű엖���5@0�=���KY3�����۔u^����*+�\֐������яGD����Y�ϸ!nXY]�@,�� bVt@���#:ɮ�l�)E�����T%H���\wsm�D�_�è�żs�1��� �TְN�X��A�$�K�$UD��N'1y���qqՑ�=Kb�K����~7�oC�zc��t��:Z����ס���;%�z�T�ܦ�����]�ˈ�[�� ��^V܇嶢)�A��pt\�+4�DNr4��De���3 �-ʴ��*уL�EK��8��z\+q&g���e���F1/�F���s�`�:�KX���"�ٽ�J���vt���"kP^�U���j��8mB=bx/�Sv	e����\�v�YāQ[�U�ߺa��6 q����:�1�@X~4d�vWo�;�^�18�}���`�Mr�k-y����ih2�d�S0I�1\�B����# >�����r�G��q�� h 9cϔ��P����SrD�t�u�����,    q:��с�i�7vǷ����x��H��q�N	�z��|DG��0_y��u{�y�~�׻������5 8�/ʦ*���l���A0O����\��2��۶N6t_��,�2���@�
��}�'��2�U���P�G�nD�<�	��ÄP��P�q`<j��&\�2:��&'��E�������?YdS/�& �;�A�T/l6�g���{Q��Y�SXADW�64j�9���ʑӐ�2�lD�+ �q�jud-Cbzǣ~a,*~X�P��`���c�юފu�[��H�$鈨�t�#��@��k�0c.h\����NN��$J�D>"��p���1;�Iq�`�e�@��SG�j�@��@@ ���}��ʙn��7=��/��P8��IM ��{�5i�NG�ٴ���1�M�x�=tI�d�C�X*.D`+0o��}�/&��: =�Y:Ń�f�ܴh�����ΐ�k��Ϸ!���2Y�d|&�<6�,Ĳ��ᡃ�]��U�4�x@�;�<�Dl���:�ys�L��r*��;T�0��c�"��a�na]� .���1F ~�5�0��3��_7� ��X�z���c�1Jz�X	*d�VK�@!L�膓�z_!B|�&�`�0iM���oȅ	��%��e���_ft�E�k'2Ъ�� A��S�Y f�T��z��%������j�ֱ_``�#"� �	�}Y��^��E�A�L4�劐#R��1�w(��Z��D D����{�� ط����)r9��h��ܪD�'�/Ht�+;5�2���
�����9��A ��$(��YTYZ���Bg�ߖ����v؄To�"��ݥ�E�O�ܯ����%����~x���*�#�bP �oc�3��\�k��P�!s#��=����y��f��&��#��brDp�{�xw��vu��p�_�6�����?t4F}=�	V_���>�L�s�!/��̞(�b�$0�+O0�,��N/D��R�<��7��+�D���n`D 68"�4����-4
�
�AD�E������~/\��w]�ۧ"k!k"�;��&���f$���GPQ>ƛkA �t�,�s�H�%اza��c,
��Aԟ�F�گ�$'|z�X�t��]��%V�PP�CTe/ �w�1�	a"����TO��?��KƟ�����2ZPoX�蓓���i{���z#`�q�����`��1��!����HxAW1&Oa1i�o$�҂`d
z�H@��o��h8�/$1�Y�KN�ɍ��\���L�٧EX>@�(��/z5AVU{`���كH�8I�Z�tt �z�x$��v�<;Iw� ˊ$��av�C��K����f�<bE�z{���@ܫ$��D�,��x�~�jJ�6ܫ�-M�fɲ�~�����tR��h)�Kd��S5%�	��U������e�Z"���d�ݥ��|%��+�E.w�1|�nYR0��vB�?9�o��w�d%�"O`���5��N�!�˅-�Xd�>�Nt8J�f�&���B�n���[.s �ekG����>JTG\�>|���#���̌'Ai��ڇ0���s6.c��b���g��H �*�*{Q�"+}8�O����'D��N�h]W�`�k~�4�eK��|�b%����@�8��݊O�¢}AQ�~Ⱥ}�i��#P'��yz`|�@qI��L`�UܕP��8�;�hb���h�iD���]RhL��+���`����j��ȼ��� q��Z���hԗ/ �ri��^"�G��dn7 �I�?7Z��7<3�Z�6�d��r���E�Xq$�,:��L��tJ��,%��B�q�F��셜ɬ���?.J����I]�QwS�g�RB�j\�������J,s�a���;��G
�ynh�6C�['s�6`��
`۫�b���RD�תi��=�!�<���A�9���ġ��2^m�l���c��,{1ټ� ��.��#��du�k��$���>67N���q�?@�	�����r.���a���@���w̄@���Z�:����S)&eB�+k�+d�p,}Eq�~_m�O}5���3R��y�9 oD����* �p��4 �`�J\.XA��Z���.�ￎ�g�2L�+�m1N��*�d1@A�r2�q("�V��~z���<�P%�� yBS�N��[O�0;��p�bC>�[�@c_�Z�`����Ke��YgI�^��@Y^͔���W��pt�Lߴi���l����I�y��J"���8��t���lN��a�`���Ob�I�@���1���@�I�ٌ���J��&(�.�^�
��7䟃�1|Z���'2�����E���B��p�A`�#<����-U�4�ZXe�a��o��K��u0;��񫢖X�R��(�G��w��6ȥ�&H�k� 6����v�rp���#Uȹ�q1���1 ��^i�]��
��x
&P��՞��E۶o�xj!*�?�����U����r���C۠Ql�-*��n��cD�3�f�Px1A��~e�y�{|Spđ2��;��5 �mg���X	Ȋ�W���ٶh}�~hb�� }�lk&bryc���	A�$;g[=�����ʌ&?}p-����Dm�ā���)]#�:Ƴڜ��� ��� s^&g����4����ɏM��X[2�ގ�k�L�o���/�f.V�#��B�����7+&i�֣ �q[��Ld~��-� ч�Y)CG1OS�pW�����h�鈯�ɫ�̈����������!��0-P��UZCv���C8��-��p �d0��@^�h5\�o����,oԻ�}�-��P����
�2i+O�g�i���5{2|�� ���E|�6,�~^����E���Uv����$�@��&�Tb�K�#TI�P�	 ϲ�����]���b� ���ó ��O�k�X�3��ԧ�Y�v�D�(f)a6KW��Q	���N �*ݥڿ�AG�� 8zb��c�� !���@dRIǟ��D=�����R �������z"�}�\�A��X�&P�긋)�j�4�h+,��K +g��cs�4���=�����j�i����^�n'�Y�-гU#��E��/���L���U 0���b��g�3ɗW�.�bV����6�)�"W�f��Ӑ���m�E�_4$B~��}֊��
���\��_��`jU��.Y�"���#�fj����Ͷ'��b���B�B�g23U�!�E�]� xs�G 4�ડ�?�nrf��ied���$��-A�ʭ�01�;�\/C�J䃴�>:�TK��p��R�!1����:�!���gb*4'�acY�-��6S���a��GϨ�e ��Ø��!��ׁ�0��:�m�9Ư�	�/�	�k
$��9������;6 V	�C%t��c�I�e �~2<��)��h�p`��f��r'��ׯo��h��P9`�����$F�q��B� �^@���w���Ў̌0#�,r@Lsq;Du}��A�l?`8�\�;�4��d��J�J����4%u
B?1]A�jj@[b�@����m��A �Y� ���H�)� Ċ��q92>4Ӝ�����ק1��x�za@�5 8��w�����Xm�}Aբ��&ϿM������'��3����E��~��,�t>̲s�3 4H��P�"XEf��L}�f	=#��׽�A�-��)���k@����$��@����~� ��H �^�;��s:�aۇ�����+YUA����]&����N��i�d;�<V��Y�?�8�z&��C���넟�O� Y��&�x� Gl�B%�:%�0[��"N�o���5�`�)|o>y�w`,}*�Ѵ��r��`;7���.Q
 ^
_Lp���QHgLk_���ND��GG��`@EW���b��N�i���Bu ����"?�����M�Y��~ a� �"�L����y�~�2��Bp�Rn�w�DK���� ���,�gPz�1KPR����DR���'� %  aR:�_���j����|~ޔ'�wӔL¾�#o|O�1d,%k���H�+B�m5�ֹHa�s�a��[/�M�F[���^��I�'{$��KϷ3��1��=�n�YCvp�Ix����0�J6����8|��_:�Cc�[��O�d�B���Lb��~��1��+{>_�~���d���	si�~0a��"-s � ��!Rp�`\}���Q:��yU
�`��Q@D0�b� j��w�||f�売�J�*�/H�qm9�[,�/�]�'~���Ş*P?�]1���$�b��Y�爈�!��G	[�gP4���X�9���%(������B�h& �'�E��j��Om�|�ܞ����k�D�ÐK	G͏_ ߀������#^ҁ��/b�3�������~7�M�
�,�QT\��G��*` m��W�;)E	��@��O�N�V2�Ē*E����8$��ɉ_��X�@@�YV�	�(8%R�t���\v�H����h���m�9.�x%p�c��d�`"���CP�9����	�b8+��>�����?bj      �      x�ͽKoK�&��_@�{**�=��U�!�G|��k"�QJf��!����qo5�}
8�A��j�Ǯ��{��G&I�'P}Z�D������}v|6=��
�Ϯ΃���Y}6��j�>NN>M���E<���W�ώ�^���5+��u����W�W�눽�����+!��C�_ϗA�
��M�̖��]�����B}SR�u�V��իɧO��J��eU�/�/�>�����X���(�7ի������ ��=W���ͩ-b�w����X�2����2�>T?j)���/�j���ɺ^V��jq�~����/�XZ�8��L���jq_ο�;��7���M.�wǶ�9������W\�3	s������:8(�j	��.��&�(���$��u����^4�;���FI�į�nfQ��gåg�5WG�äO��c���f�.�٬��3�������0�࠹��7�/'ߛyw�i���.���_M?\\��^���0��D
��}��x�뽔���7�c�����Lj��6��׼�ߐ����ŬZ4u'���4Be߯f����p�5���F�_񘈟j��e^�F]����ck#���������>����u�]Z�Z ��]�~X�C�ua)���Ἒ~�W?�Ŭ���Y�yy|0� ���}�����?�p�7w�nRu��X|Y�<�rQͿU��M���?�V�܌��?Kne��NN�]M�v��3�k&�Bi�u5���ϫf�?4�Uy�,JKeN�딿'���M���>�ǯ�q�k���h����d�<Uۖ��-����`��/���^O>�����K�_T�RjTp#O6�Z��1��)M�ZU�?��Դ��z�z�ۧr�~����n�j��$����c5�~��Y9�xJ��.Ϧ��*��;y���㊣l��B:�@���
d{_/n�>��e�-��w�)T�����[�w�U)����Ձ�Qsψ������7tP�W�F޸�������J��=��T�r�L�y^ޖAQ��o�Z�4�a�&���?�ԟ>J�������{�(��x�x�IF�*�W�Z�7����_��C��xᴺ[�ɰF�H0E)����sf�$�D�"�?~8:<�Ar�a�>�?J�zX���@��Ki��������-os \���4{ΓN����\����Pl�#iK����r��!ü�R�g;�a�T��Z|��!gYpZϔ�:\����O�YW��˳S��<c�>L'��֛�����8c�H��0JG{��R�7�'�ϝ�������7�*����}	�����ǿ����|�o_���r%�"�C��ǿ�|����u�:��~���,�������Z���T[x�8�ҩ�Y�n6xx��E���_��}.o�aV�T����o�0;�����Ԭ���2������s'�W��˭7Y8��Q������r������_����4��K�Z���z��d-"��o��N~���3�rbN8q� ��k�!80uC_��W�������d�s1+W?�X���=���,3�Gy�<�����|z�����tX��hC����h�ZF,�r-�ې���b<p"���R���V&p(oJ����磜=���J��w�`	W6zd�*���������ʠ�Z-Q*^��_��a�`��W���E��	�b���qfGIѻ~��4�$`,%ϔ�Ӌ��Kb�����e�>��Up)�`��7�_�	��Ex�ͿJ��|����?������.&�]d��!��>K��EF¯������X@ᜆ��I���=]5��Z�S���O�L�y����Z�'b"z��1�Խ�Nf��6�Rd C�A`������(�'��7������N�������-#��JA��z^�j0qu��o��*�U�.�yt��* �o���X�xU�v���_�_^} ��=���J�y�vd��\�a�|�-�`�cUݔ�2>�X����L)������$v�� u�:yU�+��@��\�(�l�\�o�4K �U:���T�Ï�
Z��e��+2��.�N�k������T�\�ҁ��vH���ӗ��|0�������y� ���d=���/I�O�c���}r��'��Eg�&ѹQO�;y_��*��Z�q<�Й�<�/��򉇧���Q����{Y�n+�����m��#���sed.�O�����n���e������K�4��`��׳$�*�
>>��rP�n��eW������w�o7�]mO\�|LyA+�O&Sǅ2��9�%��>���nD�N��|%����Z.�L��E�� �	N��g���R�R��U�A_"A��{�f�<Z�qCIQ>�D�z{���ؾ�������H��6</��SKf�JrjZ�s� S���U�<���^L.]��W��|��NC&.�rq�����%�ap�<�T�S9/U�t� �����n�W�$�<z���9�
Gy"�faŇ��g�+��ͲR0�c
�P��BFds����9��Mp$��|�Rɟ���ݧ�G��f�Rw'�>�1���j)�'����1�~S��+U�ԋ�5��I3���|G<H�TP�����ʯ�����C�ao��"T4���-n�5�֭:(��*$�ॴ���R�=-U�l�NA>�Xpr?%-l�7z�mL�c�����^]N]��	
���P�B���J�w����j�՝k����P.��b�hTU9��Y�"���s0�F&'!'!Ί>f =2���r��4�`�A�+H���g!+�M(�&�̜���~E��"�H��_f^�V$��9��b���HU�B�_t %b��'{�-jO�D��Ñ��RH`=�O�>��=w?��|6���(�J�O��z�y�=8�6&������J�8F����|��6.��ԃf����C���,ǋj'x�(� )�ϐ�3Є�4T/#H�r��"�� � V
�U�Id!T��Wp����!��r�r'a��簮�k �����w�a�켔��ͪ*(P��j�Z}.�N�L��gD�"��E�%zN�*L���%��% �~{~x>%A*O��}�2L��6*�;��`^W��?�� ��!��_:u�����lf���?��(�\(B�~j�n]� �
.4��^�;�Έs��@�S�[�t���Y���xU^��Z.���g��Iâ��+,�7w��!���^��_;���"O�&�!1 $�&"��-��A�K�i�øH&ͼZJ����X�N�P�t�Yެ�.o�/�b�4�r~	w�q̷w�k����ե�6�1�Q7�>��Nԃ\����Y&�墺U�J���j�1.K��
�J���ӭW���osi�u���V"��PX��OF�=��L�����A0�y����T� �4k3M��!@�wW��gW�nL�O�T��*��M����t�*�|�V��E��R����g����ȇ�u#�{��U��pA��+�	�����=�W�8S_[�A?+�ڛX�~ҜON�����3?��+�Dt�s��  '+Z4r40Q0;&�Bb}z�F�,��4X@{<=�\9�'��~ ��0�������?�5ʰ����Ri�|[�OA=X�.�P���UA�kp�l<�s�����Ḝ�K��!PI�/��&f�>?��� 6�S�fFMtɛ$��Pn_1�1��*��؛�]�p��̖��y4.�C�}����J����%\`Z��:��i��Y�"�
+X說�8~	� �����-��d���(?�B�7j>�@���2��=�۲�M���*;#���g����cɿ���|~tFz�)���B��X��!���?���,������X���S5����������X��Ϯ~
����#��{�Y��&&�XL�b,�_����Y�"]�y&��_U-�'s���M���!�S���'`V��4�E.zjBoM[}\�����'Ǉ���#���V!NB�f��o���i��aQ�\K��@��L忬�ې���N�-|ʦU��9��=��� ��#���5���x߽p    b](��]uidب�f���`��)gw�:��7��J�j�����i2��@}2.�����Ĩ?9����bi��xA:���+tD�&Yr��>�k��gFm�B9�^�����l*oc1�|��!��Ʌc8���ٴ,�P��R�����+�K�Kl�̷�	/�����ID(��9�PO����c�'E�cnfk9�o�B!�B��`A��X���U(�|��0X>m���o8��ǵ�ݨ_�c��@�G�Ɇ�/�h�x+Fs���0$7V|��z ;wﳓ�޵F�s�=�_(��̎�l��97Y�������<>;v� �#P ʠ�,��͋E-�mY��R���z~�(��;{����������O�?K�gY|�q��A��>qݳ(G�i��d�������7ɝ�pR]����(,�h�8��z�4KB-�h��rH̽ݍ1���4ѣ��b�9>=�w��SRk���Z��}3_�j�gz��U��i����ͧj~W~�T�e�G��\����oy����Llғ$�B����^O�0G��0�t�!X$OM�"��4=��R鋞��6
�#�>��Dl�#sW%�W��c��ix\�@��h|l�½�Vh5��DPR���>'��W_Rr���P�7%��ʄZf���b/ͺ��[��В���1^7� �'Su"�gDp�X[H��5��v�����I��$�a�7C�����D�����:��Ϊ�S��2�/kUF�}�j��A\ns2[�7��f�(�i���HMY/�7*��ʓ�-⒓<)��x�=O9�ތBt �m�ۜ0b���7�:2:���.�hjD�=w0��d%�P�/ꛛf���mp_�-��˙r��Ez����Iğw���k�=�E&��� �dI"B�-/b�����2���܉����,�V�ɢQ����wPPI�4_�7��>P���_叆x]j��{̤�մr�^�����Y���O`v��<�@[xr
b'7�H�n##^���C}�@z��ɨ�ғ�B9^.�t�$�u��{��2�E|.���ߣ�GSWx�X?�R�T�cApZ}�恌|��N�xIe��[ˈӔ��A��bI�������4���p�0��Q o�B>9��?���@����{h�4@��91�V���"�'vl� <������U�s�T颟��'�pQ�l��l�d鋅,]��e�P.̤����/�g���*M���Ɩ<�Y����YƐ��D�f>�nV5<=i��
	{[)ϻ�Y^���7׻�Jp�򯜹B���b�à�?�˴N��5�J��R�u�����R�D��̜����9q qo''G�N�ӂx��iJU�Q���rʲ|�	�����1	,�?�Jm[�����,͠��J7��GV��k��*�P��8y��ȉ59	��w�1�`�c�����Rs*���/?/g�gi#c�����nm5K��஠XjS%�('����\�����FR;Q�]y�B�<
��	N�������eM�g���z��Sv01;*-��8�DSl����E8X�+���?~8::#����ڪvWh��R&�G=��7����*�!�r���.�f��'6"I��I�9H��:^l˙�3�7�x��8�跐���'��:��� �@��f��R*�\� �ֳ0xSϤA�Vi����Q~��6|��~7�M��B���"�M��#r���fU�H\f�ҙ½�+�g�|�Ղ2mb�LV빩��>�!�n�-�N&�Y��\a���N.F!����À��$D;ɏ�P�;�a��l����m�V�$�2��mV0�f���cL:���E3�{��0=ci�-0FCF��ݱ����V��B��j���g!*�\l�L��'�>����e#��8�%xL���t�R̸�"��\�0%�z�31�8V����za?@e"|����$�N��.)"�7���dS�,\��q�҂Z���O�x�������m�)H�u�]]�+��߂��Z���T?��`����Z�\FB���U���)���5�o�pd�h!��7�Tp�pv�!B@���S�r!P�m��Bh_�oV����a��2����j)a�����(z�[��[�M���ψˀ��Xr;��ĒS̔�F��>�qL9�<�Q��Ѕ'��zaV�T*��	��4Bk�?BȨ�J�q2�(��$��4�i�Y5�ਓ(�_�\oW����ᗐ��f��7I�=�zC���8�_�&����4�J�wM��l��=��M#s�Un���{�g��62��yֶ%����8�=�V� �v�.��d���b��Nc!�1P39�%*��n�\s��⣖�b`ar��.r7��O�����Es���6f��o,�6�Q�8���Į�n���m^_���Ff�(���E5�bI��R�$cq��kg燮z��z�cqm�UZ����n�*͞#�g�����L�Ŭ����[�`Q��[����ep�|(�q�G�r��nA�rHf�(�O��{&<�rl�Z����l�[�@<�(\�s}l�#�	�u�MN$'1���eLO5 �g�_��r�yn���r��Pl^�?��5F �q#)�UJ�q�����%�a�nu�H��8�y�M�������+�vOV�%�����0x+�M�U��oTD�'y\�K����м����R�&��&b�X���z>�M0��<�>�Dr�]��:�C��ǌY���5W������	GA�Wa�]�nb���#�����dJ�DWb"+�/��=Z�C7�A&�P��=׆�2��X�E��$?�Z^H%6f�Һ�U�-�&7� ��a4]4X��C���S�֘}1�.�&N"1�n�MZ�(��	��z8c�i�a�-3'��;�7�!�1��������F���:�=)>w�ܦ�Ϸ�@8q�9AQ���;�f��*|��J�"4w�!�/rW��!���FK�פ��F�Tef�VV�B�gdU	�?\��j!�(ɝː�r$�ե�D��̫�ɫ�@��R��Hg�����������#}���تCE״�d[e�}DL�*�(B���^�(��I����Gl��c��p�8v/��
U#����s7p�K��3��4��團�{u�Γ���H,�V��.։���2)H��3&5�ba�kSP,�b��7��	Ԇ��Y96�� 
;%,�!珱��gJ
�J����ѷ��`5pԮ�f�M}I�*@	mp�k})��aG��T�f��e2����ܭ P�Q�0�Ӕ[Sz3�o�Uu�kf��n}_fxլ� ��R�@�7�7]�qX����+�*���#���{���Y΢�#��F�b�3�'�?��l�.��0VR-/W���e�DX�b��+ǎ«�~L��a֫ǿ��蝬�Zg��DV�k�C�1����R	�R��r'6ͳua���=F���dJױ+b�J�{j��0�ƶ�J�1�a�-�Ub&�q���|�oű]S%�����alk�V�q��6��m9�@��z��Q7��m�����G0迀\�Kgou'ޞ��j�� ��'�S˂��bзH�41�z0ᱽ�5$�h#�����P�����sOA�'�*}α$	�Q�H��T�rR��@HC���.6�Ҧ`ˎ�x� H�@��jϒÄ����3DL=0�Ɖ��o���̌`�b#W�k�-�esР��]foͨQKb̰=��t"���j�0��;�310L�4z��! �HC	kS2dG����<&zZ{�l���ܽ�NZj[fe�!���{��o[8_�M�����:x���l�y���45��dl�c�vO�@�d�y�D�(=o��qؑ����u��5F/��J�9T6Th3��a���I��v�݋o�4o�}��������ĝ~щ�j;J+�f"֤��4��:�=~*�����������=�5t��c�ǐ`[�h���������q��8�/�K#����FQC�m���������w����O7��	��?��8�L�y>�:�� /��� H�9��u^b�h<PI7$޶��    �e�K���|�xǙͭ�ʱ1����j��q)�b `ڟ�}tՓB�N<i] l��J
X��6�Uߔ��J����A�����KG<H�v�KШh���i�1�-HC�����1.]�[��N#�D�f�6EV}�k���&	N�"v��.�"xꅰ�@�d��b�y��a�#0V&Ǎ���]2����NW����'q�l�D��OgV��
�ߎ�~M:I�jNT��>������G6	�|�R���>��TeQ�W��.s�� TjI�����n_sP�BJ>T��!�U�{!g'�gk��k��K0�gAN�߃���F����0�Lu���J+uU-%j��te ��¸B�|g��q: �\%i�g���qo(�1�XN���y�8q<j(��C�vļ�՘	�{l�����_&�O�GNB&Cq��ŋv�92��/t<т��f�#���僘X[85�	��~t���(�ڝ��K�M�Tm�Cg78��`[QA�&��1�Y}�r_�>t1z�v��ǽ�7F�f�il�vv��T���5汣��g�=�ն_	B���F�Z��x����&H��/-p����}W,/�8�d(�c�?)ן�Tà|7w�ep-�TJ���"8�ݛ�jvl�k�@ś��g�Q h����#������-�)��.����n��]A����]����R���F*�g3CñY��Q���qO�c`���M��G���e�/�e�ܩ��sr<J��8 ��bk�I�aS^�M��3c��=�����SN1TxÐB&�?S���iU�8�4�AU�$��4�+:���"zN�$A�K#�|�qr��4TԈxZ�0��B��$�7�Zdc�	�X�W�b���y�$ڰ���GбaR���AH����bؾ��A+--������H"���~�6�GB
I���a�1~�3��جR���d`��V1yܦ� ��!�b{���N�΃Y5�?y��J�²�䭒������N������="���b3�C>���x]��f�rk�?�̔$:Y�H�@/�a7�\�:��Ao'��Bn��+�{D��	OI��k���cz�e�h�R�i/*{BJ#I	dy1⺰�mX�ރB'���Gq���1�(j�������8v����Q����j����#h��	G@��Y��� 3�(6�BwUH� ^����o7��N���]�	L���G�pZ��3Q7qӏ��*9��+D���J��ki�Vz���ɏUuS�PQ<���C����!�	�t�S��]6�p����"s��9�Ɍ3�І�aE����Е|��fqb��Ay�Zw�݃���t��S��z����<������]���H��¶'\*��2�q����	O>ã��0kܞ���ӻl����q���^�``�2Q"�����zS��@:)n0�{���B-r�5���I9�tT��p�U�'�58q���g�x{y4��n0u�AS)���vQ���M��7Ms�3�<<ؗ���TGk����1g���.)�^O'�S:GA����M�'Ej�S�D�o�P]J]��YVw���H�E����_+�/����k����&@ej��.'�S���2��ΘU�ء�t6Td��롿�G#� @k�7d��t�J{����b��3���v*�b���H��~䱴x�L�2Tj���5���0E��mdㆩS�&�MZ�"��~�^qwF>��u������5	���-»!��=�.!�N�� k�i,l�H$�h��5*�ވM�	�E�SW�N`��:�
0$Ub��2��p?�N��Рe�4G��pF`r��|��IWU�9|W����A���5k����ߛ��'=�I�į��l�	PE�R����0uP~��"�=���7�4	���G�r���9N����:9?;���������!���WY-��J]�ʂ����J�n֋��Ԫ)n��	�9��.�<���v����>�A��[��ٞ@hfR��?��4@�+�ڏ���0�����v1H����0��ě	)*�:gh�F��g�J�6�EVNVG�7�2�L�#{+��z{~x�bt�d~��m��:Л��W��?�7���\Js�����T�s�p]lV߅�;I�&�x��٦,O�u��Kh"N`Ҵ�����B��3���_d�^�`�=�x�X�@Z꣸��ױ�= �2��Pi�
����K;pL�[(�:14B<�xѣ�4�Fa�ˆ�����tJ�~�XRF�d�$v�p�E^wIv�b�+���>�O3G[�VMe1���3\��L�D�r
�Ie�0¦#OL�	N�&�(���ODCf�c�zY�� c�A$�.bCA�co�؈$Ia�J�IMC3��r�x�(��f���2sr(�=�F�jN �1����S�B��ɘ��s�Ij��گ�FS�X�pgg�mⱵ7�7	�^�&3�a�-�Z��*M&S��iņJo�r�-��V0�a6$�=�/uG�k�CL�yAR���ɞ�N�3Ľ1�/����7S��|��BM����Y{|��6�_���S�f��;���0�O"O����[�����?|S�y�LfN���Dl���J L�\]N�i3��'0-W"a�s!U\�y�U�i��pgY7sm53΃�򣊀���R_^l�i"��8����˷I�@�r�H�p�ө��ϱx��ZJm��,ၾ�t�ZrR�?j�]�E��J�3\D�ͩ��sb�����A*;o��8�����"}��ڑ�*_/@{�ʬ�8�O��-Wx�^焎����)m9��k�ꐡ^�!26y���
8΂���y\��Ky��ZMƵx�b���\x�1c�.PN�8���Q�2s.�t4g	� x̀5ʌ�����Q�0��g<�������D�~d��4~�o�):��X~��y�F���J�O�.�2I��?Ao����9�oK�Ȍ#h�}n�N���8Ş�ۯ��a@�9���8���V��� �H��w�u��[ܹ-'�I���HW�ScZ�XL�s���.��Bk;��	�񹰳�ؖ;#r�=���:��/�^�>�:�?#�+:T63�n���ד���9��d�����_dp��P42'@}n�gERgo�C���N�)�vL5�f	���twTP2w��0��B�h[�`h2��	����Q�vk�y�F���ɞ�<k�@D�#	��P ȩAR�~����M���xI�������H�q2m.ƦAM�8IUhi��������8A�]8h�7R�1����3�*������GPύU9�}������)tZqʓ��I��3M��E���@�d�b�H<���JV�R�Q�o��|�;o"2�rs���I#{_$q���g8��z�RB�d��O��*f�o�4��m{dC�����Pk}t�)�;�W�<	�m���at6�3�������͐ f8�=~�p
DJ�N���s'[2�;���up� �@�G"��n3�}P��e����ʸ�3������)e6ya�jC'>�CP�u0쉼0V���?ѮɟoV�Dؑu�̖_��O���9�ga�Fi��[��/��b���fYɈ�֌�.�d����JsOO`dNd�	eԧ�L|2q�&��x��C������j,>��t
CbtOP|
�I��'�.�'���x��Y�f]�3�3��%�ټ��_�K@�12{W͖�������|�9h|
�Kѳu_�����[ ��0��ˌ��P�M�/�(x�1(��iA��t<��1��zʀp���C�ӂGc7H��m�K9:X�	�{�^w���,6O'�}҄���k���CO`"3]����-�AӌK��C��!7��݌�#S�����S 1�$E�K"GoAO!��zwtл���֙aì�՝Ғ�LdCI�]�?~̾U��L1�W�qs
�TR�hv1�9%&W���ɉ�$J3q,�'h����?K����墺U:|�T����$eV*���^�o�ǿ�eX��a�4�;5	�@���Ǣ�f�@���+"G^/�})���|��4�o�IF,5v�n�~BN<n��LLK��4k���H��x    ���	^���)08�I(�\8�coGά�IR�q�'�[-�
ӰM��$�rq�$6���e7�iY|,^wS�l2�̽�-1r[��2���S(�-��@Q�����מ�V�8��be�������Tl�<��j�4j�p�h��Tػ��e��%j^�ץ��fa���ppA
RE�`��!򯼠��)�9�Iy�:Rޒ��0��IyS`u2���}N@jDA���7f�4��DtͰ>��6E��l(Z�H~6�|EK� }0t܍9��°����{�;��߅#�i��:���W�Z-�7*�[|��#j&�a��+���МG�i<O����\1Tj��D�T�+7B'�qFAC��t��=�8�����/��_��M��\̑U��Xi�]���38)J�2��	Ε��*N�9[cjɞc��ρ��f�8���/�o�)�`~��_er=��@�d�_W�N�>��A���������b�%�IZD9�	/?4�=�pI�@OKnڋ2��f��T��jU�*/�qY�T;!Ǩ�����&:}�2�N_g�s�fb��l�1��W�Ɵ:C/>�����&�O��m�דO/x%��}RfP��D�	��y�%M�mj� &'��@J4}���gbC�|���,�0��Pqb�ے�iP�+��a��i�!�4A�DD��Bb*�hܐ_t!���s�r�3��WveL#$/��S�O� '�1�a��07��a�C��=,��R_D�)P>�.�աq<�6�]�"�^�q7����d"u/�j�UB�ʽ�dܩ�u����и���IC�e9�'C�o?^�W�����\O��ͤ��lh�|����h��	43�ă(�V�Lز��b~2�Gzt�?� eq(F��2�/юgu��>h��H����	�+(�/]%!���q���J�qk���6f�Jf�5�l��8c��j�&�M�V��<�Л&��'M��~+�!�'P�1 ��N��X���������?�j��v8����L�k�@�,c�[��4m~&[S8q5��fF�82���gJ3{�9*|K��m>��R��09u�*Fw l*P�k�Qs��f·�l���[�k�Bn&=cOT�d��Ļ��}٧����N�8	Wh��\|��,�����+$��X���g
�Lf"���ѝ ��u -�I����(0&Np�>���� �N���q��*�Wu ��awﶻw
��h�HC%��|insn�MT��^&3Z�9�qS�a�/8C���h��������H@�'� R&��@D�=��o�D��[�02��(�Θ�I��@`���F� �i퉷�t�6*�{���(R�њ{`��p�[nꀈ��\i��G����'�љ[}�@�(r�6[O��l�1�r��Z�-L�e1����D�q%oѓ�P8Y��.It�h{���];Ք ��ꢅ��`����Dq�x�C��|Fz͊-�ʪ;v����sbg��d�~[l�:��k�Z��4��1s�,����{��*������Y��y2��@�p\ n1���"{�9��ؖ������Ȼ��ݦ3!��Z�!aX�kC�il/���N��W�h.�v��lkπ�ɠ`��e$�a}H"2	x��2 b2{��-��i�Y��Y��{�2�fzw�O��i}@Y�~�p��K������]U��ϋ��Jf��;{]~���TgCI}�1�,��UDd�V��;7�\&N���"�1S?u�mN/��qa�Ra����(�!� 5D]��B}�%B�}�����c�s�3����9E�$ݦ@����Q��c2т�"��~�i�����<$�B�=�Hx�Ae�{��6=yJd=����םfؙ�[������	��9���2�[���͎85x�w�
��D{	f/�����r�I-�H[2�.��j.C�I��+��K*uYI�8\�loC����7֤�Ա��J�~�I9z���ˤׁ`t���ًl�A�w~>az���"����H��3l��Rt���ʸ�&�vt ��~���˸Mh�o���h��>Y��ƨ��oCx��QzÎ�4���ˀH���ԑ�oQ�$�
�?2��Z�� oH$ ;���ef-�1��ɔ��u�t�saj��9*�;h����4�$x�rϷ�B�������$���5�������"2'ŻNd��y?�8�� 2C.=&2Ӡѐ��8��������[��@�\3����@��L(��9/��T��Ih���c�� ��;�P�Mf���MBz{���f^/��w50�8ƻr���~��K��
M����8��9��2`R����~�0�k�Nt�u�Si�C��%�A���E|��\ˎ8�/���L�w��N|+7æ	*���]l�tp�u��Z����x�>�]9���	�E�Щ���/U�i9�i��R��_˙��K
�t�٫W�O���z���ʶƞ�w������������0����Ee����R���nu���)�UtY�O ��,ɳ$B/���u�b��18H����PI�#v��H�F�z�q;g�xIG ��W7z�z���0ེ�]i�WW�����_<,R�7�Us���QY��	p\-�o��`��*�����+�&�Oc�;�UȢ�?���l���T��E|J�L3d:�:BK������mK��r"-�빎�t�ud�x�LLԄ"5YOM�������t�̆i�e��٘�����mO8ih ����Q1(��&ڞ����)C���L[� 1!�r�/��!Y@��H��0 �Yo�����IӲ7����g�30[g�WS'J�.��mH� T;k��?L��
&��ZGd� \����o7ca��,`��U9��Խp�Y�b�1�2:����G�,7�Ed� ӯ��,��Ķ��CF��� �b Z;�89V�'�{�������9�C2
.Ky���|��E~���y��I��	�	�_]�3�p��n�	�Q:Pd�b�c�4��I�m6���Ǻn"`����?���XX���0!.�ؾv�B7T�`J&AVbt�L����ɞ�(ۯD�MH��m{o�G�qV�_���c��؝��n�:z"5�.�ݺ�(2\����>e5��ҫQS�G�R;�$7m��Z����tOI�Q=F�7�M�Q^bM"3ߤ�,�td>Fy3�4�~����'Do��Bp�#-�z/%�}�M�Tl�̪�21
��E���c���r��l[#J��S��;[C�Z D�%'��c`�MC�"!�<2���chΣ4���h�Pf���{�Jw�Ҹ@��	^����lc�=ǻw�g�+�ʠ��F�Zyr��t�h�Q	XQ���N��8w�\��@ȗj3�Q���^��2<��4J0��հd��fȈ�}Q@0���9�B�x���
���:^�H���l��\���%l��;FG]5���F� ��)f�*���H*kPu}<�$+�@rShȿ�>cZ�/�����3����n~��̓�[%ǯ���$GJ���^tr|2�`!-��9�鳔1+ȭ��5&��5��k.m��=�.����u�'2�o��->÷엪]p)�|-� ڠ���ڽ*G{ě���A�� ��������`r �i�@ay���S��j����׊��A^`0�X>�j��WM ���=
 ����%vM�Oz����ǡ��W����\!�� s����|JiT~r�م	��~t"_��������K>��sQ�!ӷ���Yy������QΞ�p���JsW_�CP|�p�0�h�o[)�zԫ"��3��tb=��iYd��T��q�9��~�
��� �#u�������x�����n�@�[u��������w�'�韹��Yi�8��'���Y�Ncv�(��nf�/u�����z=�7�l�h��A
VW���7��ί�w

���59�y?Y���E�F�	�ҡ�0T��K=O�+��
�gh�4�'���d���g�'�Ґ�15f }���}x9���l���ЕX�8�ы4+�f��O|��'���    �Z(�	?�II-P£�Y��;H�$q��� �5y��z�Zj�i�-g��ڝA ;�+����H�t��6��{�ng8L;��ʫ�V2�2p�E$���n-��D�]2��Ē >����s@h�e���=H�&����)����2�j3�E���[��L���g&�:-o�m';�5��N[����~:@va�$�Mac�Hȁ.�,�E$��u�a��m��q�h�IF�ӡ'0�=st-�(�<=)ta"�)}0��X�:>�rKb�F�R:�p���f�V�2�/�������z�
n������2]�-�#��0uU�	�[^gd��/��C<���2��D�%����Ò���4t��]�ɇ���\�.��hVN���;u������z)c���X*5��G3X����T*���Ie|o��a4��PF/����L��4�b�m�_�fs�f�<x"SL
$��:P�CI��,f����~���(h����8�$�	���L��!C���E�Y�9\�8�6�1�Tsfo@��0��X��t�-cZ�=l�ȡ=�dNb��.lf�E���=�N��d�%�ye�K�vF@�O�2:�s�157>���Ci�ky���@�d�j������U�c�n�'�>'��N��4�>�Q��sp�W��c�)��"k�Q��j!%UC���60�=x�e����D�ypX~Tζ3;��������H�:�sS���qBA���^ �^h*��Z�Ϲ��<_��p�946��L��8���q�^�e?���o:Ln!"�k�WLf��m��m39�F����O9tH���}���R����F��g�&��/����=#�9�,IOph�wn8ņ����n��/��]ݙ�6a9�?�u�����2���4�n�T��#O���]Ys"��?��@T��p�|����h&���`����ki;� ��	���A�u�p�,��Í4e;m?�mT){��1��r�d˱D��u���E���V}6Pr�Z�u��BT_�B��a�Q�B�iI����-�N�qU�G0[���� ������粶��8z᥷7@�Y���}r;}����|��A	a�߼��'�ٻHp��e��8�>�x�QA���`�A�^�g���z����l��	�m�]���r�j2���.���B_�s�l���dw񸭴�v�%|��Љ`8x���	V2Ƥ��	9�v�)ne2t�8v���a�=�y�v�iw	�i]A��{|�6E�E~� ���3�3\70*�H��y?��4Ţ����"	R�ͬ����V�3�-.u��U���Ҫ�������>�3��$�!M�74H��fn���@~`k2Ɛm[l�b�����&(!J�Mz�����N�{�!"4���|�1��rbf1.���Cb�2�����$Q7۶�����\+���o���G^v��i9����ҡ\D��~�zB��G��q�+da�]0�e5녲�|/m0`�&򯜹��b
�$��Db͹�_�O�E5o��R����%�Ī�?�Y�'�<ω;������,��������� j�$�!� ��,K{R7�b^)��$=&k�����Xa������G5�QSj�,�T����0��099��I���q���?%��й�T��y�YW�l�����g*���:��w�@��0!w~����f���8��	9OmN�|���AHg�%S?�9�8����p̡�]D�,/v~#�'����ǋL�F/agN����Cp��Q���O ���q^ɞc仛��fQ�qDP'�gG����Ψ-��7��ͼZ6�Up�O;�	b�B(�2t��~�4�o�G�q'sd�����]<	�L�)���9�?�ɂd�Z�0U{�村G��}��,yg�͸C�92���9!2o����{�3�C�����yO?��ژu�i­�(�L�!���253���W���X�T$�0��(���4�P��'�)^�o�=:��B��g��K����j�e��d4{W͖�����q�<�7$��m����f�$���%'��vɢ������@ӧy�������f�_#,q������V��{i�D}�!��f����� >�]��$�<��!�hs"v�Y(��d\k�P�s2�*-��̒�<G��['��ɴq�`���0����]ܹ��u��.�p���=h���������|����x����6{����"�-��!ӡ�k����	�N�&����mq&Fjv_$a9L]���щ����A�h�-g NC��g莙?��%,�?�Jl�Y�����T�MN���f��
�r��yAח��+gw�~�W���/��)��H�,d�H?��N�N�݄��%^�:�¾@�D�
bbǃz�/k����3>���O?%�gD~���d�G���O���ٚ0Xx�Xg�=/[r@�����G��x�2�e�g�y �WMD�v��R�5�!�Nb��f&!帻}��/:�&���s���l��گ���l�C�e�4��6^����zv~p4�v�w���H䫶⋶����757Y��M�&8Yݖ�����a�VjD�Uմ�7j�>O�DF��F��=�������C�OK�'1�a{/x$� �'÷��~h��РP�o���zS��c9=ez�NZ'�{�5�"���A�m+�Z/�Ռ	<��yl[3Nj	�_Y0����l��J�.���s"����Q�/��ͼ�b������}�`Pt�<gR� ��/�Ӑ��=Z ݄�@�n���:���^6��e�q�m����Xn�x�+1N��Lh��Gh;�v�z��,�(� �Co�d�-�A��<����J
��ql�� �'X����%yB��5�. �3M�_��cZŽ�D���@L$A�W�1+�����Ѝ=��&�
 �2�l��fO��N������G�L� m~nӢ��� L�=X5�j{���jOC���wE���gt}�Ձ�=�WW��V&�t�����>l�Br\-e�0����-�� ��o����n�äH���ia����������ON���qr�͔�	f� �r��p<���,K�al�ł�z�<0z�J:ջ?���ڬ)4���m:���+�F~�Ұ�ۤ�q�VX-g�F-P@=�<%��x�[  џ���.َ�
�M�(B�ɼ�%���=8C�����N1�,�����\kj�l�!D[p�tΞk��G{ҡg0=�{�G��)���M�!
�A�zW����O��hB�N?<!�����R�^���܄b�*��ǿ�/
��b����no�h=�����)�="G���̷�:u�f}$1�ƌܘY�
̈́��ڴ�$��L�V�"���;�ǮAO�����x��f�R��Ľb��f@|�:�f2�D�\@S�iܴ#��ݦ]�)��B�����;�ŖĄ�W�D�����?�f>Tf�:�"u���ȟ6|��iQ�7{�)��I7�dC��0~Ea>v�o�[��"��L�eB���	؟�}tl��G0�H�ܾ��ݯdiz�ޔ��JE]߃�zqHBoL���َ�10:`�h����!�ٕO`;��J�x�bg��M?4}��+��hڄ<=)�є,Tb��;��Qk�jB�h�@�xn�Uk��x���^�Px����y�|�Ժ�Ÿ(��c*'�����6`�����;--��®���&3aH�G�Kq�j�_�)���4�������iv�u��Ӫ�u���J���3�&�o1���K�- �/7pOD�zAj�?v�\�+�
,��S�������
`x2����sr�	���E	b�/��2����]�ǁ�>ܗ��\ 0�T�p.NB9��bd��Q� z(gcs���C�w{�Ef�%�o=�GɁ�����@(�g�}�mL�%X%�"�7.��]����m�!l]/d��_ޔ��rT���Z*`���~)��}���E����������O���4=��v�.Ƌt �
  '��<8��X?�Rm2zK��V��&kL�.��4��d�A�X�����:8���Qʰ���yx�\W�Մ�\��}W�V���� �
a�nW~N�,QW����܍�܍��t��q���^�Ǉ�j�_Vx�'�z��	)v��j�:n��-��TXΠ���P�uy]朰b�Y�H5�OO��f��¢7�V�����ō���躓��d�|�]-'7��͖\(
��O2đq��m9�d���)�!��Y�^�����[e�����8C���y$����;,��-Z��(�a!���ΐ=���LT�~t���8R�aA"f3���`Ĩ����h�*2��f_5�?4.3頋��H65 0��Y�|�e�PVۄOp�w��ScFHy46@��F[�.
m�y�T`F=T�E�8a�m�FT%���F�����kMc���{���rk��F80�*[$��֥��ͥ�'�7e�;s|K���#���z�$CQ���f�
���f��1�9�:�{�c?Y7Z����K3x����,�_(�	�KG�����P�<n��\o[?*��~���Ս��E�W@��JU�!D뭼A��jx�%����Z�e6ê)C.llM�n�::<r��Swޒy#[��P�x����:Ki����v�'�2��9i-0N�Ȁ�rZgH�vd��A J;NdP  �`*�"+�구8s���?�
-6W���w�Y��Ӑ��*د?w�F��"����W���^_��5������?m�Ʈ���ӂ� =����0��2m9D�I���#�8�&�89Z_t�]]��A���)�0;t ]T��F-�2xҍ�GKi5t�'�e��G�v[����,g]�����w�>I�<��H2�\E��{����A��Va*�/��ʒ�8d��\��QD|@�0.qPK��\�	�?F��4�}{��L�����I��4yE����H��e�w����Ɏk�Л�"��xc����	�Y`0p@qԧE�L�t�FGE��-hzJ�*�����EU~1L���	�:0�"�5�"��5���1U�E�8F���!/)8�hB>Pp����q4>)��霟�k���'3�t�\9ҋ��c���D�~)x��W/���Z����T͂�����%v���-���%�y$8d�6
dI�~g�Fy���=}�Y�|Z��1r)"�)aO4z�Z���i�h�f�uC!D�H�nɑ���P�<P]��\1�f�^^�ޗ+ņ�mo�a�L��~8���X���=-�VWl�m�j��s��6*������L۪�ԃ��j���r� ��@.��6�)��c�I��i�׈�����p�x�C���,GT��vY)�t�Yc�k��Nf�G<PV3V�vk{Z�!��UH�>-}���cxc�b7���Θ��ǻ����yI���݊��s������3�c�DRh���$���T��+��ޞfe[�w����q�Y}��?)2�S�E,bRH�-F�d3�q�b������Uώ<%��~x��Z�m��dh�e��,jH4|<��ٺ������5���i���ܯ�����C��]LÇp&YM��6j�Ⱦ<�M�؜an�)��� ;�z�\�O\�6���]ޚ�`��������}H2�v�̽����'rg���ƴ1�Y��J=��t���i�̅�}F����Y�i���Gn�"1���CE6\�Q�h�Nx):�z<x��h��I��b�k�Al��n�O�ڬy�.��0"%�7��-�'V���7�3)>lԺ�>q�=�5i�B;\�
�4[�zS���lY-��`ivRR(%�Q�,�=�2�U��֎b���0đ+�-l��fL��J��b3�D~�aЀ���@  M2���s���h�c����Q� �$�����-�i�#�*@�`F��V���`�#��q&J� �n��e2��5N�����R��^��'Σ5W���0cvGH�큖�i�[˒E���g�E����!�~ꮻ  cH�yXW�5��Ŗ��w��2�Qd�ϩ2��t�^��Q\YZ%Ș�����������D�&q�'���͵?L��1��xU��A���<M���1�(�GW������E�DƊ�7MJ����G�Q���������f�Ћ��;ͰL���6Ӌ���j����4K�.ꛛf��`u_�-о�˙�$����J4�Ů��1�D�I��$���m�̫RpY�S��ӂ�^�����/u�R�/��4�ត�=���8�;������˫^�NJ�θ�����Y��� /z� �B�X�(
��e�iQ�n|z���O�
�U�SO�����^*)4:�&t��
�b������K��.�E��670�Һу桼)?I*��O,%L��-B����#S���}���.މ��i�L�lJ���hi�LQ�H�S��w����[Q	(`�^������)�'
���9����H�<��A�ę��6��gaQnT�_�U���F��h@�@��	y,HTuU#��@�AD|5��Ȁ�̕n#Hݽ����:Ŧ��
���sbX����&EW��,@�v穣;�r�$Dʩ��D�����m	"='O�!~6pH��������:��kt�h���xȩ��?GXl�N?p�fPq��p��p��E�(�C��=>=�w�{J!�C�i���}#5�S��[a9���?f�j�c��ͧJ���v�v���\���u�:(����_��!v�_#(��C����{5��о���@as���g>������>�      �   .	  x��YMs��ϯ��I���/�r�:c����V��0�����g�65��=����Ƕ i�ޚ|��m���ݯ^7�.on�����t�Z䓍VE���|t����Kx@�����)���z�y$|��>��h~@��-~��o��8���e���x�CR��L���G����l��~I�p^�œ�6a�$ɔ��1><�U怦{�&~G�d�d4��w�,8k�&@j�� ��=ӈI�Idr7�1y�xڭ��\���(���߄�(@�Oa
ǜj&�5C��S��k�D�YgG���Ƒa�����&T:�Q�5�%�^�I���k����x�S�zI6U�L��/ظ/,p8�T�]}Q��
B�.P���U���.P�e�[A�tp!�� �Ԓ�KQux�9)�%�tJ�!�9K���gU��=|�@���.�(�_~!�ر��x���K�l%(Ie~b�gy���| � p�d��"�\��U&�k�&]D:�.
6�I�%�"������́t�	o՝;9��;�K�	�ȨI�=���Kr�Rݓ�����7"b���=����v":$�W�0���@U�D���#N.�e�� 05	�B�B���!fxM�LK��$������tDٔN�\Ի�׷��b���J�f-(�h�N���H�݋r#xn�7�P��^�A�B�UH���y���լ�/�pc��j5�x�����
k�+�G���!��%6$Cd}BC*�vM����~�+���g�|��,K�]������C1��N�WV6�M��� �	������0�niZ��ށ�`Q�`���P>FBRo����ew��e����Ru%k�5_#5Pģ��b^Y����Gͬ���65����Fc������	u>2
'���[)J�"_�����c�.��ܞ�q4��s� Q/n��M.�וf]�x�J<M����P�d���z�(�j��#ɱ�.��K���X;n�yú�r4��%{�Zb>��WMj���fŵu�x�����NwYC��l��Us_L���ҥ�_����B*G�x0_C���&�.ƴ{�0B]�`M���q)T-F`��ܵ�t}���Qd.i�*[2�[�`a�0�0���Wxʂ5��X���Qm(�~o��)���Ȣ��O@�VY�j6���L֬��M�u`����Д�w�f6|O�2;�<����qҷWIj�$�-�1���(��쉻��%$�3�F����v�֭�]����.���9ـ�X8�Y�����@e0Q0&-��W��L1����p6��ym�O�O�Wx�_�/���9���՗���h8s�;����D�6G�l�`ҕ�����3�^pL ���F�y�������l�V�X�����=/]Z��%�]WX�z17�Qho���v;s���	�ܨ��QΓ�2U�Ϟ#���^��J,6�䯎���Ơj{��%��h�I�xe܋c��/����;�o�#gl4�
Ʊ�.�I���x��̞�=����`�b��"��#���b�Օ8�6]U36B]�K�٩�u��[��D#�ź۸}��f�3��+��D;���*�Î8��W��(�M⊟ٍ�gq�k���i�!��n
����.���N�b�?��N.�l,��C��`&���m���|6M4# �W?����x�Չ'����H%%#fS�.�aܝϰ$v����=�$G�k�}�p��^�a�DZ*�5�(W�JiB{�=/C�]���'����`H�� ���xu�@c�h�M�n��fɲ��%�\��C��ОZu�0����	�jC� ��
Vĸ����h)����3�#�vŜ�`�8a]�{�h�Ws/�'�`�|��c>�R�æ_�gn�IK�8�/���꿎L�?���놔Ĳ��C]��s�kw[&�
��rD���/��gW����`п'��'0U��AW��������Q���4V>��6�.6����&��(3~�a�;��x6[�rκ��$�v�=�Xr�J�X�lJK��$�3��cD�"�J�K��oG׋��S�~�!��8�b��������p/z��?|0��W]�g/%ϭ�F�s^�W�3<�V-_?���~�,伩�������i^���T�&��b4a��eUA>�����:4WY�w���WU���g�����c#`I�al��t3I��ϸ��֑O5T�륰�DGd�N2�Bf��ۨ{��4����բ�>o��p�6t��u�F�$�3�̕��������|�`���IPe������k��KdQ�F���wvD�      �   X   x���v
Q���W((M��L�+JM���Ss�	uV�0�QPwM,.I-�S״��$���!<��@~�E%D�0��/���� �<A      �   �   x���M�@໿bn���N�t2���-�,ZP���}��0�އw��J9d�|�~nt9�/��z8%�c�`N�W��zB�0��o7#���X��x�e��c�oT��(�EM���t��M����h@G��ͤ{��&���E[қ�ׁY�s΂�9ݫ0���]��M.כ��PD8 ��97z,      �   y	  x��X�R�J��StU�֡
;����+�!���	��n,������`^&U[����j��b�3#b�T������k��..����ոdyGU�EɨTp�~:�;ZwB���ϊ����)��К*������(�'pB8�8k����c*5�t�X����_���Cs���h���tl>����q��������Ǜ���:�cN�-�ɒ�`�|�8�ӒM��F0�Ҳ�+�WrF��LTB��3Δ�DU�}qI��Qk�\N�|&��'6�Q���y.�(m��z�����sxy��������$��8F�W���C1�JSR��vA'�8��b��ё�*��I�h������n�,ࢰ��q=9v��ْ��5c	���'a�m	�(k��6p)f+��`�m�)Ԕ�)�e=!X�KY;���9a�"�.���z8r�h̿�~$­�z� �T�Ul�o�n�I���GE�P�j��X�j��j���gJ�"�4���$-�P��l{�I��H	�
gKFaU���؄���Y�����k���t!�^a�f~U�B���Φ\lW�)�� k�U5�7�D{VY���MU�(~T��D��N�$�<��x'8�)�k!������w�N�^�������Μ�R(q�;���'yN�*��"�v�b����y����~�%��ɲK�C���Y���gQ�D�z���D�s�<�OZ�E%���˱��""��Ԗ�2p(��b6��vFᖡ���.�X�9#�F�c*��V��ΩF��f����,���8�d���!#٨��`�Ի5����Й/�p�������z}���l9ߛ���򘔂H.���T�?4Eڛl|��(���[ZP{������1�"4���"��e��i��ћS�r�����~�Q V���?��޲���t��s�8'U���8��j�%�g���+D��{U1|#q��h����[")��||CMЁ�A*IT|V:�]a�\�"5���,C��,YC$�^��*焯\7�8c�,�b��A�p^V��?�ctb�PՔ)�_��or��7�+�u�>ul{�m�Bp$�F�&ҶS_ ��c@%�8�g7�ԛ��^fO��f&� ��͓>�5t�p���}#CNQ9�ϔn@���!�Z�	2DY���h@�B/�%]����<� $e^�M���%-������^u7šـA�DI�$cQ ���]?L�ߎ�htnN&f�Ē2P�)mQJ�H���!��b)�D�.$�&��Fc�v=Ҥ���6݁���5Z���g'����e�я]�Ԍ�	�[��]���+)+�%�C�K���dו#���5�6����c'hgq轶'��ɍ����륃�U�BjU:�dd�m�^���kS[�0�<hC�����W8�q�Q�O;�1�]X���ߔ��W��,_���� 5�ї��U��U'�^�򗓶/Q{�%Y���
֙�H�|6�9�� '��+��n��"��
�;�"V�</��
P����ɠZ��s
��`�P|�!u\TF�*04��vUЄ
f9'��Q��Ğ�?��ͫ��Nv<��M��V�ߎ͈	���I��F�Jq�x�f^b<ƞ1[��טv�Ls? ��p���nM���?�g�1�wI%�~�,�����*'u^��[KW�O�+p��a	ӗ.]�C:#v��+n�70v�-����Ǆ`�'�_a�;�n�Ao#�J�Ap����y���V˸��� �1�+>�+m˞2�7[s�	�6_ �R(�l���Z��l����>�sd@|�F�拏�����6��3!ܬ\������������ʧ�&�F�#⽢r�Y�����	�W�Ă4?����&��.���u���BW�Ƶ��`B���l���m��R6�	�/�\o��{�~�����A��a��q���z�eq�u�1S|�jd���<_#��
7~��x�O�g%Cꁃ�m�l�T�aeD�}��J��G��S���ѵ�:'��qA��$��dc���m#�[��_��&x��{��b+�VoR)�mdy��&��'���Y�7k/>+kb<\��wb��G��>����G��l�H������G���^��k����~��'*GӀU�ن����A��
�D���.�q� ��U=�r)��n%�n�������*'r"��A[-)���J0j^k$���uA*�X��\	&�
bQr<�1s��Ű��i܉3\�W����`����$:TKhb���/�A�!t���+Nq�����{�y�v�n'K;^w�2~�;���\��������$��A�&+a ����܏R>���DҴ}�"9����c0�d�>�AǏ-A�5ě7��      �   �  x��V�n�0��+tK)����y qb�n�i����\���_�T�k7�	fv9������iU�=��nX[�|�{��?.�ϖŧsB���_��k����ogw���9�/u�ߢᒱ�F��� G,AI�$Ň>�ãY}BO�~�M��x�Sx��^�	j�Xx8�V���Oo�kM�
-I�>�{��0�u�*��8PՓT?s���G4��,ş��Gǧ�Фރ>��?��L��V<e?���źO9I�ke|=��k^��;cU�m�3
Y��(5P�P)��	�� Z��⹅nb���C���y�,�.IJ
vد�x�g��4�.�U.�ᔓ_��rN���R�T��>�og��w��6wN�2Iw��?b=�43\j�� -�t��y\�Z���KR���ipn���$�d�=���z�Oыۨ"v�3ϓj��Xt�����o&�x�`n�Ӫ���3d܁��^�b��D�L�2��L����We5�"��M���%*Q�dŕ�V�X��r3_}0��d�dW��G>^�����Z(��7n��@
By^H������"Y�l ��U�CM8�=}��\�,Gm"oug�X�t��{ŵW�1}�-�Z"��[����S�<Z	A�}7R���A�q���À�S����\���~�U��tv�
�<�      �   �  x���Qo�0���+��M��B�jOhq!IE�0�2��%�F�S�~�r���jK���>�wߝ�d�U�$O�c�mx��տ����/gY�i�%�7tK��.aղ5����#��"���
�C�S������Ä	{*4ՈX��c�ELhß�72;o��d#�$"Rg�7D�J��� %��Q��.`�z��A�t挸�0���	�SН�=lmj�g�ઋ��R�+D�z�6 _�T;������w����ĹB�T���)�^�1@Y�4\H�ʒ��%����I�(�-�'�H������]0a�rF�ƣ���R�\�&e�aI�Ɣ�x�>��Թ��B�Թg�ZӲn53��=v�Ƽ���
�H��n6ii0�q�A!Ek��؅q�Q��#[e!����0�+q�<B�6a[�z&3���<S;��y#�+$��9=u���O���=�)Ͱ�{wJ�Sb��K��I�~�aO�H�G��}'�m��d7tm��/���4���	�`��5�Ĥs/ț��&��t��S�v'C�r/��������ϧ��sz#0xUˊD���q����
��<
�H�
�y<�s�S3l��붎"�؛6���Z��!��}�E`n�ԡ�\�?O#0���;�����]�nЉ����_����"���Y ��R
��v�O}G ��,ݹ��y�����%�     