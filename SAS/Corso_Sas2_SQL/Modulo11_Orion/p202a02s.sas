 /* A PRINT procedure is required for each data set. */
title 'Employees in the United States';
proc print data=usa;
run;

title 'Employees in Australia';
proc print data=australia;
run;

title 'Non US and AU Employees';
proc print data=other;
run;

title;
