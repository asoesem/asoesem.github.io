# Propuesta de Requerimientos para el Sistema de Planificación Académica

El objetivo principal del sistema es crear un centro de información y planificación académica unificado, interactivo y personalizado para los estudiantes de la carrera de Enseñanza de la Matemática en la UNED. La aplicación debe empoderar al estudiante, permitiéndole tomar decisiones informadas, optimizar su ruta académica y reducir la incertidumbre asociada con la matrícula.

## Módulo 1: Perfil Académico del Estudiante 🧑‍🎓

Este es el núcleo de la personalización. El sistema debe permitir al estudiante configurar su estado académico actual para que todas las demás funcionalidades se adapten a su realidad.

* **Selección de Plan de Estudios (PF-101)**:	Al iniciar, el usuario debe poder seleccionar el plan de estudios al que pertenece (ej. "Transición 2025-2027" o "Plan Nuevo 2025"). Esta selección determinará la estructura de bloques, cursos y prerrequisitos que el sistema utilizará para los cálculos.
* **Registro de Cursos Aprobados (PF-102)**: El sistema debe presentar una lista completa de todos los cursos del plan de estudios seleccionado. El estudiante podrá marcar cada curso que ya ha aprobado. Esta lista debe ser fácilmente modificable en cualquier momento.
* **Persistencia de Datos Locales (PF-103)**: La información del perfil del estudiante (plan seleccionado y cursos aprobados) debe guardarse de forma persistente en el navegador del usuario (utilizando LocalStorage o IndexedDB). Esto asegura que no tenga que reingresar sus datos en cada visita.

## Módulo 2: Explorador de Cursos y Malla Curricular 🗺️

Este módulo aborda el problema de la información dispersa, centralizando todo lo que un estudiante necesita saber sobre los cursos y la estructura del programa.

* **Catálogo de Cursos Interactivo (EC-201)**: Crear una vista de "Catálogo de Cursos" que permita buscar y filtrar cursos por código, nombre, categoría (ej. "Cálculo", "Pedagogía"), nivel (Introductorio, Intermedio, Avanzado) y créditos.
* **Vista Detallada del Curso (EC-202)**: Al hacer clic en un curso, se debe mostrar una vista completa con toda su información: código, nombre, créditos, nivel, categorías y, crucialmente, su disponibilidad (en qué cuatrimestres/semestres se ofrece).
* **Visualización de Dependencias (EC-203)**: En la vista detallada, el sistema debe mostrar claramente: 1) Prerrequisitos: Los cursos o bloques que se deben aprobar antes de poder matricularlo. 2) Cursos Habilitados: Los cursos para los cuales este curso sirve como prerrequisito. Esto ayuda a entender su importancia estratégica en la malla curricular.
* **Visualización Gráfica de la Malla (EC-204)**: Implementar una representación visual e interactiva de la malla curricular del plan de estudios seleccionado. Esto podría ser un grafo de dependencias donde los nodos son los cursos y las aristas representan los prerrequisitos. Los cursos ya aprobados por el estudiante deberían aparecer visualmente distintos (ej. coloreados en verde).

## Módulo 3: Asistente de Matrícula Inteligente 💡

Este es el módulo proactivo que responde a las preguntas: "¿Qué puedo matricular ahora?" y "¿Qué podré matricular después?".

* **Cálculo de Cursos Elegibles (AM-301)**: Basándose en los cursos aprobados en el perfil del estudiante, el sistema debe generar automáticamente una lista de "Cursos que puede matricular". Esta lógica debe procesar tanto prerrequisitos de cursos específicos como de bloques completos.
* **Filtrado por Periodo Futuro (AM-302)**: El usuario debe poder filtrar la lista de cursos elegibles por un periodo académico futuro (ej. "Primer Cuatrimestre", "Segundo Semestre"). El sistema verificará la disponibilidad del curso en courseCatalog.availability para mostrar solo los que se ofrecerán en ese periodo.
* **Identificación de Electivos (AM-303)**: El sistema debe mostrar claramente los bloques que contienen cursos electivos, indicando los créditos requeridos y las categorías permitidas. Al seleccionar un electivo, el sistema debe mostrar la lista de cursos disponibles (availableCourses) que cumplen con dicho requisito.
* **Alerta de Solicitudes Especiales (AM-304)**: Se podría agregar un campo en los datos del curso (ej. requiresSpecialPermit: true) para marcar aquellos que, a pesar de cumplir los requisitos, necesitan una solicitud formal. El sistema mostraría una alerta visible para estos cursos.

