import React, { useState, useEffect } from "react";
import { doc, onSnapshot, collection, query, where } from "firebase/firestore";
import { db } from "./Firebase";

function TaxiMatching() {
  const [taxi, setTaxi] = useState([]);
  useEffect(() => {
    const q = query(collection(db, "Ego"), where("isMatched", "==", "false"));
    onSnapshot(q, (snap) => {
      setTaxi(
        snap.docChanges().map((now) => {
        //   console.log(now.doc.data());
          return now.doc.data();
        })
      );
    });
  }, []);
  console.log(1, taxi);

  return <div></div>;
}

export default TaxiMatching;
