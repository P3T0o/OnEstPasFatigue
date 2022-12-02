import React, {Fragment} from "react";
import Header from "../components/header";
import HomeInput from "../components/homeInput";
import Footer from "../components/footer";

function Home () {
  return (
    <Fragment>
        <Header />
        <HomeInput />
        <Footer />
    </Fragment>
  );
}

export default Home;