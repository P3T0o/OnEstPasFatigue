import React from "react";

function Suivant() {
    return (
        <div>
            <button
                id="jouer"
                onClick={() => {
                    window.location.href = "/jeu";
                }}
            >
                Suivant
            </button>
        </div>
    );
}

export default Suivant;