package com.service;
import java.util.*;
import java.sql.SQLException;

import com.model.Product;

public interface productInterface {
int addProductService(Product p);
boolean delProductService(int pid);
Product searchProductService(int pid);
//Product updateProductService(int pid);
List displayAllproductService() throws SQLException;
Product updateProductService1(Product p);

}
