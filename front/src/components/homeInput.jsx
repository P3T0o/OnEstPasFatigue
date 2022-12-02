import React from "react";
import Jouer from "./jouer.jsx";

class HomeInput extends React.Component {
    constructor (props) {
        super(props);
        this._state = {
            input: "",
            input2: "",
            input3: "",
            input4: "",
            input5: "",
            input6: "",
            input7: "",
            input8: "",
            input9: "",
            input10: "",
            newPlayerArray: [3,4],
        };
    }

    setInput = (event) => {
        this.setState({input: event.target.value});
    }

    setInput2 = (event) => {
        this.setState({input2: event.target.value});
    }

    setInput3 = (event) => {
        this.setState({input3: event.target.value});
    }

    setInput4 = (event) => {
        this.setState({input4: event.target.value});
    }

    setInput5 = (event) => {
        this.setState({input5: event.target.value});
    }

    setInput6 = (event) => {
        this.setState({input6: event.target.value});
    }

    setInput7 = (event) => {
        this.setState({input7: event.target.value});
    }

    setInput8 = (event) => {
        this.setState({input8: event.target.value});
    }

    setInput9 = (event) => {
        this.setState({input9: event.target.value});
    }

    setInput10 = (event) => {
        this.setState({input10: event.target.value});
    }


    handleSubmit = (event) => {
        event.preventDefault();
        let array = [];
        array.push(this._state.input);
        array.push(this._state.input2);
        console.log(array);
        localStorage.setItem("players", JSON.stringify(array));
        console.log("submit");
    }


    render () {
        console.log(this._state.input);
        console.log(this._state.input2);
        return (
            <form
                onSubmit={this.handleSubmit}
                className={"form"}>
                <div className={"form__input"}>
                    <input
                        type="text"
                        placeholder="Pseudo P1"
                        defaultValue=""
                        onChange={this.setInput}
                    />
                    <label htmlFor="pseudoP1"></label>
                </div>
                <div className={"form__input"}>
                    <input
                        type="text"
                        placeholder="Pseudo P2"
                        defaultValue=""
                        onChange={this.setInput2}
                    />
                    <label htmlFor="pseudoP2"></label>
                </div>
                { this._state.newPlayerArray.map ( items => {
                    return (
                        <div className={"form__input"}>
                            <input
                                type="text"
                                placeholder={`Pseudo P${items}`}
                                value={this._state[`input${items}`]}
                                onChange={this.setInput2}
                            />
                            <label htmlFor="pseudoP2"></label>
                        </div>
                    )
                })

                }
                <Jouer />
            </form>
        )
    }
}

export default HomeInput;