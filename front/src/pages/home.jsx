import React, {Fragment} from "react";
import Header from "../components/Header";
import Jouer from "../components/Jouer";

function Home () {
  return (
    <Fragment>
      <Header />
        <Jouer />
    </Fragment>
  );
}

export default Home;