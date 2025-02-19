data shoes;
  set orion.product_list;
  if substr(right(Product_Name),33,13)=
      'Running Shoes';
run;
