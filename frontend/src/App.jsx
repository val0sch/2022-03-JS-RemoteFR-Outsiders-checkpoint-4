import WelcomePage from "@pages/Welcome/WelcomePage";
import Home from "@pages/Home/Home";
import { Routes, Route } from "react-router-dom";

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
      </Routes>
    </div>
  );
}

export default App;
