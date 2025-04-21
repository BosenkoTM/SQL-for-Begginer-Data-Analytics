# Практическая работа 8. Анализ метода загрузки данных

Провести анализ источника данных `upload_test_data.csv` и `upload_test_data_big.csv`, создать ER-диаграмму эскиза базы данных для каждого из источников в виде отдельной таблицы.
Определить, какой метод загрузки данных в СУБД `PostgreSQL` лучше: **pandas.to_sql()**, **copy_expert()**, **io.StringIO** для данных в памяти или пакетная вставка (**Batch Insert**).

`8.1` Загрузить в Postgres набор данных `upload_test_data.csv` ([источник данных](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/blob/main/practice/pr-5-2-upload-data-from-pandas-to-sql-main/upload_test_data.csv)) выполнив оценку времени загрузки в файле `small_file.py`([файл1](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/blob/main/practice/pr-5-2-upload-data-from-pandas-to-sql-main/upload_test_data_big.csv)).
  
`8.2` Загрузить в Postgres набор данных `upload_test_data_big.csv` ([источник данных](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/blob/main/practice/pr-5-2-upload-data-from-pandas-to-sql-main/upload_test_data_big.csv)) выполнив оценку времени загрузки в файле `big_file.py`([файл2](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/blob/main/practice/pr-5-2-upload-data-from-pandas-to-sql-main/big_file.py)).

8.3 Показать на диаграмме(matplotlib) временную разницу загрузки файлов для простых и больших данных различными методами ось Х - название метода: **pandas.to_sql()**, **copy_expert()**, **io.StringIO**, **Batch Insert**; по оси У - время.).

Результаты представить в виде отдельного файла ERD-диаграммы для простых и больших данных из PostgreSQL с расширением `FIO_ERD_test_data.jpg`, `FIO_ERD_test_data_big.jpg`;
Ссылку на дашборд в `Yandex DataLens` или файл с расширением `.ipynb`, в котором представлены результаты задания `8.3`.
