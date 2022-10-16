insert into CART (ID) values (1);
insert into CART (ID) values (2);

insert into USERS (ID, EMAIL, FIRST_NAME, LAST_NAME, PASSWORD, ROLE, STATUS, CART_ID)
values (1, 'admin@mail.com', 'Ivan', 'Petrov', '$2a$12$GRDGUDo8RLHGjTZ0MraEMOWsUutwHste2eRxlR/HJeTU9e1q9OYIq', 'ADMIN',
        'ACTIVE', 1);

insert into USERS (ID, EMAIL, FIRST_NAME, LAST_NAME, PASSWORD, ROLE, STATUS, CART_ID)
values (2, 'user@mail.com', 'Petr', 'Ivanov', '$2a$10$wMI7.0yLQIaDC17XMsEfcutUFlX4.7dJSn3cXDLXfECVhzJqtkjsS', 'USER',
        'ACTIVE', 2);

insert into CATEGORY (ID, CATEGORY_NAME) values (1, 'Kitchen equipment');
insert into CATEGORY (ID, CATEGORY_NAME) values (2, 'Home equipment');
insert into CATEGORY (ID, CATEGORY_NAME) values (3, 'Beauty and health');
insert into CATEGORY (ID, CATEGORY_NAME) values (4, 'Office equipment');

insert into PRODUCTS (ID, IMAGE_LOCATION, PRICE, QUANTITY, TITLE, CATEGORY_ID)
values (1,
        'https://c.dns-shop.ru/thumb/st4/fit/500/500/db94ab656eb26e595a1c314a1a450bf6/46fc7ff60b4e94cb9ebc38ea24b24f1335affc54381a439e96643c156cd7f444.jpg.webp',
        1147.99, 2, 'Фен Goodhelper', 3);

insert into PRODUCTS (ID, IMAGE_LOCATION, PRICE, QUANTITY, TITLE, CATEGORY_ID)
values (2,
        'https://c.dns-shop.ru/thumb/st4/fit/500/500/1a29abf6bead71ac7d7cee4ad16ab672/3c5acd62a7731ffd2fcc1e8791ca2287434945138eea41355cf04eff88d8d59a.jpg.webp',
        11999.99, 4, 'Стиральная машина DEXP', 2);

insert into PRODUCTS (ID, IMAGE_LOCATION, PRICE, QUANTITY, TITLE, CATEGORY_ID)
values (3,
        'https://c.dns-shop.ru/thumb/st4/fit/500/500/6ee48a75e630d9e2f374a283097bb170/222b82e8b6f7419619a5af995e11600809fcc86b5b294b4a84388abb50328a33.jpg.webp',
        9999.99, 6, 'Стиральная машина Vestel', 2);

insert into PRODUCTS (ID, IMAGE_LOCATION, PRICE, QUANTITY, TITLE, CATEGORY_ID)
values (4,
        'https://c.dns-shop.ru/thumb/st4/fit/320/250/75ae0a2ac0d827f7069e67e64f29d642/e512f0959b40a3ad854bea18ce4a5eb6c61c6318fcf965f3c53b6b32717789b4.jpg.webp',
        4999.99, 3, 'Электрическая плита Мечта', 1);


insert into PRODUCTS (ID, IMAGE_LOCATION, PRICE, QUANTITY, TITLE, CATEGORY_ID)
values (5,
        'https://c.dns-shop.ru/thumb/st1/fit/500/500/9863c8ab5a58acdcefc66f229384a072/4811d025c1ba674311f854cae2a7fcd3d1a1e63146af4c92dd6a2189aba72472.jpg.webp',
        12249.99, 9, 'Стиральная машина Winia', 2);

insert into PRODUCTS (ID, IMAGE_LOCATION, PRICE, QUANTITY, TITLE, CATEGORY_ID)
values (6,
        'https://c.dns-shop.ru/thumb/st4/fit/500/500/69eee47480cc60d40b803f252c192345/d74f5bb0d8ae87b08f39ad4499e918b853b31ad6b2d2e519426e7e5550d20ffe.jpg.webp',
        12999.99, 3,
        'МФУ лазерное Pantum', 4);

insert into PRODUCTS (ID, IMAGE_LOCATION, PRICE, QUANTITY, TITLE, CATEGORY_ID)
values (7,
        'https://c.dns-shop.ru/thumb/st4/fit/500/500/1be10025d7217142dd1703751d7ac2eb/da8d77e21a426673741924a9517b8612c50c0f0f6d5397e38cabdf18b1afc312.jpg.webp',
        5499.99, 5, 'Электрическая плита FLAMA', 1);

insert into PRODUCTS (ID, IMAGE_LOCATION, PRICE, QUANTITY, TITLE, CATEGORY_ID)
values (8,
        'https://c.dns-shop.ru/thumb/st1/fit/500/500/b0e826869e00d663ce3392549316aa04/afcb19218c51b0fb024eeadbdbb1f001aafac5a55e05d77e69e0086cb124e2cf.jpg.webp',
        4499.99, 9, 'Электрическая плита DeLuxe', 1);

