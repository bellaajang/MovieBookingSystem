

-- Insert sample data into Movies table
INSERT IGNORE INTO Movies (movie_name, duration_in_seconds, description, genre, rating_out_of_ten) VALUES
('Inception', 8880, 'A thief with the ability to enter people''s dreams takes on a final heist.', 'Sci-Fi, Action', 8.8),
('Titanic', 11760, 'A love story blossoms aboard the Titanic.', 'Romance, Drama', 7.9),
('The Dark Knight', 9120, 'Batman must face his nemesis, the Joker, while protecting Gotham City.', 'Action, Drama', 9.0),
('Interstellar', 10140, 'A team of explorers travel through a wormhole to save humanity.', 'Sci-Fi, Drama', 8.6),
('The Godfather', 10500, 'The aging patriarch of an organized crime dynasty transfers control of his empire.', 'Crime, Drama', 9.2),
('Forrest Gump', 8520, 'The story of an extraordinary man living an ordinary life.', 'Drama, Romance', 8.8),
('The Matrix', 8160, 'A computer hacker learns about the true nature of his reality.', 'Sci-Fi, Action', 8.7),
('The Lord of the Rings', 10680, 'A meek hobbit and his friends set out to destroy the One Ring.', 'Fantasy, Adventure', 8.8),
('Star Wars', 7500, 'Luke Skywalker joins forces to rescue Princess Leia and save the galaxy.', 'Sci-Fi, Adventure', 8.6),
('The Avengers', 8520, 'Earth''s mightiest heroes must come together to stop an alien invasion.', 'Action, Adventure', 8.0),
('Gladiator', 9300, 'A former Roman General seeks revenge for the murder of his family.', 'Action, Drama', 8.5),
('Joker', 7320, 'A mentally troubled stand-up comedian embarks on a downward spiral.', 'Drama, Thriller', 8.5),
('The Lion King', 5280, 'A young lion prince flees his kingdom only to return as an adult to reclaim it.', 'Animation, Adventure', 8.5),
('Jurassic Park', 7680, 'A theme park showcasing cloned dinosaurs spirals out of control.', 'Adventure, Sci-Fi', 8.1),
('The Shawshank Redemption', 8520, 'Two imprisoned men bond over years, finding solace and redemption.', 'Drama', 9.3),
('Avengers Endgame', 10800, 'The Avengers take one last stand to undo Thanos'' actions.', 'Action, Adventure', 8.4),
('Schindlers List', 11700, 'A businessman works to save Jewish refugees during the Holocaust.', 'Biography, Drama', 9.0),
('Pulp Fiction', 9480, 'The lives of two hitmen, a boxer, and others intertwine in this crime drama.', 'Crime, Drama', 8.9),
('Fight Club', 8340, 'An insomniac office worker forms an underground fight club.', 'Drama', 8.8),
('The Silence of the Lambs', 7080, 'A young FBI cadet must confide in an imprisoned cannibal to catch another killer.', 'Crime, Thriller', 8.6),
('Braveheart', 10800, 'William Wallace leads the Scots in the First War of Scottish Independence.', 'Biography, Drama', 8.3),
('Enter the Dragon', 6120, 'Lee enters a kung fu competition in an attempt to fight his way into his enemies headquarters.', 'Action, Crime', 8.6),
('Se7en', 7620, 'Two detectives hunt a serial killer who uses the seven deadly sins as motives.', 'Crime, Drama', 8.6),
('Inglourious Basterds', 9180, 'A group of Jewish soldiers plan to assassinate Nazi leaders.', 'Adventure, Drama', 8.3),
('The Departed', 9000, 'An undercover cop and a mole in the police attempt to identify each other.', 'Crime, Thriller', 8.5),
('The Prestige', 7800, 'Two magicians engage in a bitter rivalry.', 'Drama, Mystery', 8.5),
('The Wolf of Wall Street', 10800, 'A stockbroker rises to power but faces legal troubles.', 'Biography, Crime', 8.2),
('Django Unchained', 10200, 'A freed slave sets out to rescue his wife.', 'Drama, Western', 8.4),
('Goodfellas', 8940, 'The story of a young man rising through the ranks of the mob.', 'Biography, Crime', 8.7),
('Mad Max Fury Road', 7200, 'A woman rebels against a tyrannical leader in a post-apocalyptic world.', 'Action, Adventure', 8.1),
('The Social Network', 7200, 'The story of Facebook''s creation and the drama surrounding it.', 'Biography, Drama', 7.8),
('Parasite', 7920, 'A poor family schemes to become employed by a wealthy family.', 'Drama, Thriller', 8.6),
('Whiplash', 6420, 'A young drummer seeks the approval of an intense music instructor.', 'Drama, Music', 8.5),
('La La Land', 7680, 'Two aspiring artists fall in love while pursuing their dreams.', 'Drama, Romance', 8.0),
('The Grand Budapest Hotel', 5940, 'A hotel concierge and his protégé become involved in a murder mystery.', 'Adventure, Comedy', 8.1),
('The Boy and the Heron', 7440, 'A boy embarks on an adventure with a heron in search of his mother.', 'Fantasy, Adventure', 8.1),
('No Country for Old Men', 7320, 'A hunter stumbles upon a drug deal gone wrong.', 'Crime, Drama', 8.2),
('Blade Runner 2049', 9900, 'A young blade runner uncovers a long-buried secret.', 'Sci-Fi, Drama', 8.0),
('Shutter Island', 8340, 'A U.S. Marshal investigates a psychiatric facility on an isolated island.', 'Drama, Mystery', 8.1);

