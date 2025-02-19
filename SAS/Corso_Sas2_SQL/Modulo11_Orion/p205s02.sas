data work.small;
  set orion.newcompetitors;
  StoreCode=left(substr(ID,3));
  SizeCat=substr(StoreCode,1,1);
  if SizeCat='1';
  City=propcase(City);
  drop StoreCode SizeCat;
run;

title 'New Small-Store Competitors';
proc print data=work.small noobs;
run;
title;


  /* Alternate solution */
data work.small;
  set orion.newcompetitors;
  where substr(left(substr(ID,3)),1,1)='1';
  City=propcase(City);
run;
 /* This program is less coding but tougher to read and  
 debug because of the nested functions. Either a WHERE or 
 subsetting IF would give the correct results here. */

title 'New Small-Store Competitors';
proc print data=work.small noobs;
run;
title;
