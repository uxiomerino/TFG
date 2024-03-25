# TFG

Funcionalidades do código a implementar ou correxir:
  - **Punto 1: PCA** : <br>
        * Sustituir similitudes por distancias *FEITO* <br>
        * Utilizar só a ACB *FEITO* <br>
        * Utilidades:
            - Reducción dimensionalidade (explica un 73% da varianza en 5 compoñentes, no lugar das 36 iniciais)
            - Matrices de distancias
            - Ferramentas de búsqueda:
                Xogador máis cercano a un dado
                Distancia entre dous xogadores específicos
                Xogadores máis cercanos ca un umbral fixado a un xogador dado
  - **Punto 2: Clustering** : <br>
        * Clustering coa bdd completa *FEITO* <br>
        * Análise dos perfís que ten o Obradoiro (en contraposición cos de outros equipos) *FEITO* <br>
        * Mellor agrupación: CLUSTERING XERÁRQUICO distancia euclídea
  - **Punto 3: Regresión** : <br>
        * Descargar os datos de agrupación (só quintetos) comprobar rendemento de tipos de xogadores (clusters) xuntos <br>
        * Utilizando as agrupacións anteriores, buscar a configuración óptima de quintetos <br>
        * Variable obxectivo: +/- do quinteto con respecto da media do equipo
        * Ter en conta o rival a través dalgunha medida <br>
