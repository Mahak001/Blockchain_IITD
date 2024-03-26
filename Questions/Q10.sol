/*Create a contract with a function getProductInfo that takes a productId as 

input and returns the associated productName 

and price using the products mapping.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductContract {
    struct Product {
        string productName;
        uint256 price;
    }

    mapping(uint256 => Product) public products;

    function addProductDetails(uint256 _productId, string memory _productName, uint256 _price) public {
        Product memory newProduct = Product(_productName, _price);
        products[_productId] = newProduct;
    }

    function getProductInfo(uint256 _productId) public view returns (string memory, uint256) {
        Product memory product = products[_productId];
        return (product.productName, product.price);
    }
}
