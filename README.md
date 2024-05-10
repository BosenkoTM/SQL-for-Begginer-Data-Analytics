# SQL-for-Begginer & Data Analytics

# Lecturer
Timur Bosenko M. (bosenkotm@mgpu.ru)

Здесь Вы можете найти все материалы по дисциплине **`Работа с данными с помощью SQL`**. 

Учебный материал позволит получить опыт работы с различными типами данных в SQL, включая временные ряды, геопространственные и текстовые данные.  Вы узнаете, как продуктивно работать в SQL с помощью профилирования и автоматизации, чтобы быстрее получать ценную информацию. В результате Вы сможете эффективно использовать SQL в повседневных бизнес-сценариях и смотреть на данные критическим взглядом профессионала-аналитика.
В конце каждого урока будут практические упражнения, которые мы начнем вместе и которые должны быть завершены к следующей встрече. 

## Программное обеспечение 

[PostgreSQL **`14.7  или выше`** для Windows&Mac_OS_X&Linux](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads)

[Сервис `SQLizer`, конверт `csv` в `DDL`(сервис доступен при включенном VPN)](https://sqlizer.io/#/)

[One Compiler](https://onecompiler.com/postgresql/)

[SQLFLOW](https://sqlflow.gudusoft.com/#/)

[Установкой Anaconda Distribution](https://docs.anaconda.com/free/anaconda/install/)

[Дистрибутив Anaconda Windows](https://disk.yandex.ru/d/q5OBwcdGzv6Kig).

Выгрузку отчетов выполнения практических работ выполнять в [Gogs](http://95.131.149.21:3000) - локальный Git.

## Текущая успеваемость

 [АДЭУ](https://docs.google.com/spreadsheets/d/1bD-10KGmt89iC2JyTH8a5Vc-af2vqMOjycchD7ASej0/edit?usp=sharing)

## Работа с данными с помощью SQL

- `lecture 01`:
    -  [Intro]()

- `lecture 02`:
    -  [Работа с данными с помощью SQL]()

- `lecture 03`:
    -  [Агрегированные функции для анализа данных]()

- `lecture 04`:
    -  [Оконные функции для анализа данных](/lectures/lecture_04.pdf)

- `lecture 05`:
    -  [SQL для подготовки данных]()
  
- `lecture 06`:
    -  [Импорт и экспорт данных. Часть 1](/lectures/l_06.pdf).
    -  [sqlalchemy_data_from_pandas_to_postgres](https://colab.research.google.com/drive/1HLrOzlobYiHIISh_7PCjWfI7QmDPt_dM?usp=sharing).
    -  [Импорт и экспорт данных. Часть 2](/lectures/l_06_2.pdf).
    -  [Импорт и экспорт данных. Часть 3](/lectures/l_06_3.pdf).
    -  [Материалы к лекции 6-7](/practice/conda_help_for_lesson).

- `lecture 07`:
    -  [Аналитика с использованием сложных типов данных]()
    -  [Стратегии материализованного представления в PostgreSQL](https://github.com/BosenkoTM/Materialized-View-Strategies-In-PostgreSQL/blob/main/README.md)

- `lecture 08`:
    -  [Эффективный SQL]()
    -  Практика на лекции 1. [Ход работы](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/blob/main/practice/pr_on_lecture_plan_query.pdf)
    -  [BD_smalljoins](/practice/BD_smalljoins.sql)

- `lecture 09`:
    -  [Функции и триггеры]() 
    -  [BD_smalljoins](/practice/BD_smalljoins.sql) 
    -  [Function.sql](/Datasets/Functions.sql)
           
- `lecture 10`:
    -  [Case Study]()

## Практические работы
    
   1. Установить `Postgres` [**14.7**](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads).
   2. Загрузить [data.dump](https://disk.yandex.ru/d/p3ga3WZpmAw8-Q)  в `Postgres`.
     
  - Практическая работа 1. [Ключевые слова в запросе SELECT](/practice/pr-1.pdf).
  - Практическая работа 2. [Использование Joins](/practice/pr-2.pdf).
  - Практическая работа 3. [Использование агрегатных функций для анализа данных](/practice/pr-03.pdf).
  - Практическая работа 4. [Оконные функции для анализа данных](/practice/pr-04.pdf).
    - [Решение к практической работе 4](/solutions/solution_04.sql).
  - Практическая работа 5.  [SQL для подготовки данных](/practice/pr-5.pdf).
  - Практическая работа 6.  [SQL для подготовки данных](/practice/pr-6-2024.pdf).
  - Практическая работа 7.  [Робота с внешними приложениями](/practice/pr-7-2024.pdf).

    Результаты представить в `Gogs` до `15.20 04.04.2024`в виде:

    - отчет(ход выполнения задания 1-2);

    - файл с решением задания 3-5 в формате `.ipynb`;

    - дамп с расширением `sql`.
    
  - Практическая работа 8.  [Анализ метода загрузки данных. pandas.to_sql() и PostgreSQL COPY](/practice/pr-5-2-upload-data-from-pandas-to-sql-main).
  - Практическая работа 9.  [Геопространственный анализ данных](/practice/pr-09-2024.pdf).
  - Практическая работа 10.  [Аналитика с использованием сложных типов данных. Поиск и анализ продаж](/practice/pr-10-2024.pdf).
  - Практическая работа 11.  [Производительный SQL](/practice/pr-11.pdf).

## Самостоятельные работы

Самостоятельная работа `1`. [Условие задания](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/tree/main/practice/sql-agg-func).

Самостоятельная работа `2`. [Робота с внешними приложениями](/practice/pr-7-2024.pdf). Результаты представить в `Gogs` до `15.20 04.04.2024`в виде:
  
- отчет(ход выполнения задания 1-2);
   
- файл с решением задания 3-5 в формате `.ipynb`;
    
- дамп с расширением `sql`.

Самостоятельная работа `3`. [Условие задания](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/blob/main/practice/sam_3_function/README.md).

Самостоятельная работа `4`. [Условие задания](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/tree/main/practice/s_4/SQL-DataAnalysis-main#%D1%81%D0%B0%D0%BC%D0%BE%D1%81%D1%82%D0%BE%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F-%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0-4-%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85-%D1%80%D0%BE%D1%81%D1%81%D1%82%D0%B0%D1%82-%D1%81-%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E-sql).

## Индивидуальный трекер

📗[Уровень 1️⃣:](/Module1/README.md)

❓[Уровень 1. Контрольная работа 1](/Module1/PracticeModule1/README.md)

📗[Уровень 2️⃣:](/Module2/README.md)

❓[Уровень 2. Контрольная работа 2](/main/Module2/PracticeModule2/README.md)

📗[Уровень 3️⃣:]()

❓[Уровень 3. Контрольная работа 3]

## Теоретические вопросы

1. Сбор данных. Соединение таблиц с помощью `JOIN`. Типы соединений. Подзапросы. Union.
2. Агрегированные функции для анализа данных. Агрегированные функции. `GROUP BY` в А-функциях.
4. Использование агрегации для очистки данных и проверки качества данных. Поиск пропущенных значений с помощью `GROUP BY`.
5. Измерение качества данных с помощью агрегации.
6. Оконные функции для анализа данных. Ключевые слова в оконных функциях. Статистика с оконными функциями. 
7. Импорт и экспорт данных. Команда `COPY`.
8. Использование `R` в базе данных.
9. Использование `Python` в базе данных. `SQLAlchemy 2.0`. Использование Python с ноутбуками `Jupyter`. Чтение и запись в базу данных с помощью `Pandas`. Выполнение визуализации данных с помощью `Pandas`.
10. Запись данных в базу данных с помощью `Python`. Улучшение скорости записи `Python` с помощью `COPY`. Чтение и запись файлов `CSV` с помощью `Python`.
11. Аналитика с использованием сложных типов данных. Типы данных даты и времени для анализа. Типы дат. Интервалы.
12. Выполнение геопространственного анализа в `Postgres`. Широта и долгота. Представление широты и долготы в `Postgres`.
13. Использование типов данных массива в `Postgres`.
14. Использование типов данных `JSON` в Postgres `JSONB`: предварительно обработанный `JSON`. Доступ к данным из поля `JSON` или `JSONB`. Создание и изменение данных в поле `JSONB`.
15. Производительный `SQL`. Методы сканирования базы данных. Планирование запросов. Сканирование и последовательное сканирование. Сканирование индекса. Индекс B-дерева. Хэш-индекс.
16. Эффективные соединения.
17. Функции и триггеры. Определения функций. Использование одной функции.
18. Триггеры. Удаление запросов.

## Литература
1. Аналитическая инженерия с SQL. Построение масштабируемых моделей данных.(англ) [ресурс](https://disk.yandex.ru/i/_2b5-Ta8Il6MbQ)
2. Босенко , Т.М. Разработка принципов организации и технологий управления базами данных PostgreSQL для аналитиков: Учебно-методическое пособие. –Москва: Общество с ограниченной ответственностью "Эдитус", 2023. –56 с. – ISBN 978-5-00217-072-2.

3. Грофф, Дж. SQL. Полное руководство. 2014. – 960 c. [ресурс](https://disk.yandex.ru/i/-NmQh9Z3kktBWQ) 

4. Моргунов, Е. П. Язык SQL. Базовый курс : учеб.-практ. пособие / Под ред. Е. В. Рогова, П. В. Лузанова; Postgres Professional. – М., 2017. – 257 с. [ресурс](https://postgrespro.ru/education/books/sqlprimer) 
 
5. Лузанов, П. PostgreSQL для начинающих / П. Лузанов, Е. Рогов, И. Лёвшин ; Postgres Professional. – М., 2017. – 146 с. [ресурс](https://postgrespro.ru/media/2018/01/10/introbook_v4.pdf)
    
## Данные 

[Datasets for lessons](https://disk.yandex.ru/d/p3ga3WZpmAw8-Q)
