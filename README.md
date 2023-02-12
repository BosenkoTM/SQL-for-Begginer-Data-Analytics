# SQL-for-Begginer

# Lecturer
Timur Bosenko M. (bosenkotm@mgpu.ru)

Здесь Вы можете найти все материалы по дисциплине **`Работа с данными с помощью SQL`**. 

Эти лекции дадут Вам краткое введение в то, что называется `большими данными`. Обновим знания об основах баз данных, моделях данных и обработки данных, сравним их с распределенным миром больших данных. После этого углубимся в основы распределенных хранилищ данных и обработки данных, а также в связанные концепции и проблемы надежности, масштабируемости, репликации, секционирования, пакетной и потоковой обработки. Далее рассмотрим наиболее распространенное программное обеспечение и фреймворки (в основном это система `Hadoop`). В конце, когда Вы будете знать основные концепции и умеете настраивать и работать с распределенными средами и огромными наборами данных, будет краткое введение в науку о данных.

В конце каждого урока будут практические упражнения, которые мы начнем вместе и которые должны быть завершены к следующей встрече. Так что будьте внимательны, и если Вы не успеваете, не стесняйтесь задавать вопросы в конце каждого урока.

## Программное обеспечение 

 - OC **`Ubuntu 20.04`** на базе кластера **`МГПУ`**. Номер РМ студента получить у ведущего лектора. Для работы потребуется клиент [anydesk](  https://anydesk.com/en/downloads/windows).
 - Инструкции и команды работы в [Docker containers](https://github.com/BosenkoTM/BigDataAnalitic_Practice/tree/main/docker22).

 `ВИРТУАЛЬНАЯ ГОСТЕВАЯ ОС`:
 
 - `D_System_22` [vm - VirtualBox](https://disk.yandex.ru/d/RTZvbDhtfXInMg), в его комплект входит:
    - `VirtualBox-6.1.30-148432-Win.exe` - ПО для разворачивания виртуальной ОС; 
    - `St_work_1.ova` - образ настроенной ОС `Ubuntu 18.04`;
    - `St_work_Hadoop.ova` - образ настроенной ОС `Ubuntu 18.04 + Hadoop`;
    - `login.txt`;
    - `ubuntu-18.04.6-desktop-amd64.iso` - исходный образ ОС.
 
 `Свободное программное обеспечение для бизнес-анализа`:
    - `Pentaho`[скачать](https://disk.yandex.ru/d/iVAdHZAPliBbkQ).

## Текущая успеваемость

 [ЦТ-201мз, АБД 2022](https://docs.google.com/spreadsheets/d/1ndnkqm8tmnvmygQrt_wuMUwJiVAsIgEqtLOMsLNlZMM/edit?usp=sharing)

## Big Data Analytics: Approaches and Tools

- `lecture 01` Intro:
    -  [Introduction to Big Data](lectures/1-BigData_Intro.pdf)

- `lecture 02` File Systems:
    - [Hadoop Distributed File System (HDFS)](lectures/2-BigData_HDFS.pdf)
-  Practice: 
    -  [Introduction to HDFS](https://github.com/BosenkoTM/BigDataAnalitic_Practice/tree/main/exercises/winter_semester_2021-2022/01_hadoop).
    -  `Решение` задания [Introduction to HDFS](https://github.com/BosenkoTM/BigDataAnalitic_Practice/blob/main/solutions/winter_semester_2021-2022/01_hadoop/Exercise_1.pdf).

- `lecture 03` Cluster Managers:
    - [Yet Another Resource Negotiator (YARN)](lectures/3-BigData_YARN.pdf).
    - [Hive](lectures/3-1-Hive-HiveQL.pdf).
    - [HiveQL with practice](lectures/3-2-Hive-HiveQL.pdf).
-  Practice: 
    -  [Introduction to YARN + Hive](https://github.com/BosenkoTM/BigDataAnalitic_Practice/tree/main/exercises/winter_semester_2021-2022/02_hive).
    -  `Решение` задания [Introduction to YARN + Hive](https://github.com/BosenkoTM/BigDataAnalitic_Practice/blob/main/solutions/winter_semester_2021-2022/02_hive/Exercise_2.pdf).
    -   [Introduction to HiveQL](https://github.com/BosenkoTM/BigDataAnalitic_Practice/tree/main/exercises/winter_semester_2021-2022/03_hive-ql_partitioning_hive-server).
    -  НЕ ВЫПОЛНЯТЬ !!! `Решение` задания [Introduction to HiveQL](https://github.com/BosenkoTM/BigDataAnalitic_Practice/tree/main/solutions/winter_semester_2021-2022/03_hive-ql_partitioning_hive-server).

- `lecture 04` Batch processing:
    - [MapReduce Framework](lectures/4-BigData_MapReduce.pdf)
    - [Introduction to Spark](lectures/5-BigData_Spark.pdf)
    - [User-Defined Functions (UDF) in PySpark](lectures/6-BigData_PySpark_UDF.pdf)
 
- `lecture 05` Coordination:
    - [Introduction to Zookeeper](lectures/7-BigData_Zookeeper.pdf)
   
- `lecture 06` Streaming:
    - [Apache Storm](lectures/8-BigData_Storm.pdf)
    - [Spark Streaming](lectures/9-BigData_Spark_Streaming.pdf)
    - [Spark Structured Streaming](lectures/10-BigData_Spark_Streaming_Structured.pdf)
- Practice:
    - [Introduction to Spark_PySpark](https://github.com/BosenkoTM/BigDataAnalitic_Practice/tree/main/exercises/winter_semester_2021-2022/04_spark_pyspark_jupyter)
    -  `Решение` задания [Introduction to Spark_PySpark](https://github.com/BosenkoTM/BigDataAnalitic_Practice/tree/main/solutions/winter_semester_2021-2022/04_spark_pyspark_jupyter).
-  `lecture 05-06` Batch vs Streaming:
    - [Batch And Stream Processing](/lectures/5-Batch_And_Stream_Processing.pdf).
- `lecture 07` Graphs:
    - [Apache Giraph](lectures/11-1-BigData_Giraph.pdf)
    - [Spark GraphX](lectures/11-2-BigData_GraphX.pdf)
    
- `lecture 08` Containers:
    - [Introduction to Docker](lectures/12-BigData_Docker.pdf)

## Теоретические вопросы

1.	Основные парадигмы теории Больших данных. Правило Мура. Правила Амдала. Виды распределенных систем в контексте больших данных.
2.	Распределенная файловая система Hadoop (`HDFS`).
3.	Менеджеры кластера: (`YARN`).
4.	Инструменты работы с большими данными `Hive` и  `HiveQL`.
5.	Инструменты работы с большими данными при пакетной обработке данных: Фреймворк `MapReduce`. 
6.	Инструменты работы с большими данными `Spark` и `PySpark`.
7.	Координатор: основные подходы при работе в `Zookeeper`.
8.	Инструменты работы с большими данными при потоковой передаче данных: `Apache Storm`, `Spark Streaming`, `Spark Structured Streaming`.
9.	Инструменты работы с большими данными на Графах: `Apache Giraph`, `Spark GraphX`.
10.	Контейнеры: основные подходы при работе  в `Docker`.

## self-study

- `Семинар 1`. [Основные команды в Ubuntu](https://github.com/BosenkoTM/BigDataAnalitic_Practice/blob/main/common/docs/basic_shell_commands.md)
- [Альтернативное практическое изучение инструментов **Big Data**](https://github.com/BosenkoTM/BigDataAnalitic_Practice#practice)

## ТЕСТ 1. Apache Spark.  Дата проведения 27.06.2022, 14.40 - 16.10

[ССЫЛКА ДЛЯ ВХОДА](https://docs.google.com/forms/d/e/1FAIpQLSdD_Hl-WwPK69VGKKf0tw1vF3AgMKYQRR3w9RofcIFKlJM4YA/viewform?usp=sf_link)

Вспомогательный материал:
 - [Источник 1](/books/test_books/Apache%2BZeppelin.pdf).

## ТЕСТ 2. Зачетное тестирование. Дата проведения  29.06.2022 20.00 - 21.00
[ССЫЛКА ДЛЯ ВХОДА](https://docs.google.com/forms/d/e/1FAIpQLSdxADzRpGOzLrVBPHwUQMt6sWIPO63nLwYt0KolAWKq3-xREQ/viewform?usp=sf_link)

Вспомогательный материал:
 - [Источник 1](https://disk.yandex.ru/d/PFn19cqtOtn__g?w=1).

## Зачетное практическое задание по курсу  Big Data Analytics: Approaches and Tools

### `Вариант 1`

Использование `kaggle.com` Набора Данных **`Hubway`** Для Расчета Ключевых Показателей Эффективности Совместного Использования Велосипедов. [Условие задания](https://github.com/BosenkoTM/BigDataWork/blob/main/variant_1_exam_calculate/examp_1.pdf)

### `Вариант 2`

Использование данных **`NYC_Taxi`** для Расчета Ключевых Показателей Эффективности. [Условие задания](https://github.com/BosenkoTM/BigDataWork/blob/main/variant_2_exam_calculate/examp_2.pdf)

### `Вариант 3`

Настройка и работа в **`Hadoop`**, **`HDFS`** и **`Yarn`**. [Условие задания](https://github.com/BosenkoTM/BigDataWork/blob/main/variant_3_exam_calculate/examp_3.pdf)

### `Вариант 4`

Установка, настройка и работа в **`Hive`**. [Условие задания](https://github.com/BosenkoTM/BigDataWork/tree/main/variant_4_exam_calculate)
