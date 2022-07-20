import "./inventory.css";
import { Link } from "react-router-dom";
import React from "react";
import Layout from "@components/Layout";
import bouchon from "../../assets/bouchon-liege-gris2.png";

function Inventory() {
  return (
    <Layout>
      <div className="section">
        <div id="links-region">
          <img src={bouchon} id="bouchon" alt="bouchon" />
          <Link to="inventaire/beaujolais" className="link-region">
            Beaujolais
          </Link>
          <Link to="inventaire/alsace" className="link-region">
            Vin de la région Alsace
          </Link>
          <Link to="inventaire/bordeaux" className="link-region">
            Vin de la région Bordelaise
          </Link>
          <Link to="inventaire/bourgogne" className="link-region">
            Vin de la région Bourgogne
          </Link>
        </div>
      </div>
    </Layout>
  );
}

export default Inventory;
