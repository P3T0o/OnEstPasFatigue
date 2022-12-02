import React from "react";

function Jouer() {
    console.log(localStorage.getItem("players", [0]));
    return (
        // check if inputs of ./homeInput.jsx are not empty
        <div>
            <button
                id="jouer"
                onClick={() => {
                    if (localStorage.getItem("players", [0] != "" && [1] != "")) {
                        window.location.href = "/jeu";
                    } else {
                        const btn = document.getElementById('jouer');
                        btn.style.left = Math.floor(Math.random() * 300 - 100) + 'px';
                        btn.style.top = Math.floor(Math.random() * 700 - 200) + 'px';
                    }

                }}
                
                onMouseEnter={() => {
                    const btn = document.getElementById('jouer');
                    btn.style.left = Math.floor(Math.random() * 300 - 100) + 'px';
                    btn.style.top = Math.floor(Math.random() * 600 + 100) + 'px';
                    btn.disabled = true;
                }}
                // onClick2={() => {
                //     const btn = document.getElementById('jouer');
                //     btn.style.left = Math.floor(Math.random() * 300 - 100) + 'px';
                //     btn.style.top = Math.floor(Math.random() * 700 - 200) + 'px';
                // }}
            >
                Jouer
            </button>
        </div>
    );
}

export default Jouer;