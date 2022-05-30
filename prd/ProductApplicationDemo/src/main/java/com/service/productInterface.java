
package com.service;
import java.util.*;
import java.sql.SQLException;

import com.model.Product;

public interface productInterface {
int addProductService(Product p);
int delProductService();
Product searchProductService(int productid);
Product updateProductService(int productid);
List displayAllproductService() throws SQLException;


}