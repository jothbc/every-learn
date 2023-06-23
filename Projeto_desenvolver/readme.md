## endpoints ##

- /login [POST] {email: string, password: string}
- /users [POST] {name: string, email: string, password: string, password_confirm: string}
- /post [POST] {id: number, text: string}
- /post [GET] // obtém a listagem de posts
- /files/:hash [GET] // obtém a imagem do usuário
- /users/avatar [POST] [formData]{id, avatar}