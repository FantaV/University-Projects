proc transpose 
     data=orion.employee_donations
     out=rotate2;
   by employee_id;
run;
proc print data=rotate2 noobs;
run;
