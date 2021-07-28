select custNo,custName, phone,city from Customer;
select custNo,custName, phone,city from Customer where state ='CO';
select * from EventRequest where estCost> 4000 order by dateHeld;

SELECT evntNo, dateHeld, status, estAudience
  FROM EventRequest
  WHERE (status = 'Approved' AND estAudience > 9000) 
           OR (status = 'Pending' AND estAudience > 7000);
           
           
select evntNo, dateHeld, Customer.custNo, custName
  from EventRequest, Customer
  where City = 'Boulder' 
        and dateHeld between '2018-12-01'and '2018-12-31'
        and EventRequest.custNo = Customer.custNo;


SELECT planNo, AVG(numberFld) AS AvgNumResources
  FROM EventPlanLine
  WHERE locNo = 'L100'
  GROUP BY planNo;
  
  
SELECT planNo, AVG(numberFld) AS AvgNumResources, 
               COUNT(*) AS NumEventLines
  FROM EventPlanLine
  WHERE locNo = 'L100'
  GROUP BY planNo
  HAVING count(*) > 1;
