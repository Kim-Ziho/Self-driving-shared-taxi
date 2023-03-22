// eslint-disable-next-line no-unused-vars
/*global kakao*/
import React, { useState } from "react";
import { Link } from "react-router-dom";
import Modal from "react-modal";
import { collection, addDoc, setDoc, doc } from "firebase/firestore";
import db from "./Firebase";

function TaxiRequest() {
  const [initnode, setInitnode] = useState("");
  const [endnode, setEndnode] = useState("");
  const [initcoor, setInitcoor] = useState([
    37.582918740973305, 126.88875664944605,
  ]);
  const [endcoor, setEndcoor] = useState([
    37.582918740973305, 126.88875664944605,
  ]);
  const [initmodalState, setInitModalState] = useState(false);
  const [endmodalState, setEndModalState] = useState(false);
  // let initnode = ''
  // let endnode = ''
  //   setInitnode('');
  //   setEndnode('');
  // const hello = 'hello'

  const { kakao } = window;

  function changeInitModal() {
    setInitModalState(!initmodalState);
  }

  function changeEndModal() {
    setEndModalState(!endmodalState);
  }

  function setInitnodeCoor() {
    setInitnode(initcoor);
    setInitModalState(false);
  }

  function setEndnodeCoor() {
    setEndnode(endcoor);
    setEndModalState(false);
  }

  function callTaxi() {
    const docRef = setDoc(doc(db, "User", "User1"), {
      Initnode_lat: initcoor[0],
      Initnode_lng: initcoor[1],
      Endnode_lat: endcoor[0],
      Endnode_lng: endcoor[1],
    });
    console.log("Document written with ID: ", docRef.id);
  }

  const appElement = document.getElementById("root");

  Modal.setAppElement(appElement);

  return (
    <div>
      <span>출발위치 : </span>
      {initnode ? (
        <div>
          {" "}
          {initnode} <button onClick={changeInitModal}>출발지 변경</button>{" "}
        </div>
      ) : (
        <button onClick={changeInitModal}>출발지 선택</button>
      )}

      <br></br>
      <span>도착위치 : </span>
      {endnode ? (
        <div>
          {" "}
          {endnode} <button onClick={changeEndModal}>도착지 변경</button>{" "}
        </div>
      ) : (
        <button onClick={changeEndModal}>도착지 선택</button>
      )}
      <br></br>
      <br></br>
      <button onClick={callTaxi}>택시호출</button>

      <Modal
        isOpen={initmodalState}
        onAfterOpen={() => {
          // console.log(initnode);
          // console.log(11);
          var mapContainer = document.getElementById("map"),
            mapOption = {
              center: new kakao.maps.LatLng(initcoor[0], initcoor[1]),
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
          var startPosition = new kakao.maps.LatLng(initcoor[0], initcoor[1]);
          var startMarker = new kakao.maps.Marker({
            map: map,
            position: startPosition,

            image: startImage,
          });

          kakao.maps.event.addListener(map, "center_changed", function () {
            var latlng = map.getCenter();

            startMarker.setPosition(
              new kakao.maps.LatLng(latlng.getLat(), latlng.getLng())
            );
            setInitcoor([latlng.getLat(), latlng.getLng()]);
          });
        }}
      >
        <div>
          <span>출발지 설정</span>
          <button onClick={changeInitModal}>닫기</button>
        </div>
        <div id="map" style={{ width: "auto", height: 200 }}></div>
        <br></br>
        <button onClick={setInitnodeCoor}>출발지로 선택</button>
      </Modal>

      <Modal
        isOpen={endmodalState}
        onAfterOpen={() => {
          if (!endnode) {
            setInitcoor([37.582918740973305, 126.88875664944605]);
          }
          var mapContainer = document.getElementById("map2"),
            mapOption = {
              center: new kakao.maps.LatLng(endcoor[0], endcoor[1]),
              level: 4,
              mapTypeId: kakao.maps.MapTypeId.ROADMAP,
              draggable: true,
            };
          var map2 = new kakao.maps.Map(mapContainer, mapOption);

          var arriveSrc =
            "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png";
          var arriveSize = new kakao.maps.Size(50, 45);
          var arriveOption = {
            offset: new kakao.maps.Point(15, 43),
          };

          var arriveImage = new kakao.maps.MarkerImage(
            arriveSrc,
            arriveSize,
            arriveOption
          );

          var arrivePosition = new kakao.maps.LatLng(endcoor[0], endcoor[1]);
          var arriveMarker = new kakao.maps.Marker({
            map: map2,
            position: arrivePosition,
            image: arriveImage,
          });
          kakao.maps.event.addListener(map2, "center_changed", function () {
            var latlng = map2.getCenter();

            arriveMarker.setPosition(
              new kakao.maps.LatLng(latlng.getLat(), latlng.getLng())
            );
            setEndcoor([latlng.getLat(), latlng.getLng()]);
          });
        }}
      >
        <div>
          <span>도착지 설정</span>
          <button onClick={changeEndModal}>닫기</button>
        </div>
        <div id="map2" style={{ width: "auto", height: 200 }}></div>
        <br></br>
        <button onClick={setEndnodeCoor}>도착지로 선택</button>
      </Modal>

      <Link to={"/"}>
        <button>홈으로</button>
      </Link>
    </div>
  );
}

export default TaxiRequest;
