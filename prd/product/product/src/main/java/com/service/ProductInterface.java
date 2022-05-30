package com.service;
import java.util.*;
import java.sql.SQLException;

import com.model.Product;

public interface ProductInterface {
int addProductService(Product p);
int delProductService();
Product searchProductService(int product_id);
Product updateProductService(int product_id);
List displayAllproductService() throws SQLException;


}
