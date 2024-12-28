import React, { createContext, useContext, useState } from 'react';

const SelectionContext = createContext();

export const useSelectionContext = () => useContext(SelectionContext);

export const SelectionProvider = ({ children }) => {
  const [selectedTheatre, setSelectedTheatre] = useState('');
  const [selectedMovie, setSelectedMovie] = useState('');
  const [selectedShowtime, setSelectedShowtime] = useState('');

  const [selectedTheatreName, setSelectedTheatreName] = useState('');
  const [selectedMovieName, setSelectedMovieName] = useState('');
  const [selectedShowtimeTime, setSelectedShowtimeTime] = useState('');

  const handleSelectTheatre = (theatreId, theatreName) => {
    setSelectedTheatre(theatreId);
    setSelectedTheatreName(theatreName);
    setSelectedShowtime('');
    setSelectedShowtimeTime('');
    console.log("selected theatre: ", selectedTheatreName);
    console.log("selected theatreid: ", selectedTheatre);
  };

  const handleSelectMovie = (movieId, movieName) => {
    setSelectedMovie(movieId);
    setSelectedMovieName(movieName);
    setSelectedShowtime('');
    setSelectedShowtimeTime('');
    console.log("selected movie:", selectedMovieName);
    console.log("selected movieid: ", selectedMovie);
  };

  const handleSelectShowtime = (showtimeId, showtimeTime) => {
    setSelectedShowtime(showtimeId);
    setSelectedShowtimeTime(showtimeTime);
  };

  return (
    <SelectionContext.Provider
      value={{
        selectedTheatre,
        selectedTheatreName,
        handleSelectTheatre,
        selectedMovie,
        selectedMovieName,
        handleSelectMovie,
        selectedShowtime,
        selectedShowtimeTime,
        handleSelectShowtime,
      }}
    >
      {children}
    </SelectionContext.Provider>
  );
};
