CREATE TABLE `CUSTOMER` (
    `customer_id` int NOT NULL,
    `customer_name` varchar(100) NOT NULL,
    `customer_address` varchar(200) DEFAULT NULL,
    `customer_sex` bit(1) DEFAULT NULL,
    `customer_age` tinyint DEFAULT NULL,
     PRIMARY KEY (`customer_id`)
)