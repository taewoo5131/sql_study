CREATE TABLE `CAR_ORDER` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `car_id` int NOT NULL,
  `order_date` date NOT NULL,
  `order_price` int NOT NULL,
  PRIMARY KEY (`order_id`)
)