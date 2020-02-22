   CASE
       WHEN sig_no IN (1,2,3,4,5,6,7,14,15,16,17,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 ) THEN col2
       WHEN sig_no IN (8,9,10,11,12,13,18,19,20,21,37,38,39,40,41,42,43,44 ) THEN col3
       ELSE NULL
   END as AGE_BAND_10, 

   CASE
       WHEN sig_no IN (8,9,10,11,12,13,18,19,20,21,37,38,39,40,41,42,43,44 ) THEN col2
       ELSE NULL
   END as AGE_BAND_5, 

   CASE
       WHEN sig_no IN (2,3,4,15,23,24,25,30,31,32 ) THEN col13
       WHEN sig_no IN (38,39,40 ) THEN col14
       WHEN sig_no IN (9,10,11 ) THEN col15
       ELSE NULL
   END as BRAND_NAME, 

   CASE
       WHEN sig_no IN (1,2,3,4,5,6,7,14,15,16,17,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 ) THEN col7
       WHEN sig_no IN (18,19,20,21,37,38,39,40,41,42,43,44 ) THEN col8
       WHEN sig_no IN (8,9,10,11,12,13 ) THEN col9
       ELSE NULL
   END as BROWSER, 

   CASE
       WHEN sig_no IN (19 ) THEN col14
       ELSE NULL
   END as CATEGORY, 

   CASE
       WHEN sig_no IN (2,23 ) THEN col15
       WHEN sig_no IN (3,4,24,25 ) THEN col16
       WHEN sig_no IN (9 ) THEN col17
       WHEN sig_no IN (10,11 ) THEN col18
       ELSE NULL
   END as CATEGORY_ALL, 

   CASE
       WHEN sig_no IN (2,23 ) THEN col16
       WHEN sig_no IN (3,4,24,25 ) THEN col17
       WHEN sig_no IN (9 ) THEN col18
       WHEN sig_no IN (10,11 ) THEN col19
       ELSE NULL
   END as CATEGORY_itg1, 

   CASE
       WHEN sig_no IN (2,23 ) THEN col17
       WHEN sig_no IN (3,4,24,25 ) THEN col18
       WHEN sig_no IN (9 ) THEN col19
       WHEN sig_no IN (10,11 ) THEN col20
       ELSE NULL
   END as CATEGORY_itg2, 

   CASE
       WHEN sig_no IN (2,23 ) THEN col18
       WHEN sig_no IN (3,4,24,25 ) THEN col19
       WHEN sig_no IN (9 ) THEN col20
       WHEN sig_no IN (10,11 ) THEN col21
       ELSE NULL
   END as CATEGORY_itg3, 

   CASE
       WHEN sig_no IN (2,23 ) THEN col19
       WHEN sig_no IN (3,4,24,25 ) THEN col20
       ELSE NULL
   END as CATEGORY_itg4, 

   CASE
       WHEN sig_no IN (20 ) THEN col14
       ELSE NULL
   END as CINEMA_NAME, 

   CASE
       WHEN sig_no IN (8,9,10,11,12,13 ) THEN col10
       WHEN sig_no IN (1,2,3,4,5,6,7,14,15,16,17,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 ) THEN col8
       WHEN sig_no IN (18,19,20,21,37,38,39,40,41,42,43,44 ) THEN col9
       ELSE NULL
   END as DEVICE_MODEL, 

   CASE
       WHEN sig_no IN (5,16,26,33 ) THEN col13
       WHEN sig_no IN (41 ) THEN col14
       WHEN sig_no IN (12 ) THEN col15
       ELSE NULL
   END as DISCOUNT_PRICE, 

   CASE
       WHEN sig_no IN (5,16,26,33 ) THEN col15
       WHEN sig_no IN (41 ) THEN col16
       WHEN sig_no IN (12 ) THEN col17
       ELSE NULL
   END as DISCOUNT_RATE, 

   CASE
       WHEN sig_no IN (17 ) THEN col12
       WHEN sig_no IN (13 ) THEN col14
       ELSE NULL
   END as EVENT_EXHIBITION, 

   CASE
       WHEN sig_no IN (6,27,34 ) THEN col12
       WHEN sig_no IN (21,42,44 ) THEN col13
       ELSE NULL
   END as EVENT_NAME, 

   CASE
       WHEN sig_no IN (15,38 ) THEN col17
       WHEN sig_no IN (39,40 ) THEN col18
       WHEN sig_no IN (2,23 ) THEN col21
       WHEN sig_no IN (3,4,24,25 ) THEN col22
       ELSE NULL
   END as LPIMS_Brand, 

   CASE
       WHEN sig_no IN (15,38 ) THEN col18
       WHEN sig_no IN (39,40 ) THEN col19
       WHEN sig_no IN (2,23 ) THEN col22
       WHEN sig_no IN (3,4,24,25 ) THEN col23
       ELSE NULL
   END as LPIMS_itg1, 

   CASE
       WHEN sig_no IN (15,38 ) THEN col19
       WHEN sig_no IN (39,40 ) THEN col20
       WHEN sig_no IN (2,23 ) THEN col23
       WHEN sig_no IN (3,4,24,25 ) THEN col24
       ELSE NULL
   END as LPIMS_itg2, 

   CASE
       WHEN sig_no IN (15,38 ) THEN col20
       WHEN sig_no IN (39,40 ) THEN col21
       WHEN sig_no IN (2,23 ) THEN col24
       WHEN sig_no IN (3,4,24,25 ) THEN col25
       ELSE NULL
   END as LPIMS_itg3, 

   CASE
       WHEN sig_no IN (15,38 ) THEN col16
       WHEN sig_no IN (39,40 ) THEN col17
       WHEN sig_no IN (2,23 ) THEN col20
       WHEN sig_no IN (3,4,24,25 ) THEN col21
       ELSE NULL
   END as LPIMS_Producer, 

   CASE
       WHEN sig_no IN (20 ) THEN col15
       ELSE NULL
   END as MOVIE_DATE, 

   CASE
       WHEN sig_no IN (20 ) THEN col16
       ELSE NULL
   END as MOVIE_DAY, 

   CASE
       WHEN sig_no IN (18,20 ) THEN col13
       ELSE NULL
   END as MOVIE_NAME, 

   CASE
       WHEN sig_no IN (20 ) THEN col17
       ELSE NULL
   END as MOVIE_START_TIME, 

   CASE
       WHEN sig_no IN (8,9,10,11,12,13 ) THEN col4
       ELSE NULL
   END as NATIONALITY, 

   CASE
       WHEN sig_no IN (1,2,3,4,5,6,7,14,15,16,17,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 ) THEN col6
       WHEN sig_no IN (18,19,20,21,37,38,39,40,41,42,43,44 ) THEN col7
       WHEN sig_no IN (8,9,10,11,12,13 ) THEN col8
       ELSE NULL
   END as OS, 

   CASE
       WHEN sig_no IN (5,26,32,33 ) THEN col16
       WHEN sig_no IN (19,41 ) THEN col17
       WHEN sig_no IN (12 ) THEN col18
       WHEN sig_no IN (25 ) THEN col26
       ELSE NULL
   END as PAYMENT_METHOD, 

   CASE
       WHEN sig_no IN (7,28,35,36 ) THEN col12
       WHEN sig_no IN (43 ) THEN col13
       ELSE NULL
   END as PLANNING_EVENT_NAME, 

   CASE
       WHEN sig_no IN (31 ) THEN col17
       WHEN sig_no IN (32 ) THEN col18
       WHEN sig_no IN (15 ) THEN col22
       WHEN sig_no IN (10,11,39,40 ) THEN col23
       WHEN sig_no IN (3,4,24 ) THEN col27
       WHEN sig_no IN (25 ) THEN col28
       ELSE NULL
   END as PPRICE_INCART, 

   CASE
       WHEN sig_no IN (19,30 ) THEN col15
       WHEN sig_no IN (9,38 ) THEN col21
       WHEN sig_no IN (2,23 ) THEN col25
       ELSE NULL
   END as PRICE, 

   CASE
       WHEN sig_no IN (2,3,4,15,23,24,25,30,31,32 ) THEN col12
       WHEN sig_no IN (19,38,39,40 ) THEN col13
       WHEN sig_no IN (9,10,11 ) THEN col14
       ELSE NULL
   END as PRODUCT_NAME, 

   CASE
       WHEN sig_no IN (3,4,15,24,25,31,32 ) THEN col15
       WHEN sig_no IN (39,40 ) THEN col16
       WHEN sig_no IN (10,11 ) THEN col17
       ELSE NULL
   END as PRODUCT_QUANTITY, 

   CASE
       WHEN sig_no IN (5,16,26,33 ) THEN col14
       WHEN sig_no IN (41 ) THEN col15
       WHEN sig_no IN (12 ) THEN col16
       ELSE NULL
   END as PURCHASE_PRICE, 

   CASE
       WHEN sig_no IN (19 ) THEN col16
       ELSE NULL
   END as QUANTITY, 

   CASE
       WHEN sig_no IN (18,19,20,21 ) THEN col5
       ELSE NULL
   END as REGION_CITY_IP, 

   CASE
       WHEN sig_no IN (1,2,3,4,5,6,7,14,15,16,17,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 ) THEN col4
       WHEN sig_no IN (37,38,39,40,41,42,43,44 ) THEN col5
       WHEN sig_no IN (8,9,10,11,12,13 ) THEN col6
       ELSE NULL
   END as REGION_IP, 

   CASE
       WHEN sig_no IN (20 ) THEN col18
       ELSE NULL
   END as RESERVATION_METHOD, 

   CASE
       WHEN sig_no IN (1,14,22,29 ) THEN col12
       WHEN sig_no IN (37 ) THEN col13
       WHEN sig_no IN (8 ) THEN col14
       ELSE NULL
   END as SEARCH_WORD, 

   CASE
       WHEN sig_no IN (5,16,26,33 ) THEN col12
       WHEN sig_no IN (41 ) THEN col13
       WHEN sig_no IN (12 ) THEN col14
       WHEN sig_no IN (31 ) THEN col16
       WHEN sig_no IN (32 ) THEN col17
       WHEN sig_no IN (15 ) THEN col21
       WHEN sig_no IN (10,11,39,40 ) THEN col22
       WHEN sig_no IN (3,4,24 ) THEN col26
       WHEN sig_no IN (25 ) THEN col27
       ELSE NULL
   END as SELLING_PRICE, 

   CASE
       WHEN sig_no IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44 ) THEN col1
       ELSE NULL
   END as SEX, 

   CASE
       WHEN sig_no IN (2,3,4,15,23,24,25,30,31,32 ) THEN col14
       WHEN sig_no IN (38,39,40 ) THEN col15
       WHEN sig_no IN (9,10,11 ) THEN col16
       ELSE NULL
   END as SKU, 

   CASE
       WHEN sig_no IN (1,2,3,4,5,6,7,14,15,16,17,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 ) THEN col10
       WHEN sig_no IN (18,19,20,21,37,38,39,40,41,42,43,44 ) THEN col11
       WHEN sig_no IN (8,9,10,11,12,13 ) THEN col12
       ELSE NULL
   END as SOURCE_KEYWORD, 

   CASE
       WHEN sig_no IN (1,2,3,4,5,6,7,14,15,16,17,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 ) THEN col3
       WHEN sig_no IN (18,19,20,21,37,38,39,40,41,42,43,44 ) THEN col4
       WHEN sig_no IN (8,9,10,11,12,13 ) THEN col5
       ELSE NULL
   END as SOURCE_NATION, 

   CASE
       WHEN sig_no IN (18,19,20,21,37,38,39,40,41,42,43,44 ) THEN col10
       WHEN sig_no IN (8,9,10,11,12,13 ) THEN col11
       WHEN sig_no IN (1,2,3,4,5,6,7,14,15,16,17,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 ) THEN col9
       ELSE NULL
   END as SOURCE_PATH, 

   CASE
       WHEN sig_no IN (16 ) THEN col16
       WHEN sig_no IN (5,33 ) THEN col17
       WHEN sig_no IN (41 ) THEN col18
       WHEN sig_no IN (12,32 ) THEN col19
       WHEN sig_no IN (15 ) THEN col23
       WHEN sig_no IN (11,40 ) THEN col24
       WHEN sig_no IN (4 ) THEN col28
       WHEN sig_no IN (1,2,3,4,5,6,7,14,15,16,17,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 ) THEN col5
       WHEN sig_no IN (18,19,20,21,37,38,39,40,41,42,43,44 ) THEN col6
       WHEN sig_no IN (8,9,10,11,12,13 ) THEN col7
       ELSE NULL
   END as TELECOM, 

   CASE
       WHEN sig_no IN (26 ) THEN col17
       WHEN sig_no IN (25 ) THEN col29
       ELSE NULL
   END as TRANSACTION_ID, 

   CASE
       WHEN sig_no IN (1,2,3,4,5,6,7,14,15,16,17,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 ) THEN col11
       WHEN sig_no IN (18,19,20,21,37,38,39,40,41,42,43,44 ) THEN col12
       WHEN sig_no IN (8,9,10,11,12,13 ) THEN col13
       ELSE NULL
   END as URL 

