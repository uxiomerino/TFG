# TFG

Funcionalidades do código a implementar ou correxir:
  - **Punto 1: PCA** : <br>
    * Sustituir similitudes por distancias *FEITO* <br>
    * Utilizar só a ACB *FEITO* <br>
    * Utilidades: <br>
      1. Reducción dimensionalidade (explica un 73% da varianza en 5 compoñentes, no lugar das 36 iniciais) <br>
      2. Matrices de distancias <br>
      3. **Ferramentas de búsqueda:** <br>
          - Xogador máis cercano a un dado <br>
          - Distancia entre dous xogadores específicos <br>
          - Xogadores máis cercanos ca un umbral fixado a un xogador dado 
  - **Punto 2: Clustering** : <br>
        * Clustering coa bdd completa *FEITO* <br>
        * Análise dos perfís que ten o Obradoiro (en contraposición cos de outros equipos) *FEITO* <br>
        * Mellor agrupación: **CLUSTERING XERÁRQUICO con distancia euclídea**
  - **Punto 3: Regresión** : <br>
      * Datos de quintetos de 22/23 listo, descargar e xuntar os datos da 23/24 <br>
      * Buscar a configuración óptima de quintetos a través de modelo de regresión: <br>
          - Interaccións son importantes, probar os modelos con elas e **entender ben os resultados** <br>
          - Transformación de variables? <br>
          - Selección de variables? <br>
          - Probar **modelos non paramétricos** <br>
          - Probar outras opcións: **modelos polinómicos, RandomForest...**
      * Variable obxectivo: +/- do quinteto **con respecto da media do equipo** <br>
      * **Ter en conta o rival** a través dalgunha medida <br> 
