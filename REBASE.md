# Limpieza de historial con Git Rebase

## ¿Qué es git rebase -i?

`git rebase -i` (rebase interactivo) permite reescribir el historial de commits de un repositorio. Es útil para limpiar commits antes de mergear una rama o compartir código con el equipo.

## Proceso realizado

### 1. Commits iniciales (mal formados)
Se crearon tres commits con mensajes poco descriptivos para simular una situación real:
- `asdf`
- `cosas`
- `fix`

### 2. Rebase interactivo
Se ejecutó `git rebase -i HEAD~3` para actuar sobre los últimos 3 commits.
En el editor se marcaron los dos últimos con `squash` para fusionarlos con el primero.

### 3. Resultado
Los tres commits quedaron fusionados en uno solo con el mensaje:
`refactor: limpieza de ajustes en main.tf`

### 4. Push forzado
Se usó `git push --force` para sobreescribir el historial remoto con el nuevo historial limpio.

## ¿Cuándo usar --force?
Solo en ramas propias o cuando el equipo está avisado. Nunca en ramas compartidas como `main` en producción, ya que sobreescribe el historial remoto y puede causar conflictos a otros desarrolladores.
