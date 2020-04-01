SELECT * -- все столбцы
FROM zp; 

SELECT FIO,ZP
 FROM zp;  --только столбцы FIO и ZP

SELECT * 
FROM zp
 WHERE ZP>1000; --выбрать всех у кого зп больше 1000

 SELECT *
  FROM zp
  WHERE zp <> 600 ;--у кого зп не равно 600(<>знак неравенства)

  SELECT * 
  FROM zp
  WHERE zp>=500 AND zp<=1000; --зп от 500 до 1000

  SELECT * 
  FROM zp
  WHERE Zp>=500 AND dep; ="производство" --зп больше =500 и работает на производстве

  SELECT * 
  FROM zp
  WHERE not zp<=100; --все у кого зп не менее 100(not-отрицание) 

  SELECT * 
  FROM `zp`
   order by zp ;--отсортировать всех рабочих по зп (order by-сортировка от меньшего к большему(ASC)(DESC-от большего к меньшему)) 

   SELECT * 
   FROM `zp` 
   order by dep, zp desc; --dep в алфавитном порядке,а яз от большего к меньшему(приоритет  на то,что стоит впереди) 

   SELECT № as 'номер',fio as 'фио',zp as 'зп', dep as 'деп' 
   FROM `zp`;--as-это как (вывести № как номер)

   SELECT *, zp*0.13 as налог 
   FROM `zp`; --посчитать налоги для каждого работника  и вывести в калонке налог

   SELECT *, zp*0.13 as налог,zp-zp*0.13 as чистая 
   FROM `zp` as чистая; --вывести зп - налоги в колонке чистая