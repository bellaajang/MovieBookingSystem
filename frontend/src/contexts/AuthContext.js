import React, { createContext, useContext, useEffect, useState } from 'react';

const AuthContext = createContext();

export const useAuthContext = () => useContext(AuthContext);

export const AuthProvider = ({ children }) => {
  const savedRole = sessionStorage.getItem('role');
  const savedUserId = sessionStorage.getItem('userId');
  const savedUserEmail = sessionStorage.getItem('userEmail');

  const [role, setRole] = useState(savedRole ? savedRole : 'guest');
  const [userId, setUserId] = useState(savedUserId ? savedUserId : '');
  const [userEmail, setUserEmail] = useState(savedUserEmail ? savedUserEmail : '');
  
  useEffect(() => {
    sessionStorage.setItem('role', role);
    sessionStorage.setItem('userId', userId);
    sessionStorage.setItem('userEmail', userEmail);
  }, [role, userId, userEmail]); 

  const logout = () => {
    sessionStorage.removeItem('role');
    sessionStorage.removeItem('userId');
    sessionStorage.removeItem('userEmail');
    setRole('guest');
    setUserId('');
    setUserEmail('');

    localStorage.setItem('seenNotification', 'false');
  };

  return <AuthContext.Provider value={{ role, setRole, userId, setUserId, setUserEmail, userEmail, logout }}>{children}</AuthContext.Provider>;
};
