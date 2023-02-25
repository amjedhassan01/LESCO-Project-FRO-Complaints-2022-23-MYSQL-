                                                # FULL REPORT LESCO PROJECT FRO COMPLAINTS 2022-23 #           
SELECT COUNT(SHUT_TIME) AS 'TOTAL COMPLAINTS' FROM lesco.cmp;                                                                                                       # TOTAL COMPLAINTS = 5742  
SELECT AVG(EFFICIENCY) as AVERAGE_EFFICIENCY from lesco.cmp;                                                                                                        # AVERAGE EFFICIENCY = 143 %
SELECT  count(shut_time)/365 AS AVERAGE_COMPLAINTS_per_DAY from lesco.cmp;                                                                                          # AVERAGE COMPLAINTS PER DAY = 16
SELECT  count(shut_time)/12 AS AVERAGE_COMPLAINTS_per_MONTH from lesco.cmp;                                                                                         # AVERAGE COMPLAINTS PER MONTH = 479
SELECT shifts, COUNT(shifts) as 'complaints' from lesco.cmp GROUP BY Shifts ORDER by Shifts;                                                                        # COMPLAINTS BY SHIFTS
SELECT YEAR(SHUT_TIME) as 'year', COUNT(SHUT_TIME) as 'Complaints' FROM lesco.cmp GROUP by YEAR(SHUT_TIME);                                                         # COMPLAINTS BY YEARS
SELECT QUARTER(SHUT_TIME) as 'QUARTER', COUNT(SHUT_TIME) as 'Complaints' FROM lesco.cmp GROUP by QUARTER(SHUT_TIME) ORDER by QUARTER(shut_time);                    # COMPLAINTS BY QUARTERS
SELECT monthname(SHUT_TIME) as 'MONTH', COUNT(SHUT_TIME) as 'Complaints' FROM lesco.cmp GROUP by monthname(SHUT_TIME);                                              # COMPLAIANTS BY MONTHS
SELECT REASON, COUNT(REASON) as 'complaints' from lesco.cmp GROUP BY REASON ORDER by REASON;                                                                        # COMPLAIANTS BY REASONS                                                                                                                            
SELECT Batch_no , COUNT(Batch_no) as 'Complaints' FROM lesco.cmp GROUP by Batch_no order by Batch_no;                                                               # COMPLAIANTS BY BATCH NO.s



												# MORE QUERIES... #

SELECT  AVG(EFFICIENCY) AS EFFICEICY_IN_NOVEMBER FROM lesco.cmp where monthname(SHUT_TIME) = 'NOVEMBER';
SELECT  AVG(EFFICIENCY) AS EFFICEICY_IN_TF_COMPLAINTS FROM lesco.cmp where REASON = 12;
SELECT  count(shut_time)/12 AS AVERAGE_TF_COMPLAINTS_per_MONTH from lesco.cmp WHERE REASON = 12;
SELECT  count(shut_time)/365 AS AVERAGE_TF_COMPLAINTS_per_DAY from lesco.cmp WHERE REASON = 12;
SELECT * FROM lesco.cmp where reason = 14 and shifts = '2nd shift';

												# MORE QUERIES... #

