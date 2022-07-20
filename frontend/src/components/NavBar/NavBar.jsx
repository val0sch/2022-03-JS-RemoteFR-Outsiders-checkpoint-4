import "./navbar.css";
import React from "react";
import { Link } from "react-router-dom";
import logo from "@assets/logo-wine6.png";

function NavBar() {
  return (
    <div id="navbar">
      {" "}
      <Link to="/">
        <img src={logo} alt="tire-bouchon" />
      </Link>
      <div id="links-nav">
        <Link to="/inventaire" className="hover navbar">
          Mon inventaire
        </Link>

        <Link to="/carte" className="hover navbar">
          Carte de France
        </Link>

        <Link to="/gestion" className="hover navbar">
          Gérer ma cave
        </Link>
      </div>
    </div>
  );
}

export default NavBar;
