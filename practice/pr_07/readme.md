# Практическая работа 7. Импорт и экспорт данных в SQL. Работа с внешними источниками данных

## Цель:
Научиться импортировать и экспортировать данные в базу данных SQL. Работа включает в себя загрузку данных из внешних источников в таблицы базы данных, а также экспорт данных из базы данных в различные форматы. Студенты научатся работать с внешними данными, преобразовывать их в нужный формат и интегрировать с существующими таблицами в базе данных.

## Задачи:
1. **Импорт данных в SQL:**
   - Изучить способы загрузки данных с помощью SQL-запросов и утилит командной строки.
   - Разработать процессы для обработки больших объемов данных при импорте.

2. **Экспорт данных из SQL:**
   - Изучить методы экспорта данных из базы данных SQL в файлы.
   - Практиковать создание отчетов и выгрузку данных для дальнейшего анализа или для предоставления заказчику.

3. **Работа с внешними источниками данных:**
   - Использовать Python (библиотеки Pandas, psycopg2) для взаимодействия с базой данных SQL и внешними источниками.

4. **Обработка данных после импорта:**
   - Научиться очищать и трансформировать данные после их загрузки в таблицы базы данных.
   - Выполнять операции с данными, такие как объединение таблиц, агрегация и создание новых колонок.

5. **Создание и тестирование процессов импорта/экспорта:**
   - Разработать и протестировать процессы импорта и экспорта, чтобы гарантировать корректность данных и их интеграцию с основными системами.
   - Настроить автоматизацию импорта и экспорта данных для регулярных операций.

## Ожидаемые результаты:
- Умение импортировать данные из различных внешних источников в базу данных.
- Овладение методами экспорта данных для создания отчетов.
- Навыки обработки и трансформации данных после их импорта.
- Разработка автоматизированных процессов для импорта и экспорта данных в реальных проектах.

## Индивидуальные задания

