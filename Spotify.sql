create database Spotify;
use Spotify;
show  databases;

/**Retrieve all data**/
SELECT * FROM SpotiStream;

/**Show only track name and artist**/
SELECT track_name, `artist(s)_name` FROM SpotiStream;

/**Get songs released after 2020**/
SELECT * FROM SpotiStream WHERE released_year > 2020;

/**Find songs with high streams**/
SELECT track_name, streams from Spotistream where streams > 100000000;

/**Count total number of songs**/
SELECT count(*) as total_songs from Spotistream;

/**Top 10 most streamed songs**/
SELECT track_name ,streams from Spotistream order by streams DESC limit 10;

/**Top 5 artists with most songs**/
SELECT artist(s)_name, COUNT(*) AS total_tracks FROM Spotistream GROUP BY `artist(s)_name` ORDER BY total_tracks DESC LIMIT 5;

/**Average danceability**/

SELECT AVG('danceability_%') AS avg_danceability FROM SpotiStream;

/**Songs per year**/

SELECT released_year, count(*) AS total_songs from Spotistream group by released_year order by released_year;

/**Count songs by mode (Major/Minor)**/
SELECT MODE, COUNT(*) AS Total from Spotistream group by mode;

/**Top artist by total streams**/
SELECT 'artist(s)_name', SUM(streams) AS total_streams FROM Spotistream GROUP BY 'artist(s)_name' ORDER BY total_streams DESC LIMIT 1;

/**Correlation-style query (danceability vs streams)**/
SELECT track_name, 'energy_%' FROM Spotistream WHERE 'energy_%' > (SELECT AVG('energy_%') FROM Spotistream);





