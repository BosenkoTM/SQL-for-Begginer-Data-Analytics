# Практическая работа 8. Сравнение pandas.to_sql() и команды PostgreSQL COPY для загрузки данных из pandas в базу данных

Рализовать примеры на тестовых данных в среде `Anaconda`, для этого  необходимо внести изменения в код, как указано в комментариях к коду. 
В частности, после загрузки образцов файлов данных потребуется обновить код, указав абсолютное местоположение файлов. Определить, какой метод загрузки данных в СУБД `PostgreSQL` лучше: **pandas.to_sql()** или `PostgreSQL` **COPY**.

`8.1` Загрузить в Postgres набор данных `upload_test_data.csv` ([источник данных](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/blob/main/practice/pr-5-2-upload-data-from-pandas-to-sql-main/upload_test_data.csv)) выполнив оценку времени загрузки в файле `small_file.py`([файл1](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/blob/main/practice/pr-5-2-upload-data-from-pandas-to-sql-main/upload_test_data_big.csv)).
  
`8.2` Загрузить в Postgres набор данных `upload_test_data_big.csv` ([источник данных](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/blob/main/practice/pr-5-2-upload-data-from-pandas-to-sql-main/upload_test_data_big.csv)) выполнив оценку времени загрузки в файле `big_file.py`([файл2](https://github.com/BosenkoTM/SQL-for-Begginer-Data-Analytics/blob/main/practice/pr-5-2-upload-data-from-pandas-to-sql-main/big_file.py)).

8.3 Показать на диаграмме(или matplotlib, или в `Yandex DataLens` https://datalens.yandex.ru) временную разницу загрузки файлов для простых и больших данных различными методами ось Х - название метода: **pandas.to_sql()**,  `PostgreSQL` **COPY**; по оси У - время.).

Результаты представить в виде отдельного файла ERD-диаграммы для простых и больших данных из PostgreSQL с расширением `FIO_ERD_test_data.jpg`, `FIO_ERD_test_data_big.jpg`;
Ссылку на дашборд в `Yandex DataLens` или файл с расширением `.ipynb`, в котором представлены результаты задания `8.3`.
