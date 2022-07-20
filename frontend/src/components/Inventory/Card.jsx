import React from "react";
import api from "@services/api";
import photovin from "../../assets/photo-vin.jpeg";

function Card({ item, isTrue, setIsTrue }) {
  const count = Math.round(item.prix_achat * item.stock * 10) / 10;

  const handleDeleteBottle = () => {
    api
      .delete(`/api/bordeaux/deleteBottle/${item.id}`, item, {
        withCredentials: true,
      })
      .then(() => setIsTrue(!isTrue))
      .catch((err) => console.error(err));
  };

  const handleAddBottle = () => {
    api
      .put(`/api/bordeaux/addBottle/${item.id}`, item, {
        withCredentials: true,
      })
      .then(() => setIsTrue(!isTrue))
      .catch((err) => console.error(err));
  };

  return (
    <div className="card-container">
      <img src={photovin} className="photo-vin" alt="vin" />

      <h3 className="domaine">{item.Domaine}</h3>
      <div className="card-text">
        <p>{item.classement}</p>
        <p>{item.millésime} </p>
        <p>Type : vin {item.type}</p>
        <p>Prix unitaire: {item.prix_achat} € </p>
        <p>Stock : {item.stock}</p>
        <p>Valeur totale : {count} € </p>
      </div>
      <div id="buttons">
        <button
          type="button"
          className="button deleteBottle"
          onClick={handleDeleteBottle}
        >
          Supprimer une bouteille
        </button>
        <button
          type="button"
          className="button addBottle"
          onClick={handleAddBottle}
        >
          Ajouter une bouteille
        </button>
      </div>
    </div>
  );
}

export default Card;
