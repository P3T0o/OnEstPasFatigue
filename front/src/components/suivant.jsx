import React from "react";

function Suivant() {
    return (
        <div>
            <button className={"suivant"}
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