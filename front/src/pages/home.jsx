import React, {Fragment} from "react";
import Header from "../components/Header";
import Jouer from "../components/main/Jouer";

function Home () {
  return (
    <Fragment>
      <Header />
        <Jouer />
    </Fragment>
  );
}

export default Home;