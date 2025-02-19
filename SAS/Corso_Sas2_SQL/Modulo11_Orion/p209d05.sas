proc sort data=orion.Customer_Orders out=CustOrdProd;
   by Supplier;
run;

libname survey 'survey.xls';

data CustOrdProdSurv;
   merge CustOrdProd(in=c rename=(Quantity=Total_Quantity)) 
         survey.'Supplier$'n(in=s);
   by Supplier;
   if c=1 and s=1;
   if Total_Quantity>=Quantity and 
      Total_Retail_Price>=Price;
run;

libname survey clear;

proc print data=CustOrdProdSurv;
   var Customer_Name Total_Quantity Quantity
       Total_Retail_Price Price;
run;

