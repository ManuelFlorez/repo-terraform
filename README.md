# repo-terraform

## Archivos incluidos para crear la estructura del reposotorio

```
📦repo-terraform
 ┣ 📜branch.tf
 ┣ 📜members.tf
 ┣ 📜provider.tf
 ┣ 📜repository.tf
 ┣ 📜teams.tf
 ┣ 📜updates.tfvars
 ┗ 📜variables.tf
```

```📜branch.tf``` contiene el código necesario para generar las ramas __dev__, __qa__ y las reglas necesarias para proteges la rama __main__.

```📜members.tf``` contiene el codigo necesario para agregar miembros a la organización de github, tomando un array de username como entrada de variables.

```📜provider.tf``` se declara de los providers, en este esenario se trabaja con el provider de github __integrations/github__ en su version __4.26.1__, y se pasa la configuración de la organización con la variable __owner__ y la variable de acceso __token__.

```📜repository.tf``` contiene el código necesario para crear un repositorio en github obtiene el nopmbre del repositorio por medio del uso de una variable __repository__.

```📜teams.tf``` contiene el codigo necesario para crear los teams __developer__, __approvers__, agrega los teams al repositorio, agrega los miembros de la organización a diferentes teams que son identificados en un array de __developers__ y un array de __approvers__ ingresado como variables.

```📜updates.tfvars``` contiene la data de las variables a ingresar: __token__, __owner__, __repository__, __members__, __developers__, __approvers__.

## Comandos a implementar en  terraform

```
terraform plan -var-file="updates.tfvars"

terraform apply -var-file="updates.tfvars"

terraform destroy -var-file="updates.tfvars"
```