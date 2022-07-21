import api from "@services/api";
import React, { useState } from "react";
import "./gestion.css";

function AddCard() {
  const [card, setCard] = useState({
    appellation: "",
    domaine: "",
    classement: "",
    millésime: "",
    stock: "",
    prix_achat: "",
    lieu_achat: "",
    type: "",
    commentaire: "",
  });

  const inputTextHandler = (e) => {
    setCard({
      ...card,
      [e.target.name]: e.target.value,
    });
  };

  const onSubmit = (e) => {
    e.preventDefault();
    api
      .post(`/api/beaujolais/addCard`, card, { withCredentials: true })
      .catch((err) => console.error(err));
  };

  return (
    <div className="section gestion">
      <h1>Ajouter une nouvelle carte de vin à ma cave</h1>

      <form onSubmit={onSubmit}>
        <div className="gauche">
          <label htmlFor="appellation">
            Appellation :
            <input type="text" name="appellation" onChange={inputTextHandler} />
          </label>
          <label htmlFor="classement">
            Classement :
            <input type="text" name="classement" onChange={inputTextHandler} />
          </label>
          <label htmlFor="prix_achat">
            Prix d'achat :
            <input
              type="number"
              step=".01"
              name="prix_achat"
              onChange={inputTextHandler}
            />
          </label>
          <label htmlFor="stock">
            Nombre de bouteilles en stock :
            <input type="number" name="stock" onChange={inputTextHandler} />
          </label>
          <label htmlFor="type">
            Type :
            <select name="type" onChange={inputTextHandler}>
              <option value="">---</option>
              <option value="rouge">rouge</option>
              <option value="blanc">blanc</option>
              <option value="rosé">rosé</option>
              <option value="pétillant">pétillant</option>
              <option value="liquoreux">liquoreux</option>
            </select>
          </label>{" "}
        </div>
        <div className="droit">
          <label htmlFor="domaine">
            Nom du domaine :
            <input type="text" name="domaine" onChange={inputTextHandler} />
          </label>
          <label htmlFor="millésime">
            Millésime :
            <input type="number" name="millésime" onChange={inputTextHandler} />
          </label>
          <label htmlFor="lieu_achat">
            Lieu d'achat :
            <input type="text" name="lieu_achat" onChange={inputTextHandler} />
          </label>

          <label htmlFor="commentaire">
            Commentaire :
            <textarea
              type="text"
              name="commentaire"
              onChange={inputTextHandler}
              rows="3"
            />
          </label>
          <label>
            <button type="submit" className="btn-send-form">
              {" "}
              Envoyer
            </button>
          </label>
        </div>
      </form>
    </div>
  );
}

export default AddCard;
