/*Construct a contract with a function updateProductPrice that takes 

productId and newPrice as inputs. 

Utilize the products mapping to update the price of a specific product.*/

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

    function updateProductPrice(uint256 _productId, uint256 _newPrice) public {
        require(products[_productId].price > 0, "Product does not exist");
        products[_productId].price = _newPrice;
    }
}
