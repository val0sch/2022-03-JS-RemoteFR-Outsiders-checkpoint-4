import WelcomePage from "@pages/Welcome/WelcomePage";
import Home from "@pages/Home/Home";
import { Routes, Route } from "react-router-dom";
import Inventory from "@components/Inventory/Inventory";
import Bourgogne from "@components/Inventory/Bourgogne";
import Alsace from "@components/Inventory/Alsace";
import Beaujolais from "@components/Inventory/Beaujolais";
import Bordeaux from "@components/Inventory/Bordeaux";
import "./App.css";

function App() {
  return (
    <div className="App">
      <Routes>
        <Route
          path="/"
          element={
            <div className="section">
              <WelcomePage />
            </div>
          }
        />
        <Route
          path="/accueil"
          element={
            <div className="section">
              <Home />
            </div>
          }
        />
        <Route
          path="/inventaire"
          element={
            <div className="section">
              <Inventory />
            </div>
          }
        />
        <Route
          path="/inventaire/bordeaux"
          element={
            <div className="section">
              <Bordeaux />
            </div>
          }
        />
        <Route
          path="/inventaire/bourgogne"
          element={
            <div className="section">
              <Bourgogne />
            </div>
          }
        />
        <Route
          path="/inventaire/alsace"
          element={
            <div className="section">
              <Alsace />
            </div>
          }
        />
        <Route
          path="/inventaire/beaujolais"
          element={
            <div className="section">
              <Beaujolais />
            </div>
          }
        />
      </Routes>
    </div>
  );
}

export default App;