-- Insert sample data into Theatres table
INSERT IGNORE INTO Theatres (theatre_name, address) VALUES
('Downtown Cinema', '123 Main St, Cityville'),
('Grand Central Theatre', '456 Broadway, Metropolis'),
('The Luxe Theatre', '789 Elm St, Springfield'),
('Majestic Movieplex', '101 Pine St, Riverdale'),
('Galaxy Cinema', '202 Maple Ave, Starville'),
('Cineworld', '303 Oak Blvd, Forestview'),
('Starlight Theatre', '404 Birch Rd, Nightfall'),
('Silver Screen Cinema', '505 Cedar St, Harmony'),
('Empire Theatre', '606 Redwood Ln, Capital City'),
('Avalon Cinema', '707 Willow Ave, Rivertown'),
('Regal Moviehouse', '808 Chestnut Blvd, Glendale'),
('Palace Cinemas', '909 Aspen Dr, Brookside'),
('Crown Theatre', '1010 Magnolia St, Lakeside'),
('The Paramount', '1111 Spruce Ave, Seaside'),
('Sunset Cinema', '1212 Poplar St, Cloudhaven'),
('Vista Cinemas', '1313 Walnut Dr, Meadowfield'),
('Metro Moviehouse', '1414 Cypress Ln, Hilltop'),
('Golden Theatre', '1515 Pinecone Rd, Goldview'),
('The Sapphire', '1616 Juniper Ave, Blueville'),
('Aurora Theatre', '1717 Clover Ln, Starlight');

-- Insert sample data into Theatre_Rooms table
INSERT IGNORE INTO Theatre_Rooms (theatre_id) VALUES
(1), (1), (1), (2), (2),
(3), (3), (4), (4), (4),
(5), (6), (6), (7), (7),
(8), (9), (9), (10), (10);

-- Insert sample data into Showtimes table
INSERT IGNORE INTO Showtimes (room_id, movie_id, air_time, seat_map) VALUES
(1, 1, '2026-12-02 18:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [true, true, false, false, false, false, false, false, true, false, false, false],
                                [false, false, false, false, false, true, true, false, false, false, false, false],
                                [false, false, true, true, false, true, true, true, true, false, false, false]
                                ]'),

(1, 1, '2024-12-03 21:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(2, 2, '2024-12-03 15:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(3, 3, '2024-12-14 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(4, 4, '2024-12-09 20:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(5, 5, '2024-12-02 10:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(6, 6, '2024-12-03 13:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(7, 7, '2024-12-07 15:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(8, 8, '2024-12-08 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(9, 9, '2024-12-15 20:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(10, 10, '2024-12-06 10:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(11, 11, '2024-12-09 13:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(12, 12, '2024-12-11 15:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(13, 13, '2024-12-05 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(14, 14, '2024-12-08 20:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(15, 15, '2024-12-09 10:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(16, 16, '2024-12-04 13:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(17, 17, '2024-12-05 15:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(18, 18, '2024-12-07 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(19, 19, '2024-12-07 20:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(20, 20, '2024-12-10 22:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(19, 19, '2024-12-09 10:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(18, 18, '2024-12-10 13:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(17, 17, '2024-12-09 15:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(16, 16, '2024-12-08 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(15, 15, '2024-12-08 20:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(14, 14, '2024-12-08 10:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(13, 13, '2024-12-06 13:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(12, 12, '2024-12-05 15:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(11, 11, '2024-12-19 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(10, 10, '2024-12-10 20:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false],
                                  [false, false, false, false, false, false, false, false, false, false, false, false]
                                  ]'),

(9, 9, '2024-12-08 10:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(8, 8, '2024-12-07 13:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(7, 7, '2024-12-12 15:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(6, 6, '2024-12-11 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(5, 5, '2024-12-04 20:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(4, 4, '2024-12-08 10:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(3, 3, '2024-12-08 13:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(2, 2, '2024-12-09 15:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(1, 1, '2024-12-09 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(1, 20, '2024-12-09 20:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(2, 19, '2024-12-09 10:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(3, 18, '2024-12-10 13:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(4, 17, '2024-12-10 15:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(5, 16, '2024-12-10 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(6, 15, '2024-12-10 20:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(7, 14, '2024-12-12 10:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(8, 13, '2024-12-12 13:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(9, 12, '2024-12-11 15:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(10, 11, '2024-12-11 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(11, 10, '2024-12-11 20:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(12, 9, '2024-12-04 10:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(13, 8, '2024-12-04 13:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(14, 7, '2024-12-04 15:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(15, 6, '2024-12-04 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(16, 5, '2024-12-04 20:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(17, 4, '2024-12-05 10:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(18, 3, '2024-12-05 13:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(19, 2, '2024-12-05 15:30:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]'),

(20, 1, '2024-12-05 18:00:00', '[[false, false, false, false, false, false, false, false, false, false, false, false], 
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false],
                                [false, false, false, false, false, false, false, false, false, false, false, false]
                                ]');


-- Set all but the selected 3 movies (Inception, Titanic, The Dark Knight) to `is_released = true`
UPDATE Movies 
SET is_released = true;

-- Set the exceptions to `is_released = false`
UPDATE Movies
SET is_released = false
WHERE movie_name IN ('Inception', 'Titanic', 'The Dark Knight');