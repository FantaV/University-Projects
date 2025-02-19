proc print data=orion.sales_mgmt; 
run;

proc sql;
	select  employee_id, job_title, salary
	from orion.sales_mgmt;
quit;
