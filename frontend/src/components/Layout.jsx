import React from "react";
import NavBar from "./NavBar/NavBar";
import Footer from "./Footer/Footer";

function Layout({ children }) {
  return (
    <div className="App">
      <NavBar />
      {children}
      <Footer />
    </div>
  );
}

export default Layout;
