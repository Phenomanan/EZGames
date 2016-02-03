#Seller puts up a game for sale
INSERT INTO game
values('00004', 'Ratchet & Clank: Up Your Arsenal', '14.99', '12395902');
INSERT INTO sells
values('20002','00004');

#Seller tries to buy a game (access constraint)
INSERT INTO buys
values('00004', '20002');
#Different seller tries to sell the same game (integrity constraint)
INSERT INTO sells
values('20003','00004');
#Game with a super long title (data range constraint)
INSERT INTO game
values('00006', 'A Toast Named Bruce Willis: Plot Twist He Was Bread the Whole Time', '2.99', '55446688');

#Reviewer reviews the game that was just inserted
INSERT INTO review
values('00004', '30002', 'Ratchet & Clank: Up Your Arsenal is the best in the series! 10/10', '0', '0');
INSERT INTO writes
values('30002', '00004', 'Ratchet & Clank: Up Your Arsenal');
#Reviewer tries to rate their own review (access constraint)
INSERT INTO ratesReview
values('30002', '00004', '10');
#Reviewer tries to review two games in one review (integrity constraint)
INSERT INTO writes
values('30002', '00004', 'Ape Escape 3');
#Reviewer writes a review over 300 characters (data range constraint)
INSERT INTO review
values('00001', '30001', 'Sly 2 is a very good game, but maybe not as good as Sly 3. In fact, now that I think about it, it may very well be the weakest game in the series. Like it was the most popular, and allowed us to play as Murray and Bentley for the first time, but it had a weaker story than the first game. Not to mention, every feature it had that was an innovation over the first game was improved in the third game anyway, so I guess that means it did not stand the test of time. Actually it was the only one that let you run around collecting beer bottles, which automatically makes it the best game in the series. Sweet. 10/10', '0', '0');
#Reviewer views the review that was put up
Select * From nonmoderatorViewsReview;

#Customer rates a review
INSERT INTO ratesReview
values('10002', '00004', '10');
#Customer tries to write a review (access constraint)
INSERT INTO writes
values('10002', '00005', 'Ape Escape 3');
#Customer tries to rate a review twice (integrity constraint)
INSERT INTO ratesReview
values('10002', '00004', '10');
#Customer tries to give a review a 100 rating (data range constraint)
INSERT INTO ratesReview
values('10001', '00004', '100');

#Customer buys the game that was added 
INSERT INTO buys
values('00004', '10001');
#Customer tries to sell a game (access constraint)
INSERT INTO sells
values('10003','00004');
#Customer tries to buy a game that was already bought (integrity constraint)
INSERT INTO buys
values('00002', '10001');
#New customer tries to input over 2 characters for state and over 16 digits for bankNum (data range constraint)
INSERT INTO user
values('10004', 'Gustav Holst', 'Customer');
INSERT INTO address
values('10004', '1 Fantasia way', 'Dargason', '17777');
INSERT INTO customer
values('10004', '12345678910111213141516');

#Moderator edits a review
INSERT INTO edits
values('40001', NULL, NULL, '00004');
#Moderator tries to sell a game (access constraint)
INSERT INTO sells
values('40001','00004');
#Moderator tries to input two addresses (integrity constraint)
INSERT INTO address
values('40001', '1 Georges road', 'NJ', '08854');
#Moderator tries to edit a user and puts in a userID longer than 5 digits (data range constraint)
INSERT INTO edits
values('40001', '100001', NULL, NULL);
#Moderator tries to view a customers bank number
Select * From moderatorViewGame; # Doesn't show bank numbers :)

Select * From nonmoderatorViewsGame;
Select * From sells;
Select * From buys;
Select * From game;
Select * From review;
Select * From moderatorViewsUser;
Select * From writes;
