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
            newPlayerArray: [],
        };
    }

    setInput = (event) => {
        this.setState({input: event.target.value});
    }

    setInput2 = (event) => {
        this.setState({input2: event.target.value});
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
                        value={this._state.input}
                        onChange={this.setInput}
                    />
                    <label htmlFor="pseudoP1"></label>
                </div>
                <div className={"form__input"}>
                    <input
                        type="text"
                        placeholder="Pseudo P2"
                        value={this._state.input2}
                        onChange={this.setInput2}
                    />
                    <label htmlFor="pseudoP2"></label>
                </div>

                <Jouer />
            </form>
        )
    }
}

const newPlayerInput = ({newPlayerArray}) => {
    return (
        <div className={"form__input"}>
            <input
                type="text"
                placeholder="Pseudo P2"
                value={this._state.input}
                onChange={this.setInput2}
            />
            <label htmlFor="pseudoP2"></label>
        </div>
    )
}

export default HomeInput;