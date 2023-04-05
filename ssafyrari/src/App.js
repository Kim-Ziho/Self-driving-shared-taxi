import "./App.css";
import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";

import Main from "./Main";
import TaxiRequest from "./TaxiRequest";
import ShareTaxiRequest from "./ShareTaxiRequest";
import TaxiMatched from "./TaxiMatched";
import TaxiMatching from "./TaxiMatching";

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Main />}></Route>
          <Route path="/taxi" element={<TaxiRequest />}></Route>
          <Route path="/sharetaxi" element={<ShareTaxiRequest />}></Route>
          <Route path="/matched" element={<TaxiMatched />}></Route>
          <Route path="/matching" element={<TaxiMatching />}></Route>
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
