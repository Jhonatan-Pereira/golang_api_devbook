insert into usuarios(nome, nick, email, senha)
values
("usuario1", "usuario_1", "usuario1@gmail.com", "$2a$10$MBVu4dUPM9KyxlRegRNcGO6dEi6Lxw/ReZSBOAalTcQZzfySDleqa"),
("usuario2", "usuario_2", "usuario2@gmail.com", "$2a$10$MBVu4dUPM9KyxlRegRNcGO6dEi6Lxw/ReZSBOAalTcQZzfySDleqa"),
("usuario3", "usuario_3", "usuario3@gmail.com", "$2a$10$MBVu4dUPM9KyxlRegRNcGO6dEi6Lxw/ReZSBOAalTcQZzfySDleqa");

insert into seguidores(usuario_id, seguidor_id)
values
(1, 2),
(3, 1),
(1, 3);