INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-0307464897', 'Cooking for Jeffrey: A Barefoot Contessa Cookbook', 'Ina Garten', 'Clarkson Potter', '2016', '8', '21.00', 'hardcover', 'jeffrey', 'cooking');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-0312510787', 'First 100 Words', 'Roger Priddy', 'Priddy Books', '2011', '23', '3.92', 'hardcover', 'words', 'children');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-0385541190', 'The Whistler', 'John Grisham', 'Doubleday', '2016', '14', '10.33', 'softcover', 'whistler', 'horror');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-0515153651', 'Killing Floor: A Jack Reacher Novel', ' Lee Child', 'Jove', '2012', '6', '7.12', 'softcover', 'Jack reacher', 'adventure');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-0545392556', "Giraffes Can't Dance", ' Giles Andreae', 'Cartwheel Books', '2012', '6', '4.57', 'hardcover', 'giraffes', 'children');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-0718079185', 'The Magnolia Story', ' Chip Gaines', 'Thomas Nelson', '2016', '15', '15.87', 'hardcover', 'magnolia', 'romance');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-1338109061', 'Fantastic Beasts and Where to Find Them', ' J.K. Rowling', 'Arthur A. Levine Books', '2016', '50', '14.99', 'hardcover', 'harry potter', 'fiction');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-1419723445', 'Diary of a Wimpy Kid # 11: Double Down', ' Jeff Kinney', 'Harry N. Abramss', '2016', '10', '8.00', 'hardcover', 'wimpy', 'comics');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-1627790628', 'Killing the Rising Sun',  "Bill O'Reilly", 'Henry Holt and Co', '2016', '5', '18.00', 'hardcover', 'japan', 'history');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-0399594496', 'Trump: The Art of the Deal', 'Donald J. Trump', 'Ballantine Books', '2015', '5', '9.45', 'softcover', 'trump, art of deal', 'business');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-1501138003', 'Great Again: How to Fix Our Crippled America', 'Donald J. Trump', 'Threshold Editions', '2016', '5', '8.99', 'hardcover', 'trump, great again', 'political');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-0545795661', 'Pokémon Deluxe Essential Handbook', 'Scholastic', 'Scholastic', '2015', '10', '7.19', 'hardcover', 'pokemon', 'children');

INSERT INTO books (`ISBN13`, `title`, `authors`, `publisher`, `year_of_publication`, `inventory_qty`, `price`, `format`, `keywords`, `subject`) VALUES ('978-1501141515', 'Born to Run', 'Bruce Springsteen', 'Simon & Schuster', '2016', '7', '19.5', 'hardcover', 'born to run', 'music');



INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('1', 'Ash', '2016-09-15', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('2', 'Brock', '2016-09-16', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('3', 'Cyrus', '2016-09-17', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('4', 'Cyrus', '2016-10-10', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('5', 'Dawn', '2016-10-15', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('6', 'Ash', '2016-10-15', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('7', 'Ash', '2016-10-18', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('8', 'Brock', '2016-10-20', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('9', 'Cyrus', '2016-10-21', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('10', 'Hilda', '2016-10-22', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('11', 'Elm', '2016-10-30', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('12', 'Dawn', '2016-11-01', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('13', 'Green', '2016-11-05', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('14', 'Brock', '2016-11-08', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('15', 'Ash', '2016-12-02', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('16', 'Brock', '2016-12-02', 'arrived');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('17', 'Cyrus', '2016-12-05', 'pending');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('18', 'Elm', '2016-12-06', 'pending');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('19', 'Flannery', '2016-12-07', 'pending');
INSERT INTO ordered_books (`orderid`, `customer`, `order_date`, `order_status`) VALUES ('20', 'Dawn', '2016-12-07', 'pending');



INSERT INTO `customers` (`login_name`, `password`, `first_name`, `last_name`, `credit_card`, `address`, `phone_number`) VALUES ('Ash', 'Ash', 'Ash', 'Ketchum', '0123456789', 'Pallet Town', '123456');
INSERT INTO `customers` (`login_name`, `password`, `first_name`, `last_name`, `credit_card`, `address`, `phone_number`) VALUES ('Brock', 'Brock', 'Brock', 'Hard', '0123456', 'Pewter City', '234567');
INSERT INTO `customers` (`login_name`, `password`, `first_name`, `last_name`, `credit_card`, `address`, `phone_number`) VALUES ('Cyrus', 'Cyrus', 'Cyrus', 'Cyrus', '28675325', 'Team Galactic HQ', '345678');
INSERT INTO `customers` (`login_name`, `password`, `first_name`, `last_name`, `credit_card`, `address`, `phone_number`) VALUES ('Dawn', 'Dawn', 'Dawn', 'Dawn', '5486464', 'Twinleaf Town', '65846541');
INSERT INTO `customers` (`login_name`, `password`, `first_name`, `last_name`, `credit_card`, `address`, `phone_number`) VALUES ('Elm', 'Elm', 'Professor', 'Elm', '2452256', 'Pokemon Lab', '254635432');
INSERT INTO `customers` (`login_name`, `password`, `first_name`, `last_name`, `credit_card`, `address`, `phone_number`) VALUES ('Flannery', 'Flannery', 'Flannery', 'Flannery', '146463131', 'Lavaridge Town', '16531561');
INSERT INTO `customers` (`login_name`, `password`, `first_name`, `last_name`, `credit_card`, `address`, `phone_number`) VALUES ('Green', 'Green', 'Leaf', 'Green', '53654654', 'Pallet Town', '43545464');
INSERT INTO `customers` (`login_name`, `password`, `first_name`, `last_name`, `credit_card`, `address`, `phone_number`) VALUES ('Hilda', 'Hilda', 'Hilda', 'Hilda', '5465656', 'Aspertia Town', '67465475');
INSERT INTO `customers` (`login_name`, `password`, `first_name`, `last_name`, `credit_card`, `address`, `phone_number`) VALUES ('Illima', 'Illima', 'Captain', 'Illima', '64657657', 'Haouli City', '67465475');



INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('1', '978-0312510787', '2');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('2', '978-0545392556', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('3', '978-1419723445', '5');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('3', '978-1627790628', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('4', '978-0312510787', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('5', '978-0545392556', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('6', '978-0718079185', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('6', '978-0545795661', '2');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('6', '978-1338109061', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('7', '978-0545795661', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('7', '978-0312510787', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('7', '978-1627790628', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('8', '978-1627790628', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('8', '978-1501138003', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('9', '978-1419723445', '2');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('9', '978-0307464897', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('9', '978-0312510787', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('9', '978-0385541190', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('9', '978-0545392556', '2');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('10', '978-1419723445', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('10', '978-1627790628', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('11', '978-1501138003', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('11', '978-0399594496', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('11', '978-0545392556', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('11', '978-0312510787', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('11', '978-1338109061', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('12', '978-0515153651', '2');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('12', '978-0312510787', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('12', '978-1501141515', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('12', '978-0545392556', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('13', '978-0545795661', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('13', '978-1501141515', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('13', '978-0545392556', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('14', '978-0545392556', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('15', '978-0545392556', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('15', '978-0545795661', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('15', '978-0718079185', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('16', '978-1338109061', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('16', '978-1419723445', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('16', '978-1501138003', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('17', '978-1501141515', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('17', '978-1627790628', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('18', '978-0307464897', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('19', '978-0385541190', '2');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('20', '978-0399594496', '1');
INSERT INTO `orders` (`Orderid`, `ISBN13`, `order_qty`) VALUES ('20', '978-0515153651', '1');



INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-0385541190', 'Ash', '5', 'Pikachu, Use Thunderbolt','2016-12-06');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-0385541190', 'Cyrus', '5', 'I see... I may lose if this pace continues...','2016-12-06');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-0385541190', 'Illima', '4', 'Greetings. Its me, Captain Ilima.','2016-12-06');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-0718079185', 'Cyrus', '3', 'I will ascend the mountain to its peak where destiny awaits me.','2016-12-06');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-1338109061', 'Brock', '2', 'Go, Onix!','2016-12-06');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-1338109061', 'Dawn', '6', 'Go! Piplup, use bubble beam on Arceus','2016-12-07');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-1419723445', 'Ash', '4', 'Im going to be the pokemon master! lol','2016-12-07');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-0307464897', 'Elm', '8', 'Are you a boy or are you a girl?','2016-12-07');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-0307464897', 'Dawn', '5', 'Mamoswing, why wont you listen to me?','2016-12-07');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-0307464897', 'Hilda', '4', '... hello?','2016-12-07');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-1501141515', 'Ash', '7', 'Science is so awesome','2016-12-08');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-1501141515', 'Brock', '8', 'OFFICER JENNY!!!','2016-12-08');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-1501141515', 'Cyrus', '6', 'Not bad!','2016-12-08');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-1501138003', 'Ash', '0', 'Its a shyhorn','2016-12-08');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-1501138003', 'Brock', '7', 'NURSE JOY!!','2016-12-09');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-1501138003', 'Cyrus', '7', 'Great','2016-12-09');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-1501138003', 'Dawn', '6', 'Ash, be careful','2016-12-09');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-1501138003', 'Elm', '3', 'This is not the time or place to use this','2016-12-09');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-0545795661', 'Brock', '2', 'I have 5000 pokeballs','2016-12-10');
INSERT INTO `feedback` (`ISBN13`, `login_name`, `score`, `short_text`,`feedback_date`) VALUES ('978-0718079185', 'Elm', '8', 'This is my grandson, what is his name again?','2016-12-10');




INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Cyrus', '978-0385541190', 'Ash', '1');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Cyrus', '978-0718079185', 'Flannery', '0');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Brock', '978-1338109061', 'Cyrus', '1');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Dawn', '978-1338109061', 'Ash', '0');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Dawn', '978-1338109061', 'Elm', '0');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Ash', '978-1419723445', 'Brock', '0');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Ash', '978-0385541190', 'Brock', '1');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Ash', '978-0385541190', 'Cyrus', '1');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Cyrus', '978-0385541190', 'Elm', '0');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Elm', '978-0307464897', 'Ash', '1');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Elm', '978-0307464897', 'Brock', '1');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Elm', '978-0307464897', 'Illima', '2');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Dawn', '978-0307464897', 'Elm', '0');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Cyrus', '978-1501141515', 'Ash', '0');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Cyrus', '978-1501141515', 'Brock', '1');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Cyrus', '978-1501141515', 'Hilda', '2');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Cyrus', '978-1501141515', 'Dawn', '0');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Brock', '978-1501138003', 'Ash', '1');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Brock', '978-1501138003', 'Elm', '2');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Brock', '978-1501138003', 'Hilda', '0');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Brock', '978-1501138003', 'Dawn', '0');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Elm', '978-0718079185', 'Cyrus', '1');
INSERT INTO `rate` (`login_name`, `ISBN13`, `customer_rating`, `rating`) VALUES ('Elm', '978-0718079185', 'Ash', '2');