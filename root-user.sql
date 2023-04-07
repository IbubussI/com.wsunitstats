insert into account (id, username, password) values (1, 'root', '$2a$12$djbCoSBjRZ6FThQEirgAjuWMNC9MZ/afkUv/K/qr1isTkLsp6OWRK');
insert into role (id, role) values (1, 'ROLE_ROOT');
insert into account_roles (account_id, roles_id) values (1, 1);