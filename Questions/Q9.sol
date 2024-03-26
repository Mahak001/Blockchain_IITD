/*Develop a contract with a function addProductDetails that allows 

adding product details (productId, productName, price). 

Utilize a struct to organize and store this information in a mapping.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Product_contract{
    struct Product {
        string productName;
        uint256 price;
    }

    mapping(uint256 => Product) public products;

    function addProductDetails(uint256 _productId, string memory _productName, uint256 _price) public {
        Product memory newProduct = Product(_productName, _price);
        products[_productId] = newProduct;
    }
}
