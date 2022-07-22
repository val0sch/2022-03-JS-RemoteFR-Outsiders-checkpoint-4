/* eslint-disable react/jsx-no-constructed-context-values */
import React, { createContext, useState } from "react";

const CurrentPagesContext = createContext();

export function CurrentPagesContextProvider({ children }) {
  const [WineList, setWineList] = useState([""]);

  return (
    <CurrentPagesContext.Provider
      value={{
        WineList,
        setWineList,
      }}
    >
      {children}
    </CurrentPagesContext.Provider>
  );
}

export default CurrentPagesContext;
