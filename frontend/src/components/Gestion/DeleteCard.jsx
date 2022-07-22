import api from "@services/api";
import React from "react";
import "./gestion.css";
import { AiOutlineDelete } from "react-icons/ai";
import Swal from "sweetalert2";

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
        Swal.fire({
          title: "Etes-vous sûr de vouloir supprimer cette carte?",
          text: "Cette action sera irréversible",
          icon: "warning",
          showCancelButton: true,
          confirmButtonColor: "#2fbf3b",
          cancelButtonColor: "#E51F1F",
          confirmButtonText: "Oui, supprimer",
          cancelButtonText: "Annuler",
        }).then((result) => {
          if (result.isConfirmed) {
            Swal.fire("La carte a bien été supprimée.");
            handleDelete(item.id);
          }
        });
      }}
    >
      <AiOutlineDelete size={35} color="white" />
    </button>
  );
}

export default DeleteCard;
