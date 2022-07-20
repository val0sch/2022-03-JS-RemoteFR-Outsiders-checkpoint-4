import React, { useEffect, useState } from "react";
import Layout from "@components/Layout";
import api from "@services/api";
import Card from "./Card";

function Bordeaux() {
  const [wineList, setWineList] = useState([]);
  const [appellation, setAppellation] = useState("");
  const [isTrue, setIsTrue] = useState(true);

  useEffect(() => {
    api
      .get(`/api/bordeaux/${appellation}`, { withCredentials: true })
      .then((res) => setWineList(res.data))
      .catch((err) => console.error(err));
  }, [appellation, isTrue]);

  const handleChange = (e) => {
    setAppellation(e.target.value);
  };
  return (
    <Layout>
      <div className="section">
        <div className="liste">
          <label htmlFor="Select">
            Choisir une appellation
            <select htmlFor="Select" name="appellation" onChange={handleChange}>
              <option value="">---</option>
              <option value="MARGAUX">Margaux</option>
              <option value="SAINT- EMILION">Saint-Emilion</option>
              <option value="HAUT-MEDOC">Haut-Médoc</option>
              <option value="GRAVES (PESSAC-LEOGNAN)">
                Graves-Pessac_Léognan
              </option>
              <option value="SAINT-ESTEPHE">Saint-Estèphe</option>
              <option value="PAUILLAC">Pauillac</option>
              <option value="SAINT-JULIEN">Saint-Julien</option>
              <option value="POMEROL">Pomerol</option>
              <option value="BORDEAUX SUPERIEUR">Bordeaux Supérieur</option>
              <option value="MEDOC">Médoc</option>
              <option value="BLAYE">Blaye</option>
              <option value="SAUTERNES">Sauternes</option>
              <option value="LOUPIAC">Loupiac</option>
              <option value="CADILLAC">Cadillac</option>
            </select>
          </label>
          <div className="cards-list">
            {" "}
            {wineList &&
              wineList.map((item) => (
                <Card
                  item={item}
                  appellation={appellation}
                  isTrue={isTrue}
                  setIsTrue={setIsTrue}
                />
              ))}
          </div>
        </div>
      </div>
    </Layout>
  );
}

export default Bordeaux;
