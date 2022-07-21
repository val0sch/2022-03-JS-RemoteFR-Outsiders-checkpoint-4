import WelcomePage from "@pages/Welcome/WelcomePage";
import Home from "@pages/Home/Home";
import { Routes, Route } from "react-router-dom";
import Inventory from "@components/Inventory/Inventory";
import Bourgogne from "@components/Inventory/Bourgogne";
import Alsace from "@components/Inventory/Alsace";
import Beaujolais from "@components/Inventory/Beaujolais";
import Bordeaux from "@components/Inventory/Bordeaux";
import Gestion from "@components/Gestion/Gestion";
import "./App.css";

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<WelcomePage />} />
        <Route path="/accueil" element={<Home />} />
        <Route path="/inventaire" element={<Inventory />} />
        <Route path="/bordeaux" element={<Bordeaux />} />
        <Route path="//bourgogne" element={<Bourgogne />} />
        <Route path="/alsace" element={<Alsace />} />
        <Route path="/beaujolais" element={<Beaujolais />} />
        <Route path="/gestion" element={<Gestion />} />
      </Routes>
    </div>
  );
}

export default App;
