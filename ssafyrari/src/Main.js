import React from "react";
import { Link } from "react-router-dom";

function Main() {
  return (
    <div>
      <Link to={"/taxi"}>
        <button>택시호출</button>
      </Link>
      <br></br>
      <Link>
        <button>공유택시호출</button>
      </Link>
    </div>
  );
}

export default Main;
