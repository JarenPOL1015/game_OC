
# 🪙 **Juego de Piedra, Papel o Tijera en MIPS**

Este es un proyecto que implementa el clásico juego de **Piedra, Papel o Tijera** en **MIPS**, utilizando un enfoque basado en ensamblador. El juego permite al usuario seleccionar una de las tres opciones, y luego la computadora genera su propia elección aleatoria. El resultado se determina comparando las elecciones de ambos participantes, y el ganador es anunciado al final.

## 🎮 **Descripción**

El programa solicita al usuario que ingrese un número:
- **1** para Piedra ✊
- **2** para Papel ✋
- **3** para Tijera ✌️

Luego, el programa genera una elección aleatoria entre **1** y **3** (simulando a la computadora). Después de comparar las elecciones, se determina si el jugador ganó, la computadora ganó o si hubo un empate.

El juego funciona de la siguiente manera:
- **Piedra (1)** vence a **Tijera (3)**
- **Papel (2)** vence a **Piedra (1)**
- **Tijera (3)** vence a **Papel (2)**
- Si ambos eligen lo mismo, se declara un empate.

## 🚀 **Funcionalidades**

- 🧑‍💻 **Entrada del jugador**: El usuario ingresa un número que corresponde a su elección.
- 🎲 **Generación aleatoria**: El programa genera un número aleatorio para la computadora.
- 🔍 **Comparación**: Se comparan las elecciones del jugador y la computadora para determinar el ganador.
- 🏆 **Mensajes de resultados**: El programa muestra si el jugador ganó, la computadora ganó o si hubo un empate.

## 💻 **Requisitos**

- Un simulador de MIPS (recomendado **MARS** o **SPIM**) para ejecutar el código ensamblador.
- Conocimientos básicos de MIPS y ensamblador para comprender la lógica del juego.

## 📥 **Instalación**

1. **Clonar el repositorio**:
   Si aún no tienes el repositorio, clónalo en tu máquina local usando el siguiente comando:

   ```bash
   git clone https://github.com/JarenPOL1015/game_OC
   ```

2. **Abrir el proyecto en MARS o SPIM**:
   Abre el archivo `.asm` en tu simulador de MIPS preferido (por ejemplo, **MARS**).

3. **Ejecutar el juego**:
   En el simulador, simplemente ejecuta el código. El juego te pedirá que ingreses un número (1, 2, o 3) para que selecciones tu opción. Luego, mostrará la elección de la computadora y te dirá quién ganó.

## 🎮 **Uso**

1. Cuando se te solicite, ingresa un número para elegir entre **Piedra**, **Papel** o **Tijera**:
   - **1** para **Piedra** ✊
   - **2** para **Papel** ✋
   - **3** para **Tijera** ✌️

2. El programa mostrará la elección de la computadora y comparará con tu elección para determinar si ganaste, la máquina ganó o si hubo empate.

## 📊 **Ejemplo de ejecución**

```plaintext
Elige: 1 - Piedra, 2 - Papel, 3 - Tijera: 
1
La computadora eligió: 3
Ganaste!
```

En este ejemplo, el jugador eligió **Piedra** (1), y la computadora eligió **Tijera** (3), lo que resultó en la victoria del jugador.

## 💡 **Contribuciones**

Si deseas contribuir a este proyecto, ¡serás bienvenido! Puedes realizar un **fork** del repositorio, hacer tus modificaciones y luego abrir un **pull request** para que tu código sea revisado e integrado.

---

**Autor**: Jaren Pazmiño  
**GitHub**: JarenPOL1015  
**Fecha de creación**: 06/Junio/2025
