import React from "react";

function Header () {
    return (
        <div className={"header"}>
            <div className={"header__logo"}>
                <img
                src={require("../assets/logoFini.png")}
                alt="logo"
                />
            </div>
            <div className={"header__title"}>
                <h1>Sid'aDeja</h1>
            </div>
        </div>
    );
}

export default Header;