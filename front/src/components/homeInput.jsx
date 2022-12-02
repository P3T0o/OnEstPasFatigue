import React from "react";
import Jouer from "./jouer.jsx";

class HomeInput extends React.Component {
    constructor (props) {
        super(props);
        this.state = {
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
        array.push(this.state.input,
            this.state.input2,
            this.state.input3,
            this.state.input4,
            this.state.input5,
            this.state.input6,
            this.state.input7,
            this.state.input8,
            this.state.input9,
            this.state.input10
        );
        console.log(array);
        localStorage.setItem("players", JSON.stringify(array));
    }

    render () {
        return (
            <form
                onSubmit={this.handleSubmit}
                className={"form"}>
                <div className={"form__input"}>
                    <input
                        type="text"
                        placeholder="Pseudo P1"
                        onChange={this.setInput}
                    />
                    <label htmlFor="pseudoP1"></label>
                </div>
                <div className={"form__input"}>
                    <input
                        type="text"
                        placeholder="Pseudo P2"
                        onChange={this.setInput2}
                    />
                    <label htmlFor="pseudoP2"></label>
                </div>
                { this.state.newPlayerArray.map (items => {
                    return (
                        <div className={"form__input"}>
                            <input
                                type="text"
                                placeholder={`Pseudo P${items}`}
                                onChange={this[`setInput${items}`]}
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