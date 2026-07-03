<h1 align="center">ABSL - Atomic Bash Standard Libs</h1>

<p align="center">
<img width="400" height="400" alt="97460779410398090-removebg-preview" src="https://github.com/user-attachments/assets/75b784d4-2050-49a8-951a-7a42ebaa5f5c" />
</P>

> *Un intento de crear una solució a un problema "simple"*

<div align="center">

[![GitHub License](https://img.shields.io/github/license/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs?style=flat-square&color=cdd6f4&labelColor=1e1e2e)](https://github.com/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs/blob/MainStream/LICENSE)
[![GitHub Top Language](https://img.shields.io/github/languages/top/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs?style=flat-square&color=a6e3a1&labelColor=1e1e2e&label=shell)]()
[![GitHub Repo Size](https://img.shields.io/github/repo-size/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs?style=flat-square&color=89b4fa&labelColor=1e1e2e&label=size)]()
[![GitHub Commits](https://img.shields.io/github/commit-activity/m/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs?style=flat-square&color=f5c2e7&labelColor=1e1e2e&label=commits)]()

[![GitHub Stars](https://img.shields.io/github/stars/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs?style=flat-square&color=f9e2af&labelColor=1e1e2e&label=stars)](https://github.com/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs/stargazers)
[![GitHub Contributors](https://img.shields.io/github/contributors/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs?style=flat-square&color=b4befe&labelColor=1e1e2e&label=contributors)](https://github.com/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs/graphs/contributors)
[![Discord](https://img.shields.io/badge/Discord-Atomic--Cathedral-7289da?style=flat-square&logo=discord&logoColor=white&labelColor=1e1e2e)](https://discord.gg/A4vQB2zxY)
[![Patreon](https://img.shields.io/badge/Patreon-Support-f96854?style=flat-square&logo=patreon&logoColor=white&labelColor=1e1e2e)](https://www.patreon.com/cw/Atomic_Cathedral)

</div>

---

Mis Librerias de Bash personales, algo simple... bueno, no tan simple, jajajaja, pero la verdad es interesante jugar con las configuraciones de Bash, pero bueno, aquí les traigo en detalle el porqué y como usar estas cosas

---

<h3 align="center">¿Porqué crear mis propias librerias de Bash?</h3>

Pues, la respuesta a esto es un tanto compleja la vdd, es que, siendo sincero, tengo varios proyectos que viven sobre el mismo ecosistema: **Atomic-Linux**; y entonces, necesito un medio que haga más simple el uso de mis herramientas predeterminadas, especialmente a la hora de hacer Makefiles, scripts de instalación (install.sh) y/o configurar ciertos apartados visuales desde scripts de bash.

Entonces, resumiendolo bastante, es mi forma de decir "ya no quiero volver a hacer copy-paste al mismo codigo 300 veces, entonces creo mi propia solución", y pues, de aquí viene la idea de hacer ABSL <3.

---

<h2 align="center">¿Cómo usarlos?</h2>

Si, por alguna razón, decides probar esta librería de Bash, ten en cuenta las siguientes cosas:

* *Está en Desarrollo/Beta*

* *Algunas cosas pueden cambiar a futuro*

* *La sintaxis de uso  puede o no ser la mejór y/o puede cambiar con las versiones*

Entonces, teniendo en cuenta esto, vamos con lo que quieren y... la verdad no sabria explicarlo, JAJAJAJAJA, pero si quieren pueden ir a la carpeta de [examples](https://github.com/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs/tree/MainStream/examples) donde está el `demo.sh` que les dará una brebe explicación sobre como usar esta libreria.

---

<h2 align="center">¿Cómo usarlo en mis propios proyectos?</h2>

Pues, es relativamente facil, les sugiero hacerlo por `git clone` que es más simple de lo que parece:
```bash
git clone https://github.com/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs.git ~/ABSL
```
Y listo :D ahí tienen esta libreria completa por si la quieren usar, y el metodo de uso es bastante simple, solo con hacer:
```bash
#!/usr/bin/env bash

source ~/ABSL/ABSL.sh

absl::log_success "Hola mundo"
```
Basta para tener TODA la libreria dentro de su proyecto de bash.

---

<h2 align="center">Tutorial</h2>

Bueno... con la nueva versión `v0.1-Dev` que acabo de lanzar, ya tenemos disponible un tutorial de uso y una demo para desarrolladores dentro de la carpeta `examples/`, ahora mismo tenemos dos: `tutorial.sh` y `demo.sh`, el tutorial lo que hace es darte una introducción al sistema ABSL y sus funciones, modulos y capacidades actuales, pero bueno, ya, a lo que vinieron, ***¿Como crjs uso el tutorial?*** y la respuesta es bastante simple, basta con hacer lo siguiente:
```bash
cd ~/ABSL && chmod +x examples/tutorial.sh
./examples/tutorial.sh
```
Y listo, tienen el tutorial interactivo >:3.

---

Gracias por leer y nos vemos, que tengan un bonito día <3

> --> By Ange^_^
