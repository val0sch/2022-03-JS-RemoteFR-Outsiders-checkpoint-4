import "./navbar.css";
import React from "react";
import { Link } from "react-router-dom";
import logo from "@assets/logo-wine6.png";

function NavBar() {
  return (
    <div id="navbar">
      {" "}
      <img src={logo} alt="tire-bouchon" />
      <div id="links">
        <Link to="/" className="hover navbar">
          Mon inventaire
        </Link>

        <Link to="/" className="hover navbar">
          Carte de France
        </Link>

        <Link to="/" className="hover navbar">
          Gérer ma cave
        </Link>
      </div>
    </div>
  );
}

export default NavBar;
