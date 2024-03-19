select now();
select date_format(curdate(),'%d-%m-%y');
select date_format(curdate(),'%d/%m/%y');
select datediff(curdate(),'7/04/2024')diff;
select datediff(curdate(),'2022/02/27');
select date_add(curdate(),interval 1 day) as 'after one day'; 
select date_add(curdate(),interval 2 day) as 'after two day'; 
select date_add(curdate(),interval 3 day) as 'after three day'; 
select now() datetime;
select current_date();
select current_time();
select current_timestamp();
select current_user();

-- time_format--
select time_format('23:08:05', '%H %i %s');
select time_format('23:08:05', '%h %i %s');
select time_format('23:08:05', '%h %i %s%p');
select time_format('17:42:03.000001', ' %r');
select time_format('05:42:03', ' %r');
select time_format('18:42:03', ' %r');
SELECT TIME_FORMAT('17:42:03.000001', '%T');
SELECT TIME_FORMAT('07:42:03.000001', '%f');

-- date_format--
SELECT DATE_FORMAT('2014-02-28', '%Y');
SELECT DATE_FORMAT('2004-02-14', '%M %d, %Y');
SELECT DATE_FORMAT('2014-02-01', '%M %e %Y');
SELECT DATE_FORMAT('2004-02-06', '%W, %M %D, %Y'); -- %e,%d--
SELECT DATE_FORMAT('2004-02-14', '%W');
SELECT DATE_FORMAT('2004-02-14', '%j');

-- data_sub--DATE_SUB( date, INTERVAL value unit )--
SELECT DATE_SUB('2014-02-13', INTERVAL '5-3' YEAR_MONTH);
SELECT DATE_SUB('2014-02-13 08:44:21.000001', INTERVAL '7 1:03:12.000001' DAY_MICROSECOND) as intervaltime;
SELECT DATE_SUB('2014-02-13 08:44:21', INTERVAL '7 1:03:12' DAY_SECOND);
SELECT DATE_SUB('2014-02-13 08:44:21', INTERVAL '7 1' DAY_HOUR);
SELECT DATE_SUB('2014-02-13 08:44:21', INTERVAL '7 1:03' DAY_MINUTE);
SELECT DATE_SUB('2014-02-13 08:44:21', INTERVAL 60 SECOND);
SELECT DATE_SUB('2014-02-13', INTERVAL 3 QUARTER);

-- DAY( date_value )--
SELECT DAY('2014/01/28');
SELECT DAY(CURDATE());

-- FROM_DAYS( numeric_day )--
SELECT FROM_DAYS(6753);

-- EXTRACT Function- EXTRACT( unit FROM date )--
SELECT EXTRACT(SECOND FROM '2014-02-13 08:44:21');
SELECT EXTRACT(MINUTE FROM '2014-02-13 08:44:21');
SELECT EXTRACT(HOUR FROM '2014-02-13 08:44:21');

-- HOUR FUNCTION--HOUR( date_value )--
SELECT HOUR('12:13:06');
SELECT HOUR('24:13:06');

-- LAST_DAY - LAST_DAY( date_value ) --
SELECT LAST_DAY('2014-01-13');
SELECT LAST_DAY('2024-02-09 08:21:05');

-- SEC_TO_TIME--
SELECT SEC_TO_TIME(1);
SELECT SEC_TO_TIME(543);

--  PERIOD_ADD Function
-- A period formatted as either YYMM or YYYYMM.-PERIOD_ADD( period, number )
SELECT PERIOD_ADD(201402,6);
SELECT PERIOD_ADD(202402,5);
SELECT PERIOD_ADD(201402,12);
 SELECT PERIOD_ADD(201402,-1);
 
 --  PERIOD_DIFF Function/PERIOD_DIFF( period1, period2 )
 SELECT PERIOD_DIFF(201405,201402);
 SELECT PERIOD_DIFF(201405,201412);

-- QUARTER Function/QUARTER( date_value ) 
SELECT QUARTER('2013-11-15');
SELECT QUARTER(CURDATE());
