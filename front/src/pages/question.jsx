import React, {Fragment} from "react";
import Header from "../components/header";
import Questions from "../components/questions";
import Footer from "../components/footer";

function Question () {
  return (
    <Fragment>
        <Header />
        <Questions />
        <Footer />
    </Fragment>
  );
}

export default Question;