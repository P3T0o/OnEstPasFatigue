import React from "react";

function Footer () {
    return (
        <div className={"footer"}>
            <h4>Développeurs</h4>
            <div className={"box"}>
                <div className={"footer_left"}>
                    <ul className={"footer_ul"}>
                        <li className={"footer_li"}>Kitae Seo</li>
                        <li className={"footer_li"}>Elouan Da-Costa Peixoto</li>
                    </ul>
                </div>
                <div className={"footer_right"}>
                    <ul className={"footer_ul"}>
                        <li className={"footer_li"}>Erwan Geslin</li>
                        <li className={"footer_li"}>Quentin Le Noir</li>
                    </ul>
                </div> 
            </div>
            
        </div>
    );
}

export default Footer;