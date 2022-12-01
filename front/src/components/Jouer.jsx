import React from "react";

function Jouer() {
  return (
    <div>
        <button
            id="jouer"
            onClick={() => {
                window.location.href = "/jeu";
            }}
        >
            Jouer
        </button>
    </div>
  );
}

export default Jouer;