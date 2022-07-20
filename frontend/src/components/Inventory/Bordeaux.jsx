import React, { useEffect, useState } from "react";
import Layout from "@components/Layout";
import api from "@services/api";

function Bordeaux() {
  const [wineList, setWineList] = useState([]);

  useEffect(() => {
    api
      .get(`/api/bordeaux`, { withCredentials: true })
      .then((res) => setWineList(res.data))
      .catch((err) => console.error(err));
  }, []);

  const handleChange = () => {};
  console.warn(wineList);
  return (
    <Layout>
      <div className="section">
        <div className="liste">
          <label htmlFor="Select">
            Choisir une appellation
            <select htmlFor="Select" name="appellation" onChange={handleChange}>
              <option value="">---</option>
              <option value="">Margaux</option>
              <option value="">Saint-Emilion</option>
              <option value="">Haut-Médoc</option>
              <option value="">Graves-Pessac_Léognan</option>
              <option value="">Saint-Estèphe</option>
              <option value="">Pauillac</option>
              <option value="">Saint-Julien</option>
              <option value="">Pomerol</option>
              <option value="">Bordeaux Supérieur</option>
              <option value="">Médoc</option>
              <option value="">Blaye</option>
              <option value="">Sauternes</option>
              <option value="">Loupiac</option>
              <option value="">Cadillac</option>
            </select>
          </label>

          <ul>
            {wineList && wineList.map((item) => <li>{item.Appellation}</li>)}
          </ul>
        </div>
      </div>
    </Layout>
  );
}

export default Bordeaux;
