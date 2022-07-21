import api from "@services/api";
import React from "react";
import "./gestion.css";
import { AiOutlineDelete } from "react-icons/ai";

// Ce composant ne se trouve pas sur la page gestion mais est un bouton sur les cartes dans /components/inventory/Card.jsx

function DeleteCard({ item, isTrue, setIsTrue }) {
  const handleDelete = (cardId) => {
    api
      .delete(`/api/beaujolais/delete/${cardId}`)
      .then(() => setIsTrue(!isTrue))
      .catch((err) => console.error(err));
  };

  return (
    <button
      type="button"
      onClick={() => {
        const confirmBox = window.confirm(
          "Etes-vous sûr de vouloir supprimer cette carte?"
        );
        if (confirmBox === true) {
          handleDelete(item.id);
        }
      }}
    >
      <AiOutlineDelete size={30} />
    </button>
  );
}

export default DeleteCard;
