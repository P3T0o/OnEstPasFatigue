import React from "react";
import {getById} from "../api/get";

// import DB from mysql
function Questions() {
    const [data, setData] = React.useState([]);
    const [id, setId] = React.useState(1);
    React.useEffect(() => {
        getById(id).then((data) => {
            setData(data);
        });
    }, []);
    console.log(data);
    return (
        <div className={"questions"}>
            <h3>Question</h3>

            <div className={"reponses"}>
                <button
                    id="bonneReponse"
                    onClick={() => {
                        const body = document.getElementById('questions');
                        body.innerHTML = "Joueur distribue !" +
                            "<br>" + "informations";
                        setTimeout(() => {
                            window.location.href = "/jeu";
                        }, 2000);
                    }}
                >
                    rep 1
                </button>

                <button
                    id="mauvaiseReponse"
                    onClick={() => {
                        const body = document.getElementById('questions');
                        body.innerHTML = "Joueur boit !" +
                            "<br>" + "informations";
                        setTimeout(() => {
                            window.location.href = "/jeu";
                        }, 2000);
                    }}
                >
                    rep 2
                </button>
            </div>
        </div>
    );
}

export default Questions;