import React, { useEffect, useState } from "react";
import Layout from "@components/Layout";
import api from "@services/api";
import Card from "./Card";

function Bordeaux() {
  const region = "bordeaux";

  const [wineList, setWineList] = useState([]);
  const [appellation, setAppellation] = useState("");
  const [isTrue, setIsTrue] = useState(true);
  // const [inputText, setInputText] = useState();

  useEffect(() => {
    api
      .get(`/api/${region}`)
      .then((res) => setWineList(res.data))
      .catch((err) => console.error(err));
  }, []);

  useEffect(() => {
    api
      .get(`/api/${region}/${appellation}`, { withCredentials: true })
      .then((res) => setWineList(res.data))
      .catch((err) => console.error(err));
  }, [appellation, isTrue]);

  const handleChangeAppellation = (e) => {
    setAppellation(e.target.value);
  };

  // const handleChangeInput = (e) => {
  //   const search = e.target.value.toLowerCase();
  //   setInputText(...search);
  // };

  return (
    <Layout>
      <div className="section">
        <div className="filtre">
          <label htmlFor="search">
            Rechercher
            <input
              placeholder="taper votre recherche"
              // onChange={handleChangeInput}
            />
          </label>
          <label htmlFor="appellation">
            Choisir une appellation
            <select
              htmlFor="Select"
              name="appellation"
              onChange={handleChangeAppellation}
            >
              <option value="">toutes</option>
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
          <label htmlFor="type">
            Type
            <select htmlFor="type" name="type">
              <option value="rouge">rouge</option>
              <option value="blanc">blanc</option>
              <option value="liquoreux">liquoreux</option>
              <option value="pétillant">pétillant</option>
            </select>
          </label>
        </div>
        <div className="cards-list">
          {" "}
          {wineList &&
            wineList.map((item) => (
              <Card
                item={item}
                isTrue={isTrue}
                setIsTrue={setIsTrue}
                region={region}
              />
            ))}
        </div>
      </div>
    </Layout>
  );
}

export default Bordeaux;
