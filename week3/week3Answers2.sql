1::
SELECT DISTINCT
  c.city,
  c.state,
  c.zip
FROM Customer AS c ;


2::
SELECT
  e.empName,
  e.department,
  e.phone,
  e.email
FROM Employee AS e
WHERE e.phone LIKE '3-%';


3::
select * from ResourceTbl where(rate>=10 and rate<=20)  order by rate;


4::
select
  er.evntNo,
  er.dateAuth,
  er.status
from EventRequest AS er
where (er.status = 'Approved' OR er.status = 'Denied') and er.dateAuth between '2013-07-01' and '2013-07-31';


5::
select
  l.locNo,
  l.locName
from Location as l, Facility as f
where l.facNo = f.facNo and f.facName = 'Basketball arena';



6::
SELECT
  ep.planNo,
  count(el.planNo),
  sum(el.numberFLD)
FROM EventPlan AS ep, EventPlanLine AS el
WHERE ep.planNo = el.planNo
GROUP BY ep.planNo;