| **Вариант** | **Задание 1**                                                      | **Задание 2**                                                | **Задание 3**                                                 | **Задание 4**                                                | **Задание 5**                                                    |
|-------------|---------------------------------------------------------------------|--------------------------------------------------------------|--------------------------------------------------------------|--------------------------------------------------------------|-------------------------------------------------------------------|
| **1**       | Создайте таблицу "Patients" с полями "ID", "NAME", "AGE", "DIAGNOSIS".                | Вставьте 20 записей о пациентах.     | Запросите информацию о больнице с ID=2.                      | Получите список врачей по специальности "Pediatric" и зарплате > 20000. | Постройте график с данными о зарплатах врачей по специальностям.   |
| **2**       | Создайте таблицу "Department" с полями "ID", "NAME".                      | Вставьте 10 записей о врачах в таблицу "Doctor".              | Получите информацию о докторе с ID=101.                       | Обновите цену на модель "Iphone12" до 1500.                   | Постройте диаграмму для сравнения зарплаты по больницам.          |
| **3**       | Создайте базу данных "hospital_db" и подключитесь к ней.            | Заполните таблицу "Doctor" данными о 5 новых врачах.          | Получите все записи из таблицы "Doctor", где зарплата > 30000. | Получите список всех врачей из больницы с ID=1.               | Используйте Pandas для агрегации зарплаты врачей по специальностям. |
| **4**       | Создайте таблицу "Hospital" с полями ID, NAME, BED_COUNT.           | Обновите стаж доктора с ID=102 на 5 лет.                      | Обновите стаж врача с ID=103 на 3 года.    | Получите список врачей с зарплатой больше 40000 в больнице с ID=3. | Постройте линейный график с количеством больниц по количеству мест.|
| **5**       | Создайте таблицу "Department" с полями "ID", "NAME".                 | Вставьте запись с новой моделью телефона в таблицу "mobile".  | Получите список всех докторов, работающих в больнице с ID=4. | Сохраните список врачей по специальности в новый CSV-файл.      | Постройте круговую диаграмму для процентного распределения врачей по специализациям. |
| **6**       | Создайте таблицу "appointments" с полями "ID", "DOCTOR_ID", "DATE".  | Выполните SQL-запрос для обновления зарплаты врача с ID=105. | Получите все записи о больнице с ID=3.    | Обновите стаж врача с ID=106.                                 | Постройте график зависимости зарплаты от опыта врачей.            |
| **7**       | Подключитесь к базе и создайте таблицу "employee".                   | Получите информацию о больнице с ID=2.                       | Создайте таблицу "Patient" с полями "ID", "NAME", "AGE".       | Получите список всех врачей, работающих более 5 лет в "Mayo Clinic". | Визуализируйте распределение зарплат врачей в виде столбчатой диаграммы. |
| **8**       | Создайте базу данных "medical_center" и таблицу "Staff".             | Вставьте данные в таблицу "Doctor" о 5 новых врачах.         | Получите все записи о больнице с ID=4.                        | Выполните запрос для получения врачей, специализирующихся на педиатрии. | Постройте график с данными о больницах, сортированных по количеству мест. |
| **9**       | Создайте таблицу "Appointments" для хранения данных о приёмах.      | Получите всех врачей, работающих в больнице с ID=2.           | Обновите информацию о докторе с ID=103 (измените его зарплату).| Получите все записи из таблицы "Doctor" с опытом работы более 5 лет. | Визуализируйте распределение врачей по специальностям.            |
| **10**      | Создайте таблицу "Patient" с полями "ID", "NAME", "AGE", "DIAGNOSIS".| Вставьте 10 записей о пациентах.                             | Обновите рабочие часы врача с ID=2.   | Обновите специальность врача с ID=104.                        | Постройте столбчатую диаграмму для анализа распределения зарплат по врачам. |
| **11**      | Создайте таблицу "Department" с полями "ID", "NAME".      | Вставьте 10 товаров в таблицу "Products".                     | Выведите всех пациентов, получающих лечение от "Orthopedic".                     | Выполните SQL-запрос для получения врачей, специализирующихся на "Dermatology". | Создайте диаграмму для анализа распределения зарплат в зависимости от опыта. |
| **12**      | Создайте таблицу "Hospital" с полями "ID", "NAME", "TYPE".           | Получите информацию о докторе с ID=109.                       | Обновите стаж врача с ID=110 на 2 года.                       | Удалите запись из таблицы "Doctor" с ID=115.                   | Постройте график для анализа количества врачей по специальности.  |
| **13**      | Создайте таблицу "appointments" с полями "ID", "DOCTOR_ID", "DATE".  | Добавьте данные о новых приёмах в таблицу "appointments".     | Получите всех врачей, специализирующихся на "Neurologist".    | Визуализируйте распределение врачей по больницам с помощью гистограммы. | Создайте таблицу для анализа распределения пациентов по возрасту.   |
| **14**      | Создайте таблицу "Doctor_Specialization" с полями "ID", "NAME".      | Вставьте данные о 5 новых специализациях в таблицу "Doctor_Specialization".| Получите всех врачей по специальности "Orthopedic".           | Обновите зарплату врача с ID=106 на 52000.                    | Постройте круговую диаграмму для визуализации распределения больниц по типу. |
| **15**      | Создайте таблицу "Patient" с полями "ID", "NAME", "AGE", "DIAGNOSIS".| Вставьте 14 записей о пациентах.                   | Обновите стаж врача с ID=110 на 4 года. | Выведите список всех врачей с зарплатой выше 45000.            | Создайте столбчатую диаграмму для анализа зарплат врачей по больницам. |
| **16**      | Создайте таблицу "Hospital_Doctor" с полями "ID", "HOSPITAL_ID", "DOCTOR_ID". | Вставьте 5 записей о том, какие врачи работают в каких больницах. | Получите все записи о врачах из больницы с ID=1.              | Выполните запрос для получения всех врачей с опытом работы > 5 лет. | Создайте диаграмму для анализа данных по больницам, сортированным по количеству пациентов. |
| **17**      | Создайте таблицу "Patients" с полями "ID", "NAME", "AGE", "DIAGNOSIS".| Вставьте 10 пациентов в таблицу "Patients".                  | Выведите всех пациентов старше 50 лет.                        | Обновите диагноз пациента с ID=2.                               | Создайте линейный график для анализа возраста пациентов по диагнозам. |
| **18**      | Создайте таблицу "Doctor_Patient" с полями "DOCTOR_ID", "PATIENT_ID".| Добавьте 5 записей для отображения врачей и их пациентов.     | Выполните запрос для получения пациентов врача с ID=101.     | Выполните запрос для получения всех больниц с количеством мест > 1000. | Постройте столбчатую диаграмму для анализа зарплат врачей по специализациям. |
| **19**      | Создайте таблицу "Doctor_Salary" с полями "DOCTOR_ID", "SALARY".     | Вставьте 5 записей о зарплатах врачей.                        | Обновите зарплату врача с ID=107.                              | Получите зарплаты всех врачей с опытом > 5 лет.                 | Постройте круговую диаграмму для анализа распределения зарплат среди врачей. |
| **20**      | Создайте таблицу "Hospital_Facility" с полями "ID", "NAME", "TYPE".   | Вставьте 5 записей о больничных объектах.                     | Получите информацию о больнице с ID=4.                         | Обновите количество коек в больнице с ID=3.                     | Создайте линейный график для отображения трендов по количеству коек в больницах. |
| **21**      | Создайте таблицу "Patients_Visit" с полями "VISIT_ID", "PATIENT_ID", "DOCTOR_ID". | Вставьте 5 визитов пациентов к врачам.                        | Выполните запрос для получения визитов пациента с ID=4.       | Обновите информацию о визите пациента с ID=3.                   | Постройте столбчатую диаграмму для анализа визитов пациентов. |
| **22**      | Создайте таблицу "Doctor_Specialty" с полями "DOCTOR_ID", "SPECIALTY". | Вставьте данные о 5 новых специализациях врачей.             | Выведите всех докторов, работающих по специализации "Surgeon".| Обновите специализацию врача с ID=116 на "Pediatrician".        | Постройте диаграмму для анализа распределения специалистов по больницам. |
| **23**      | Создайте таблицу "Hospital_Patient" с полями "HOSPITAL_ID", "PATIENT_ID". | Вставьте 5 записей для отображения пациентов и больниц.      | Получите список пациентов, находящихся в больнице с ID=2.     | Обновите информацию о пациенте с ID=3.                          | Постройте круговую диаграмму для анализа пациентов по возрастным категориям. |
| **24**      | Создайте таблицу "Employee" с полями "EMPLOYEE_ID", "NAME", "POSITION".| Вставьте 10 сотрудников в таблицу "Employee".                 | Выполните запрос для получения всех сотрудников с позицией "Doctor". | Обновите позицию сотрудника с ID=6 на "Chief Doctor".           | Постройте линейный график для отображения сотрудников по позициям. |
| **25**      | Создайте таблицу "Patient_Treatment" с полями "TREATMENT_ID", "PATIENT_ID". | Вставьте 5 записей о лечении пациентов.                      | Выведите всех пациентов, получающих лечение от "Neurologist".  | Обновите диагноз пациента с ID=8.                               | Постройте столбчатую диаграмму для анализа распространенности заболеваний среди пациентов. |
| **26**      | Создайте таблицу "Doctor_Hours" с полями "DOCTOR_ID", "WORKING_HOURS".| Вставьте 5 записей о рабочем времени врачей.                  | Обновите рабочие часы врача с ID=9.                            | Получите всех врачей, работающих более 40 часов в неделю.      | Постройте график для отображения рабочего времени врачей по больницам. |
| **27**      | Создайте таблицу "Medical_Supply" с полями "SUPPLY_ID", "NAME", "QUANTITY". | Вставьте 5 записей о медицинских товарах.                    | Обновите количество товара с ID=3.                             | Выполните запрос для получения всех медицинских товаров с количеством < 100. | Постройте столбчатую диаграмму для отображения наличия товаров по категориям. |
| **28**      | Создайте таблицу "Doctor_Visits" с полями "VISIT_ID", "DOCTOR_ID".    | Вставьте 5 записей о визитах пациентов.                       | Получите всех врачей, проводящих больше 10 визитов в неделю.   | Обновите количество визитов у врача с ID=8.                   | Постройте график с числом визитов по месяцам для каждого врача. |
| **29**      | Создайте таблицу "Patient_VitalSigns" с полями "ID", "PATIENT_ID", "BLOOD_PRESSURE". | Вставьте 5 записей о жизненно важных показателях пациентов.   | Обновите давление пациента с ID=5.                             | Выполните запрос для получения всех пациентов с высоким давлением. | Постройте диаграмму для анализа изменения давления у пациентов. |
| **30**      | Создайте таблицу "Doctor_Qualification" с полями "DOCTOR_ID", "QUALIFICATION". | Вставьте данные о квалификациях врачей.                      | Получите информацию о всех квалифицированных врачах с ID>3.    | Обновите квалификацию врача с ID=1.                            | Постройте график для анализа распределения врачей по квалификации. |