SELECT * FROM lesco.cmp where shifts = '1st shift';  # 1ST SHIFT COMPLAINTS = 2489 
SELECT * FROM lesco.cmp where shifts = '2nd shift';  # 2ND SHIFT COMPLAINTS = 2363 
SELECT * FROM lesco.cmp where shifts = '3rd shift';  # 3RD SHIFT COMPLAINTS = 890 
SELECT * from lesco.cmp where Shut_TIME > '2022-07-01' and Shut_TIME < '2023-01-01';   # YEAR 2022 COMPLAINTS = 2811 
SELECT * from lesco.cmp where Shut_TIME > '2023-01-01' and Shut_TIME < '2023-07-01';   # YEAR 2023 COMPLAINTS = 2931 
SELECT * from lesco.cmp where Shut_TIME > '2022-07-01' and Shut_TIME < '2022-10-01';   # YEAR 2022 3RD QUARTER (JUL-SEP) COMPLAINTS = 1893 
SELECT * from lesco.cmp where Shut_TIME > '2022-10-01' and Shut_TIME < '2023-01-01';   # YEAR 2022 4TH QUARTER (OCT-DEC) COMPLAINTS = 918 
SELECT * from lesco.cmp where Shut_TIME > '2023-01-01' and Shut_TIME < '2023-04-01';   # YEAR 2023 1ST QUARTER (JAN-MAR) COMPLAINTS = 1333 
SELECT * from lesco.cmp where Shut_TIME > '2023-04-01' and Shut_TIME < '2023-07-01';   # YEAR 2023 2ND QUARTER (APR-JUN) COMPLAINTS = 1598 
SELECT * from lesco.cmp where Shut_TIME > '2022-07-01' and Shut_TIME < '2022-08-01';   # JULY 2022 COMPLAINTS = 702 
SELECT * from lesco.cmp where Shut_TIME > '2022-08-01' and Shut_TIME < '2022-09-01';   # AUGUST 2022 COMPLAINTS = 686 
SELECT * from lesco.cmp where Shut_TIME > '2022-09-01' and Shut_TIME < '2022-10-01';   # SEPTEMBER 2022 COMPLAINTS = 505 
SELECT * from lesco.cmp where monthname(SHUT_TIME) = 'OCTOBER';                        # OCTOBER 2022 COMPLAINTS = 384 
SELECT * from lesco.cmp where monthname(SHUT_TIME) = 'NOVEMBER';                       # NOVEMBER 2022 COMPLAINTS = 203 
SELECT * from lesco.cmp where monthname(SHUT_TIME) = 'DECEMBER';                       # DECEMBER 2022 COMPLAINTS = 331 
SELECT * from lesco.cmp where Shut_TIME BETWEEN '2023-01-01' and '2023-02-01';         # JANUARY 2023 COMPLAINTS = 478 
SELECT * from lesco.cmp where Shut_TIME BETWEEN '2023-02-01' and '2023-03-01';         # FEBRUARY 2023 COMPLAIANTS = 433 
SELECT * from lesco.cmp where Shut_TIME BETWEEN '2023-03-01' and '2023-04-01';         # MARCH 2023 COMPLAINTS = 422 
SELECT * from lesco.cmp where Shut_TIME BETWEEN '2023-04-01' and '2023-05-01';         # APRIL 2023 COMPLAINTS = 460 
SELECT * from lesco.cmp where Shut_TIME BETWEEN '2023-05-01' and '2023-06-01';         # MAY 2023 COMPLAINTS = 393 
SELECT * from lesco.cmp where Shut_TIME BETWEEN '2023-06-01' and '2023-07-01';         # JUNE 2023 COMPLAINTS = 745 
SELECT * FROM lesco.cmp where reason = 8;                                              # FAULT OF 11KV SYSTEM AT G/STATION = 1 
SELECT * FROM lesco.cmp where reason = 9;                                              # FAULT IN 11KV FEEDER = 117 
SELECT * FROM lesco.cmp where reason = 10;                                             # FAULT IN 11KV FEEDER DUE TO ACCIDENT = 3 
SELECT * FROM lesco.cmp where reason = 12;                                             # FAULT IN DISTRIBUTION TRANSFORMER = 1901 
SELECT * FROM lesco.cmp where reason = 13;                                             # FAULT IN LT LINES = 404 
SELECT * FROM lesco.cmp where reason = 14;                                             # FAULT INCONSUMER'S CABLE & METERS TO CONS = 3217 
SELECT * FROM lesco.cmp where reason = 15;                                             # FAULT IN CONSUMER'S WIRING = 99 
SELECT * FROM lesco.cmp where Batch_no = 1;                                            # 1ST BATCH COMPLAINTS = 491
SELECT * FROM lesco.cmp where Batch_no = 2;                                            # 2ND BATCH COMPLAINTS = 326
SELECT * FROM lesco.cmp where Batch_no = 3;                                            # 3RD BATCH COMPLAINTS = 703
SELECT * FROM lesco.cmp where Batch_no = 4;                                            # 4TH BATCH COMPLAINTS = 155
SELECT * FROM lesco.cmp where Batch_no = 5;                                            # 5TH BATCH COMPLAINTS = 233
SELECT * FROM lesco.cmp where Batch_no = 6;                                            # 6TH BATCH COMPLAINTS = 490
SELECT * FROM lesco.cmp where Batch_no = 7;                                            # 7TH BATCH COMPLAINTS = 614
SELECT * FROM lesco.cmp where Batch_no = 8;                                            # 8TH BATCH COMPLAINTS = 262
SELECT * FROM lesco.cmp where Batch_no = 9;                                            # 9TH BATCH COMPLAINTS = 194
SELECT * FROM lesco.cmp where Batch_no = 10;                                           # 10TH BATCH COMPLAINTS = 371
SELECT * FROM lesco.cmp where Batch_no = 11;                                           # 11TH BATCH COMPLAINTS = 394
SELECT * FROM lesco.cmp where Batch_no = 12;                                           # 12TH BATCH COMPLAINTS = 511
SELECT * FROM lesco.cmp where Batch_no = 13;                                           # 13TH BATCH COMPLAINTS = 401
SELECT * FROM lesco.cmp where Batch_no = 14;                                           # 14TH BATCH COMPLAINTS = 370
SELECT * FROM lesco.cmp where Batch_no = 15;                                           # 15TH BATCH COMPLAINTS = 198
SELECT * FROM lesco.cmp where Batch_no = 17;                                           # 17TH BATCH COMPLAINTS = 3
SELECT * FROM lesco.cmp where Batch_no = 27;                                           # 27TH BATCH COMPLAINTS = 10
SELECT * FROM lesco.cmp where Batch_no = 44;                                           # 44TH BATCH COMPLAINTS = 4
SELECT * FROM lesco.cmp where Batch_no = 46;                                           # 46TH BATCH COMPLAINTS = 12

