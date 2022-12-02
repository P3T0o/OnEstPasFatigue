import React from "react";
import Suivant from "./suivant";

function Questions() {
    return (
        <div className={"questions"} id={"questions"}>
            <h3>Question</h3>

            <div className={"reponses"}>
                <button
                    id="bonneReponse"
                    onClick={() => {
                        const body = document.getElementById('questions');
                        body.innerHTML = "Joueur distribue !" +
                            "<br>" + "informations";
                    }}
                >
                    rep 1
                </button>

                <button
                    id="mauvaiseReponse"
                    onClick={() => {
                        const body = document.getElementById('questions');
                        body.innerHTML = "Joueur boit !" +
                            "<br>" + "informations" + "<br>" + "<Suivant/>";
                    }}
                >
                    rep 2
                </button>
            </div>
        </div>


    );
}

export default Questions;