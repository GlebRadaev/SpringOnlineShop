 create table cart (
     id  bigserial not null, primary key (id)
                   );

 create table cart_products (
     cart_id int8 not null,
     products_id int8 not null
                            );

 create table category (
     id  bigserial not null,
     category_name varchar(32) not null, primary key (id)
                       );

 create table products (
     id  bigserial not null,
     image_location varchar(384),
     price numeric(19, 2) not null check (price>=0),
     quantity int4 check (quantity>=0),
     title varchar(255) not null,
     category_id int8, primary key (id)
                       );

 create table reviews (
     id  bigserial not null,
     comment varchar(384) not null,
     rating int4 not null check (rating>=1 AND rating<=5),
     user_id int8 not null,
     product_id int8 not null, primary key (id)
                      );
 create table users (
     id  bigserial not null,
     email varchar(255) not null,
     first_name varchar(100) not null,
     last_name varchar(100) not null,
     password varchar(255) not null,
     role varchar(25) not null,
     status varchar(25) not null,
     cart_id int8 not null, primary key (id)
                    );

 alter table cart_products
     add constraint FK7xg877l1r2f279hmlcowu1cth foreign key (products_id) references products;

 alter table cart_products
     add constraint FKnlhjc091rdu9k5c8u9xwp280w foreign key (cart_id) references cart;

 alter table products
     add constraint FK1cf90etcu98x1e6n9aks3tel3 foreign key (category_id) references category;

 alter table reviews
     add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users;

 alter table reviews
     add constraint FKpl51cejpw4gy5swfar8br9ngi foreign key (product_id) references products;

 alter table users
     add constraint FKqmifheg6lnigfifvlmpjnuny8 foreign key (cart_id) references cart;
