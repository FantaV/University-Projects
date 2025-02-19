proc sort data=orion.Customer_Orders out=CustOrdProd;
   by Supplier;
run;

libname survey 'survey.xls';

data CustOrdProdSurv;
   merge CustOrdProd(in=c) 
         survey.'Supplier$'n(in=s);
   by Supplier;
   if c=1 and s=1;
run;

libname survey clear;

proc print data=CustOrdProdSurv;
run;