### Правила сдачи отчета по практической работе 7

1. **Создание репозитория на GitHub:**
   - Создайте новый репозиторий на GitHub с названием, соответствующим теме вашего проекта (например, "pr_07").
   - Репозиторий должен быть публичным, чтобы преподаватель мог получить доступ к нему.

2. **Вложенные файлы в репозитории:**
   В репозитории должны быть следующие файлы:
   
   - **ERD диаграмма схемы базы данных:**
     - Создайте ERD (Entity-Relationship Diagram) диаграмму для вашей базы данных. Вы можете использовать инструменты для создания ERD, такие как [dbdiagram.io](https://dbdiagram.io/), [draw.io](https://app.diagrams.net/), или [Lucidchart](https://www.lucidchart.com/).
     - Экспортируйте диаграмму в формат `.png`, `.pdf` или `.jpeg` и добавьте файл в репозиторий.
     - Название файла: `erd_diagram.png` (или любое другое удобное название).

   - **SQL скрипт создания базы данных и таблиц:**
     - Создайте SQL скрипт, который включает команды для создания базы данных, таблиц, и необходимого наполнения (например, `CREATE DATABASE`, `CREATE TABLE`, `INSERT INTO`).
     - Файл должен быть в формате `.sql`.
     - Название файла: `create_db_and_tables.sql`.

   - **Jupyter Notebook с индивидуальными заданиями:**
     - В Jupyter Notebook вы должны отразить выполнение всех индивидуальных заданий, указанных в практической работе, с пояснениями и результатами.
     - Все задания должны быть оформлены в виде ячеек с пояснениями (Markdown) и выполненными кодами на Python (например, через библиотеки `psycopg2` для работы с PostgreSQL и `matplotlib` для визуализаций).
     - Название файла: `FIO.ipynb`, где `FIO` - ваши фамилия, имя и отчество (например, `Ivanov_Ivan_Andreevich.ipynb`).

3. **Структура репозитория:**
   Репозиторий должен иметь следующую структуру:
   ```
   pr_07/
   ├── erd_diagram.png          # ERD диаграмма
   ├── create_db_and_tables.sql  # SQL скрипт создания БД и таблиц
   └── Ivanov_Ivan_Andreevich.ipynb # Jupyter Notebook с заданиями
   ```

4. **Описание репозитория:**
   - В файле `README.md` опишите проект: цель работы, что вы сделали, как запускать код и какие результаты ожидать.
   - Обязательно укажите, что выполнены все задания, как они реализованы, и где можно найти ERD диаграмму, SQL скрипт и Jupyter Notebook.

5. **Ссылка на репозиторий в Moodle:**
   - После того как репозиторий будет готов и все файлы загружены, перейдите в Moodle и найдите соответствующую задачу для сдачи практической работы.
   - В соответствующем поле для ссылки на GitHub укажите ссылку на ваш репозиторий, например:
     ```
     https://github.com/username/pr_07
     ```
     Где `username` — это ваш логин на GitHub, а `pr_07` — название вашего репозитория.

6. **Сроки сдачи:**
   Убедитесь, что вы загрузили все файлы и указали ссылку на репозиторий в Moodle в срок, указанный в задании.

---

### Пример README.md:
```markdown
# Практическая работа по бизнес-аналитике

## Цель:
Разработка и реализация информационной системы для базы данных больницы. Включает в себя создание базы данных, таблиц, выполнение SQL-запросов и визуализацию данных.

## Выполненные задания:
1. Создание ERD диаграммы для базы данных.
2. Разработка SQL-скриптов для создания базы данных и таблиц.
3. Реализация заданий в Jupyter Notebook с подключением к базе данных, вставкой и обновлением данных, а также визуализацией информации.

## Структура репозитория:
- `erd_diagram.png` — ERD диаграмма схемы базы данных.
- `create_db_and_tables.sql` — SQL скрипт для создания базы данных и таблиц.
- `Ivanov_Ivan_Andreevich.ipynb` — Jupyter Notebook с выполнением всех заданий.

## Как запустить:
1. Установите PostgreSQL и настройте доступ к базе данных.
2. Выполните SQL-скрипт `create_db_and_tables.sql` для создания базы данных и таблиц.
3. Откройте и выполните Jupyter Notebook для проверки выполнения заданий.
```

---

Следуя этим шагам, вы сможете правильно подготовить и сдать отчет по практической работе, соблюдая все требования для GitHub и Moodle.
