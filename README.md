# TFG

Funcionalidades do código a implementar ou correxir:
  - **Punto 1: PCA** <br>
    * Sustituir similitudes por distancias *FEITO* <br>
    * Utilizar só a ACB *FEITO* <br>
    * Utilidades: <br>
      1. Reducción dimensionalidade (explica un 73.8% da varianza en 5 compoñentes, no lugar das 36 iniciais) <br>
      2. Matrices de distancias <br>
      3. **Ferramentas de búsqueda:** <br>
          - Xogador máis cercano a un dado <br>
          - Distancia entre dous xogadores específicos <br>
          - Xogadores máis cercanos ca un umbral fixado a un xogador dado 
  - **Punto 2: Clustering** <br>
        * Clustering coa bdd completa *FEITO* <br>
        * Análise dos perfís que ten o Obradoiro (en contraposición cos de outros equipos) *FEITO* <br>
        * Mellor agrupación: **CLUSTERING XERÁRQUICO, distancia euclídea método de Ward2**
  - **Punto 3: Regresión** <br>
        **Axuste específico Obradoiro CAB:** <br>
          - Realizar dous cortes dos quintetos por minutos (10 e 5, p.ex) <br>
          - Preprocesado dos quintetos (engadir clusters dos xogadores) <br>
          - Transformación logarítmica da variable resposta "Diferencia" <br>
          - Modelo RandomForest cos quintetos do primeiro corte (10 mins) <br>
          - Avaliación do modelo coa variable resposta orixinal <br>
          - Predición nos quintetos de segundo corte non presentes no primeiro <br>
          - Predición a combinacións de clusters non probadas <br>


MEMORIA:
  - **A facer:** <br>
    * Conclusións (prácticas e teóricas) <br>
    * CITAS <br>
    * Costes ? <br>
  - **A correxir:** <br>
    * Citar apéndice ao nomear as variables durante a memoria