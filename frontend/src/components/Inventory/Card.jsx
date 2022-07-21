import React from "react";
import api from "@services/api";
import DeleteCard from "@components/Gestion/DeleteCard";
import { GrAddCircle } from "react-icons/gr";
import { BiMinusCircle } from "react-icons/bi";
import photovin from "../../assets/photo-vin.jpeg";

function Card({ item, isTrue, setIsTrue, region }) {
  const count = Math.round(item.prix_achat * item.stock * 10) / 10;

  const handleDeleteBottle = () => {
    api
      .delete(`/api/${region}/deleteBottle/${item.id}`, item, {
        withCredentials: true,
      })
      .then(() => setIsTrue(!isTrue))
      .catch((err) => console.error(err));
  };
  const handleAddBottle = () => {
    api
      .put(`/api/${region}/addBottle/${item.id}`, item, {
        withCredentials: true,
      })
      .then(() => setIsTrue(!isTrue))
      .catch((err) => console.error(err));
  };

  return (
    <div className="card-container">
      <div className="card-text">
        <div className="domaine">
          {" "}
          <h3>
            {item.Domaine} <br />
            {item.millésime}
          </h3>
        </div>
        {item.classement ? <p>Classement : {item.classement}</p> : ""}

        {item.type ? <p>Type : vin {item.type}</p> : null}

        <p>Prix unitaire: {item.prix_achat} € </p>
        <p>Stock : {item.stock}</p>
        <p>Valeur totale : {count} € </p>
        <div className="commentaire">Commentaire : {item.commentaire}</div>
      </div>
      <img src={photovin} className="photo-vin" alt="vin" />

      <div id="buttons">
        <div className="deleteCard">
          {" "}
          <DeleteCard item={item} isTrue={isTrue} setIsTrue={setIsTrue} />
        </div>

        <div className="bloc ">Trash</div>

        <button
          type="button"
          className="button deleteBottle"
          onClick={handleDeleteBottle}
        >
          <BiMinusCircle size={34} />
        </button>
        <button
          type="button"
          className="button addBottle"
          onClick={handleAddBottle}
        >
          <GrAddCircle size={32} />
        </button>
        <div className="bloc stock">Stock</div>
      </div>
    </div>
  );
}

export default Card;
