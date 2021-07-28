1:
select er.evntNo,er.dateHeld, count(*) as eventPlanCount from EventRequest as er inner join EventPlan as ep on er.evntNo=ep.evntNo
where ep.workDate between '2013-12-01' AND '2013-12-31' group by er.evntNo having eventPlanCount>1; 

2:

select ep.planNo,ep.evntNo,ep.workDate,ep.activity from EventPlan ep inner join EventRequest er on ep.evntNo=er.evntNo inner join Facility f 
where(f.facName='Basketball arena') and (ep.workDate BETWEEN '2013-12-01' AND '2013-12-31');



3:
Select
  er.evntNo,
  er.dateHeld,
  er.dateReq,
  er.estCost,
  er.status
from EventRequest AS er
  INNER JOIN EventPlan AS ep ON er.evntNo = ep.evntNo
  INNER JOIN Employee AS e ON ep.empNo = e.empNo
  INNER JOIN Facility AS f ON er.facNo = f.facNo
Where (f.facName = 'Basketball arena') AND (er.dateHeld BETWEEN '2013-10-01' AND '2013-12-31') AND
      (e.empName = 'Mary Manager');
      
      
 
4:

SELECT
  epl.planNo,
  epl.lineNo,
  epl.numberFLD AS 'Number',
  epl.timeStart,
  epl.timeEnd,
  l.locName     AS 'Location name',
  r.resName     AS 'Resource name'
FROM EventPlanLine AS epl
  INNER JOIN EventPlan AS ep ON epl.planNo = ep.planNo
  INNER JOIN Location AS l ON epl.locNo = l.locNo
  INNER JOIN ResourceTbl AS r ON epl.resNo = r.resNo
  INNER JOIN Facility AS f ON l.facNo = f.facNo
WHERE (f.facName = 'Basketball arena') AND (ep.activity = 'Operation') AND
      (ep.workDate BETWEEN '2013-10-01' AND '2013-12-31')
ORDER BY epl.planNo;



insertions::
1:
INSERT INTO Facility (facNo, facName) VALUES ('F104', 'Swimming Pool');
2:
INSERT INTO Location (locNo, facNo, locName) VALUES ('L107', 'F104', 'Door');
3:
INSERT INTO Location (locNo, facNo, locName) VALUES ('L108', 'F104', 'Locker Room');
4:
UPDATE Location
SET locName = 'Gate'
WHERE locNo = 'L107';
5:
DELETE FROM Location
WHERE locNo = 'L108';


