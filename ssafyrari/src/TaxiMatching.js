/*global kakao*/
import React, { useState, useEffect, useRef } from "react";
import { collection, doc, getDoc, onSnapshot } from "firebase/firestore";
import db from "./Firebase";
import taxiImg from "./taxi.png"

import './TaxiMatching.css'

const { kakao } = window;

function TaxiMatching() {
  // getData()
  // console.log(getData())

  let [userData, setUserData] = useState([]);
  let [egoData, setEgoData] = useState([]);
  let [pathData, setPathData] = useState([]);
  useEffect(() => {
    const userSs = onSnapshot(doc(db, "User", "User1"), (doc) => {
      setUserData(doc.data());
    });
    const EgoSs = onSnapshot(doc(db, "Ego", "Ego1"), (doc) => {
      setEgoData(doc.data());
    });
    const PathSs = onSnapshot(doc(db, "Path", "UserPath"), (doc) => {
      setPathData(doc.data());
    });
  }, []);

  setTimeout(() => {
    console.log(userData, egoData,pathData);

    var mapContainer = document.getElementById("map"),
      mapOption = {
        center: new kakao.maps.LatLng(
          userData["Initnode_lat"],
          userData["Initnode_lng"]
        ),
        level: 4,
        mapTypeId: kakao.maps.MapTypeId.ROADMAP,
        draggable: true,
      };
    var map = new kakao.maps.Map(mapContainer, mapOption);

    var startSrc =
      "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png";
    var startSize = new kakao.maps.Size(50, 45);
    var startOption = { offset: new kakao.maps.Point(15, 43) };
    var startImage = new kakao.maps.MarkerImage(
      startSrc,
      startSize,
      startOption
    );
    var startPosition = new kakao.maps.LatLng(
      userData["Initnode_lat"],
      userData["Initnode_lng"]
    );
    var startMarker = new kakao.maps.Marker({
      map: map,
      position: startPosition,

      image: startImage,
    });

    var taxiSrc = taxiImg
    var taxiSize = new kakao.maps.Size(30,25)
    var taxiOption = { offset: new kakao.maps.Point(15,12)};
    var taxiImage = new kakao.maps.MarkerImage(
      taxiSrc,
      taxiSize,
      taxiOption
    );
    var taxiPosition = new kakao.maps.LatLng(
      egoData["current_lat"],
      egoData["current_lng"]
    )
    var taxiMarker = new kakao.maps.Marker({
      map:map,
      position : taxiPosition,
      image : taxiImage
    })

    // var pathdata


  }, 100);

  return (
    <div id="root">
      <div id="map" style={{ width: 500, height: 400 }}></div>
    </div>
  );
}

export default TaxiMatching;
