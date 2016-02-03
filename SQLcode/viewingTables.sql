# Inserts!
INSERT INTO user
values('10001', 'Antonin Dvorak', 'Customer');
INSERT INTO address
values('10001', '3 New World road', 'NY', '17777');
INSERT INTO customer
values('10001', '39920593');
INSERT INTO user
values('10002', 'Johann Sebastian', 'Customer');
INSERT INTO address
values('10002', '5 Gigue street', 'NJ', '08854');
INSERT INTO customer
values('10002', '22201111');
INSERT INTO user
values('10003', 'Vivaldi', 'Customer');
INSERT INTO address
values('10003', '4 Seasons lane', 'NJ', '08810');
INSERT INTO customer
values('10003', '11166993');

INSERT INTO user
values('20001', 'Jimmy Page', 'Seller');
INSERT INTO address
values('20001', '6 Led road', 'NY', '17777');
INSERT INTO seller
values('20001', '41241242', '0', '0');
INSERT INTO user
values('20002', 'Jeff Beck', 'Seller');
INSERT INTO address
values('20002', '5 Yardbird road', 'CA', '44568');
INSERT INTO seller
values('20002', '33426623', '0', '0');
INSERT INTO user
values('20003', 'Pachelbel', 'Seller');
INSERT INTO address
values('20003', '3 Canon Drive', 'MA', '55226');
INSERT INTO seller
values('20003', '88589299', '0', '0');

INSERT INTO user
values('30001', 'Prince', 'Reviewer');
INSERT INTO address
values('30001', '1 Symbol drive', 'TX', '39393');
INSERT INTO reviewer
values('30001');
INSERT INTO user
values('30002', 'MJ', 'Reviewer');
INSERT INTO address
values('30002', '2 Thriller avenue', 'OK', '66793');
INSERT INTO reviewer
values('30002');
INSERT INTO user
values('30003', 'Pyotr Illyich', 'Reviewer');
INSERT INTO address
values('30003', '3 Tchai-kov street', 'CA', '22102');
INSERT INTO reviewer
values('30003');

INSERT INTO user
values('40001', 'Ludwig Von', 'Moderator');
INSERT INTO address
values('40001', '10 Amadeus road', 'VA', '33155');
INSERT INTO moderator
values('40001');

INSERT INTO follows
values('10001', '20001');
INSERT INTO follows
values('10001', '30001');
INSERT INTO follows
values('10003', '20002');
INSERT INTO follows
values('10002', '30003');

INSERT INTO game
values('00001', 'Sly 2: Band of Thieves', '19.99', '21467656');
INSERT INTO game
values('00002', 'Ape Escape 3', '9.99', '88843421');
INSERT INTO game
values('00003', 'Call of Duty 37', '59.99', '75029348');

INSERT INTO review
values('00001', '30001', 'Sly 2 is an amazing game. Go buy it everyone! 10/10 Perfect score.', '0', '0');
INSERT INTO review
values('00002', '30002', 'Call of Duty 37 is complete garbage. That makes 33 crap games in a row. 4/10.', '0', '0');
INSERT INTO review
values('00003', '30003', 'Ape Escape 3 is pure awesome, although it is a bit short. Great game to buy though, 9/10.', '0', '0');

INSERT INTO sells
values('20001','00001');
INSERT INTO sells
values('20002','00002');
INSERT INTO sells
values('20003','00003');

INSERT INTO buys
values('00001','10001');
INSERT INTO buys
values('00002','10002');
INSERT INTO buys
values('00003','10003');

INSERT INTO writes
values('30001', '00001', 'Sly 2: Band of Thieves');
INSERT INTO writes
values('30002', '00002', 'Ape Escape 3');
INSERT INTO writes
values('30003', '00003', 'Call of Duty 37');

INSERT INTO ratesReview
values('10001', '00002', '4');
DELETE FROM ratesReview
WHERE reviewID = '00002';
INSERT INTO ratesReview
values('10002', '00001', '10');
DELETE FROM ratesReview
WHERE reviewID = '00001';
INSERT INTO ratesReview
values('10001', '00001', '6');
DELETE FROM ratesReview
WHERE reviewID = '00001';

INSERT INTO ratesSeller
values('20001', '10002', '7');
DELETE FROM ratesSeller
WHERE sID = '20001';
INSERT INTO ratesSeller
values('20001', '10001', '9');
DELETE FROM ratesSeller
WHERE sID = '20001';
INSERT INTO ratesSeller
values('20003', '10003', '8');
DELETE FROM ratesSeller
WHERE sID = '20003';

INSERT INTO edits
VALUES('40001', '30001', NULL, NULL);

# Select statements
Select * From user;
Select * From customer;
Select * From address;
Select * From seller;
Select * From reviewer;
Select * From moderator;
Select * From follows;
Select * From game;
Select * From review;
Select * From sells;
Select * From buys;
Select * From writes;
Select * From ratesReview;
Select * From ratesSeller;
Select * From edits;

# Views
Select * From nonmoderatorViewsUser;
Select * From moderatorViewsUser;
Select * From nonmoderatorViewsGame;
Select * From moderatorViewsGame;
Select * From nonmoderatorViewsReview;
Select * From moderatorViewsReview;