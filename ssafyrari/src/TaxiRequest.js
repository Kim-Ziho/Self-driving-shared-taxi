// eslint-disable-next-line no-unused-vars
/*global kakao*/
import React, { useState } from "react";
import { Link } from "react-router-dom";
import Modal from "react-modal";

function TaxiRequest() {
  const [initnode, setInitnode] = useState("");
  const [endnode, setEndnode] = useState("");
  const [initcoor, setInitcoor] = useState([
    37.240292239210696, 126.77383454342596,
  ]);
  const [endcoor, setEndcoor] = useState([
    37.240292239210696, 126.77383454342596,
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

      <Modal
        isOpen={initmodalState}
        onAfterOpen={() => {
          // console.log(11);
          var mapContainer = document.getElementById("map"), // 지도를 표시할 div
            mapOption = {
              center: new kakao.maps.LatLng(initcoor[0], initcoor[1]),
              level: 4,
              mapTypeId: kakao.maps.MapTypeId.ROADMAP, // 지도종류
              draggable: true,
            };
          var map = new kakao.maps.Map(mapContainer, mapOption);

          var startSrc =
              "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png", // 출발 마커이미지의 주소입니다
            startSize = new kakao.maps.Size(50, 45), // 출발 마커이미지의 크기입니다
            startOption = {
              offset: new kakao.maps.Point(15, 43), // 출발 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
            };
          var startImage = new kakao.maps.MarkerImage(
            startSrc,
            startSize,
            startOption
          );
          var startPosition = new kakao.maps.LatLng(initcoor[0], initcoor[1]);
          var startMarker = new kakao.maps.Marker({
            map: map, // 출발 마커가 지도 위에 표시되도록 설정합니다
            position: startPosition,
            // draggable: true, // 출발 마커가 드래그 가능하도록 설정합니다
            image: startImage, // 출발 마커이미지를 설정합니다
          });

          kakao.maps.event.addListener(map, "center_changed", function () {
            // 지도의  레벨을 얻어옵니다
            // var level = map.getLevel();

            // 지도의 중심좌표를 얻어옵니다
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
          var mapContainer = document.getElementById("map2"), // 지도를 표시할 div
            mapOption = {
              center: new kakao.maps.LatLng(endcoor[0], endcoor[1]),
              level: 4,
              mapTypeId: kakao.maps.MapTypeId.ROADMAP, // 지도종류
              draggable: true,
            };
          var map2 = new kakao.maps.Map(mapContainer, mapOption);

          var arriveSrc =
              "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png", // 도착 마커이미지 주소입니다
            arriveSize = new kakao.maps.Size(50, 45), // 도착 마커이미지의 크기입니다
            arriveOption = {
              offset: new kakao.maps.Point(15, 43), // 도착 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
            };

          // 도착 마커 이미지를 생성합니다
          var arriveImage = new kakao.maps.MarkerImage(
            arriveSrc,
            arriveSize,
            arriveOption
          );

          // 도착 마커가 표시될 위치입니다
          var arrivePosition = new kakao.maps.LatLng(endcoor[0], endcoor[1]);
          var arriveMarker = new kakao.maps.Marker({
            map: map2, // 도착 마커가 지도 위에 표시되도록 설정합니다
            position: arrivePosition,
            // draggable: true, // 도착 마커가 드래그 가능하도록 설정합니다
            image: arriveImage, // 도착 마커이미지를 설정합니다
          });
          kakao.maps.event.addListener(map2, "center_changed", function () {
            // 지도의  레벨을 얻어옵니다
            // var level = map.getLevel();

            // 지도의 중심좌표를 얻어옵니다
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
