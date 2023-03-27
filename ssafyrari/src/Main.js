import React from "react";
import { Link } from "react-router-dom";
// import Firebase from "./Firebase";
import logo from "./SSAFYRARI_logo.png";
import './Main.css'

function Main() {
  // console.log(Firebase)
  return (
    <div id="main">
      <div className="img-position"></div>
      <div className="img-box">
        <img className="img" src={logo} alt="ssafyrari_logo" />
      </div>
      <div className="Button">
      <Link to={"/taxi"}>
        <button className="call_button">택시호출</button>
      </Link>
      
      <Link>
        <button className="call_button">공유택시호출</button>
      </Link>
      </div>
    </div>
  );
}

export default Main;
