import React from "react";

function Jouer() {
    return (
        <div>
            <button
                id="jouer"
                // onClick={() => {
                //     window.location.href = "/jeu";
                // }}
                //
                // onMouseEnter={() => {
                //     const btn = document.getElementById('jouer');
                //     btn.style.left = Math.floor(Math.random() * 300 - 100) + 'px';
                //     btn.style.top = Math.floor(Math.random() * 600 + 100) + 'px';
                //     btn.disabled = true;
                // }}
                onClick={() => {
                    const btn = document.getElementById('jouer');
                    btn.style.left = Math.floor(Math.random() * 300 - 100) + 'px';
                    btn.style.top = Math.floor(Math.random() * 700 - 200) + 'px';
                }}
            >
                Jouer
            </button>
        </div>
    );
}

export default Jouer;