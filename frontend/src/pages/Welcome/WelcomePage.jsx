import logo from "@assets/logo-wine4.png";
import { Link } from "react-router-dom";
import "./welcomePage.css";

export default function WelcomePage() {
  return (
    <header className="section welcome">
      <img src={logo} className="App-logo" alt="logo" />
      <div id="welcoming-text">
        <h2>Bienvenue !</h2>
        <Link to="/inventaire" className="hover">
          Entrer sur le site
        </Link>
      </div>
    </header>
  );
}
