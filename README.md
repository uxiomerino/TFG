# TFG

Funcionalidades do código a implementar ou correxir:
  - **Punto 1: PCA** : <br>
    * Sustituir similitudes por distancias *FEITO* <br>
    * Utilizar só a ACB *FEITO* <br>
    * Utilidades: <br>
      1. Reducción dimensionalidade (explica un 73.8% da varianza en 5 compoñentes, no lugar das 36 iniciais) <br>
      2. Matrices de distancias <br>
      3. **Ferramentas de búsqueda:** <br>
          - Xogador máis cercano a un dado <br>
          - Distancia entre dous xogadores específicos <br>
          - Xogadores máis cercanos ca un umbral fixado a un xogador dado 
  - **Punto 2: Clustering** : <br>
        * Clustering coa bdd completa *FEITO* <br>
        * Análise dos perfís que ten o Obradoiro (en contraposición cos de outros equipos) *FEITO* <br>
        * Mellor agrupación: **CLUSTERING XERÁRQUICO, distancia euclídea método de Ward2**
  - **Punto 3: Regresión** : <br>
        * Axuste específico Obradoiro CAB:<br>
          - Realizar un corte dos minutos por quinteto, paso dese quinteto a clusters <br>
          - Agrupar os quintetos por clusters <br>
          - Axustar un modelo de regresión coas variables por equipo máis significativas na diferencia de puntos <br>
          - Obter os valores das agrupacións de quintetos nesas variables e a diferencia total <br>
          - Sacar a predición para esa configuración segundo o modelo anterior <br>
        * Axuste global: <br>
          - Repetir o anterior con todos os quintetos do global dos equipos, menos coas configuracions xa probadas polo Obradoiro <br>