## Módulo 4: Planificador de Ruta Académica 🚀

Esta es la herramienta estratégica que permite a los estudiantes, especialmente a los que trabajan o estudian a tiempo parcial, planificar a mediano y largo plazo.

* **Constructor de Planes (PL-401)**: Una interfaz donde el estudiante puede arrastrar y soltar cursos elegibles en una línea de tiempo de futuros cuatrimestres/semestres. El sistema debe validar en tiempo real que los prerrequisitos se cumplan según el orden del plan.
* **Simulación de Escenarios (PL-402)**: Permitir la creación y guardado de múltiples planes (ej. "Plan Ideal a Tiempo Completo", "Plan Realista a 2 Cursos por Cuatri"). Esto permite al estudiante comparar diferentes estrategias y sus implicaciones en el tiempo de graduación.
* **Motor de Sugerencias Avanzado (PL-403)**: El sistema podría ofrecer sugerencias proactivas. Por ejemplo: 1) Análisis de Ruta Crítica: Identificar y sugerir matricular cursos que desbloquean la mayor cantidad de materias futuras.  2) Sugerencias de Agrupación: Recomendar llevar cursos de un mismo bloque juntos, ya que a menudo se ofrecen en los mismos periodos.
* **Proyección de Graduación** (PL-404): Basado en el plan activo, el sistema podría ofrecer una fecha estimada de finalización del Bachillerato o Licenciatura.

## Módulo 5: Seguimiento de Credenciales y Avance 🏅

Este módulo automatiza la verificación del cumplimiento de los requisitos para obtener las credenciales intermedias.

* **Dashboard de Credenciales (SC-501)**: Una sección que muestre todas las credenciales disponibles (ej. MT1, MT2, MT3). Para cada una, el sistema debe mostrar el progreso basado en los cursos aprobados por el estudiante.
* **Desglose de Requisitos (SC-502)**: Para cada credencial, el sistema debe mostrar una lista detallada de los requisitos y marcar cuáles ya se cumplen. Esto incluye: 1) Cursos específicos requeridos. 2) - Créditos requeridos por categoría (ej. "Humanidades: 6 de 9 créditos completados"). 3) - Credenciales previas requeridas.
* **Notificación de Obtención (SC-503)** - Cuando el estudiante cumple con todos los requisitos para una credencial, el sistema debería mostrar una notificación destacada.

## Requerimientos No Funcionales

Son tan importantes como los funcionales para garantizar que la aplicación sea útil y agradable de usar.

* **Usabilidad (UI/UX)** : La interfaz debe ser limpia, intuitiva y completamente adaptable a dispositivos móviles (mobile-first), ya que muchos estudiantes consultarán desde sus teléfonos.
* **Rendimiento**: La aplicación debe ser rápida. Todas las validaciones y cálculos deben ejecutarse instantáneamente en el lado del cliente (en el navegador) sin necesidad de recargar la página.
* **Mantenibilidad**: El diseño del sistema debe permitir actualizar el archivo curriculumdb.json fácilmente a medida que el plan de estudios cambie, sin necesidad de modificar el código fuente principal.
* **Portabilidad**: Al ser una aplicación de JavaScript del lado del cliente, no requiere un servidor complejo. Debe ser posible ejecutarla dentro un blog de Jekyll y ejecutarla con Github Pages.

## Plataforma de Solucion

* Jekyll + GitHub Pages
* HTML, CSS, JavaScript (ES6+)

