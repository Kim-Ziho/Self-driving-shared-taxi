import "./App.css";
import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";

import Main from "./Main";
import TaxiRequest from "./TaxiRequest"

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Main />}></Route>
          <Route path="/taxi" element={<TaxiRequest />}></Route>
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
