import React, { useEffect, useState } from "react";
import Layout from "@components/Layout";
import api from "@services/api";
import Card from "./Card";

function Bourgogne() {
  const region = "bourgogne";
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
              <option value="Aloxe Corton">Aloxe Corton</option>
              <option value="Auxey Duresses">Auxey Duresses</option>
              <option value="Beaune">Beaune</option>
              <option value="Bourgogne Tonnerre">Bourgogne Tonnerre</option>
              <option value="Chablis">Chablis</option>
              <option value="Chambolles Musigny">Chambolles Musigny</option>
              <option value="Corton">Corton</option>
              <option value="Cotes de nuits villages">
                Cotes de nuits villages
              </option>
              <option value="Coulanges la Vineuse">Coulanges la Vineuse</option>
              <option value="Fixin">Fixin</option>
              <option value="Gevrey Chambertin">Gevrey Chambertin</option>
              <option value="Irancy">Irancy</option>
              <option value="Marsannay">Marsannay</option>
              <option value="Meursault">Meursault</option>
              <option value="Morey Saint Denis">Morey Saint Denis</option>
              <option value="Nuits St Georges">Nuits St Georges</option>
              <option value="Pernands Vergelesses">Pernands Vergelesses</option>
              <option value="Pommard">Pommard</option>
              <option value="Pouilly-fuisse">Pouilly-fuisse</option>
              <option value="Pouilly-Vinzelles">Pouilly-Vinzelles</option>
              <option value="Saint Aubin">Saint Aubin</option>
              <option value="Santenay">Santenay</option>
              <option value="Savigny les beaune">Savigny les beaune</option>
              <option value="Volnay">Volnay</option>
              <option value="Vosne-Romanee">Vosne-Romanee</option>
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

export default Bourgogne;
