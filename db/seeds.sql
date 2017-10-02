-- MUST GOT IN THIS ORDER!!!!   users > categories > sets > Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId).

INSERT INTO Users (displayname, username, password, createdAt, updatedAt) VALUES ('David Laidlaw', 'david', 'david', '20170901', '20170901');

INSERT INTO categories (cat_name, createdAt, updatedAt) VALUES ('Math', '20170901', '20170901');
INSERT INTO categories (cat_name, createdAt, updatedAt) VALUES ('Biology', '20170904', '20170904');
INSERT INTO categories (cat_name, createdAt, updatedAt) VALUES ('History', '20170904', '20170904');
INSERT INTO categories (cat_name, createdAt, updatedAt) VALUES ('Programming', '20170904', '20170904');
INSERT INTO categories (cat_name, createdAt, updatedAt) VALUES ('Literature', '20170904', '20170904');
INSERT INTO categories (cat_name, createdAt, updatedAt) VALUES ('Civics', '20170904', '20170904');

INSERT INTO Sets (title, url, createdAt, updatedAt, CategoryId, UserId) VALUES ('Math 101', 'http://www.math.wsu.edu/HS/problems.html', '20170901', '20170901', 1, 1);
INSERT INTO Sets (title, url, createdAt, updatedAt, CategoryId, UserId) VALUES ('Math 202', 'http://catalog.csuci.edu/preview_course_nopop.php?catoid=11&coid=20549', '20170904', '20170904', 1, 1);
INSERT INTO Sets (title, url, createdAt, updatedAt, CategoryId, UserId) VALUES ('biology 101', 'www.google.com', '20170904', '20170904', 2, 1);


INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (1, 'What is 2 + 2?', '4', '20170901', '20170901', 1);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (2, 'What is 5 - 3?', '2', '20170901', '20170901', 1);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (1, '5 x 3 = ?', '15', '20170904', '20170904', 2);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (2, '12 x 5 = ?', '60', '20170904', '20170904', 2);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (1, 'Biology Question', 'Biology Answer', '20170907', '20170907', 3);



INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (1,'1','A callback function has 2 attributes   What are they','A callback function is passed to a function as an argument AND is executed inside of the function', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (2,'2','Name 6 standard key words used in creating and or modifying a SQL database','CREATE  INSERT  SELECT  DELETE  UPDATE  DROP', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (3,'3','In SQL which character will SELECT all',' * ', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (4,'4','In SQL which character refers to LIKE','%', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (5,'5','What does the keyword this refer to in JavaScript','In JavaScript this refers to an object or the subject of the executing code', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (6,'6','Explain Asynchronous','Asynchronous is a form of input output processing that permits other processing to continue before the transmission has finished', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (7,'7','Core modules come precompiled in Nodejs   You require a core module by including in your file var http = require(http)  How do you require user-defined modules','A user defined module is required in your file by using its path', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (8,'8','HTML CSS and JavaScript all impact content differently  How','HTML renders the content to the page CSS styles the content on the page and JavaScript enables interactive functionality', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (9,'9','What is the difference between inline elements and block elements','Block level elements start on a new line and stretch across the browser window while inline elements do not start on a new line and only take up as much space as the text they encapsulate', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (10,'10','What is an API','An API is a application programming interface', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (11,'1','What is the rule of law','No one is above the law', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (12,'2','The House of Representatives has how many voting members','435', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (13,'3','Who is the current Chief Justice of the United States','John Roberts', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (14,'4','Why did the colonists fight the British','Egregious taxation   Lack of self government   Boarding and quartering (colonists forced to house British soldiers)', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (15,'5','When was the constitution written','1787', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (16,'6','The Federalist Papers supported the passage of the US Constitution   Name one of the writers','James Madison   Alexander Hamilton   John Publius', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (17,'7',' What territory did the United States buy from France in 1803','The Louisiana Territory', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (18,'8','Before he was President  Eisenhower was a general   What war was he in','World War 11', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (19,'9','Name one of the two longest rivers in the United States','Mississippi River and Missouri River', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (20,'10','Under our Constitution some powers belong to the states    Name an example of a state controlled power','Approve zoning and land use   Provide education   Provide police protection  Provide protection from fire ', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (21,'1','Biology is the study of life   What are the 5 basic principles that form the foundation for the study of life','Cell theory    Gene theory    Evolution   Laws of thermodynamics   Homeostasis ', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (22,'2','Elements of cell theory','All living organisms are composed of cells    Cells are the basic unit of life   Cells arise from existing cells', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (23,'3','Explain gene theory','Genes are comprised of DNA and reside on chromosomes   Genes are inherited from parents', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (24,'4','What is evolution','Any genetic change in a population that is inherited over several generations', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (25,'5','What is homeostasis','ability to maintain a constant internal environment in response to environmental changes', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (26,'6','What is thermodynamics','energy is constant and energy transformation is not efficient', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (27,'7','What is the first law of thermodynamics','Also known as the law of conservation of energy it states that energy can neither be created nor destroyed  It may change from one form to another but the energy stored in a closed system remains constant', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (28,'8','The human body has 12 systems  Name three','cardiovascular  digestive  endocrine  immune   lymphatic  exocrine  muscular  nervous  renal', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (29,'9','Charles Darwin developed his theory of evolution while studying what animal on the archipelago of islands named The Galapagos','finches', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (30,'10','Name an simple everyday task which provides an example of either the first and or second law(s) of  thermodynamics','flipping a light switch  A dam releases water that powers a turbine that creates electricity (with the help of a generator) and then is transferred to you through power lines  This illustrates the transformation of energy from one form to another', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (31,'1','Herman Melville this masterpiece in 1851 about Captain Ahab and his  monomaniacal pursuit of the whale','Moby Dick', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (32,'2','Edgar Allan Poe married his 13 year old cousin','TRUE', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (33,'3','War and Peace delineates in graphic detail events leading up to Napoleons invasion of Russia  Who wrote War and Peace','Leo Tolstoy', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (34,'4','Name a book written by Mark Twain','Tom Sawyer  Huckleberry Finn ', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (35,'5','She loved to write about the English upper class and the pressure and importance for young women to marry well','Jane Austen', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (36,'6','Stieg Larsson  based his character in The Girl with a Dragon Tattoo on Pippi Longstocking    ','TRUE', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (37,'7','Fyodor Dostoyevsky wrote this story about a cat and mouse game between a young killer and a detective  What story is this','Crime and Punishment', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (38,'8','Ernest  had his own brand of rum      ','TRUE', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (39,'9','William Faulkner was a high school dropout     ','TRUE', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (40,'10','Fiction  biography  prose and tragedy are but a few genres in literature    Which genre depicts Shakespeares Hamlet','Tragedy', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (41,'1','Which star sign that comes after Gemini is symbolized by the crab','Cancer', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (42,'2','If you were to spell out the numbers from one to hundred how many letters would contain the letter A','0', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (43,'3','What word can have the meaning of a fruit dish and  a shoe repairman  and a  drink and a clumsy workman','cobbler', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (44,'4','What do Humpty Dumpty and Easter have in common','eggs', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (45,'5','Who was the legendary Benedictine monk who invented champagne','Dom Perignon', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (46,'6','Where would you find the Sea of Tranquility','the moon', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (47,'7','What kind of weapon is a falchion','a sword', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (48,'8','Name the world''s biggest island','Greenland', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (49,'9','Where would you find the worlds most ancient forest','Daintree Rainforest Australia', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (50,'10','What is the worlds longest river','Amazon', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (51,'1','Johannes Gutenburg invented ___________ which allowed the spread of knowledge across Europe during the 1400s','the printing press', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (52,'2','Martin Luther split from the Roman Catholic Church which marked the beginning of the ______________','Reformation', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (53,'3','The discovery of _______ as an antibiotic still remains as one of the greatest of all medical discoveries','Penicillin', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (54,'4','Thomas Paine wrote of this philosophy of God in his book The Age of Reason','Deism defined as  intellectual movement of the 17th and 18th centuries that accepted the existence of a creator on the basis of reason but rejected belief in a supernatural deity who interacts with humankind', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (55,'5',' The mid 1800s ushered in the age of machines and the rise of the factory system  What is this period of time called','The Industrial Revolution', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (56,'6','The geopolitical tension between Eastern Bloc countries and Democratic Institutions is referred to as ','The Cold War', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (57,'7','The assassination of Archduke Franz Ferdinand at Sarajevo on 28 June 1914 sparked the beginning of','WW1', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (58,'8','Is it true that the computer age can be traced back to 1822','TRUE Charles Babbage invented the analytical engine ', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (59,'9','Describe The Truman Doctrine','The Truman Doctrine called for the containment of communism worldwide by offering financial support to countries in need', CURRENT_TIMESTAMP);
INSERT INTO Flashcards (flash_num, question, answer, createdAt, updatedAt, SetId) VALUES (60,'10','True or False During the Berlin airlift an Allied supply plane took off or landed in West Berlin every 30 seconds    The planes made nearly three hundred thousand flights in all','TRUE', CURRENT_TIMESTAMP);