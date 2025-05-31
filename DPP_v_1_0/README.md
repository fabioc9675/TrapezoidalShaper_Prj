# Creacion del proyecto en Vivado

Para crear el proyecto solo hay que seguir los siguientes pasos

- Crear un proyecto en blanco para la PYNQ Z1
- en `settings` ir a la parte de `IP > Repositorios` y cargar las 3 carpetas que inician con `ip`
- luego en tools darle en `run TCL` y correr el archivo TCL que tiene ya el Block Design completo
- en Constrains, darle agregar agregar un `constrain` existente y agregan el archivo de constrain

Ya con esos pasos tienen todo listo para correr el proyecto

Los archivos de los filtros FIR y TRAPZ estan en el IP de preprocesamiento, para cambiar los coeficientes hay que editar los archivos VHDL correspondientes a cada filtro, pero por ahora creo que no es necesario.

