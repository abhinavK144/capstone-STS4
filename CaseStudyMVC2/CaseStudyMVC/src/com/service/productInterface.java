package com.service;
import java.util.*;
import java.sql.SQLException;

import com.model.Product;

public interface productInterface {
int addProductService(Product p);
boolean delProductService(int Product_id);
Product searchProductService(int Product_id);
//Product updateProductService(int Product_id);
List displayAllproductService() throws SQLException;
Product updateProductService1(Product p);

}
