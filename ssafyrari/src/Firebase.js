// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getFirestore } from "firebase/firestore";
import { getAuth } from "firebase/auth";
// import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyA2cpVK_z80ndQtR81qrq1-2XZ4wiWsFBE",
  authDomain: "ssafyrari.firebaseapp.com",
  projectId: "ssafyrari",
  storageBucket: "ssafyrari.appspot.com",
  messagingSenderId: "841921736383",
  appId: "1:841921736383:web:e71afde3acff306dd0e00a",
  measurementId: "G-CDQGCSDBMY",
};

// const firebaseConfig = {
//   apiKey: "AIzaSyDgvpCxqBJkr7Mqm6yIsLSz_sqsL9xp4IU",
//   authDomain: "ssafyrari-a5ba6.firebaseapp.com",
//   projectId: "ssafyrari-a5ba6",
//   storageBucket: "ssafyrari-a5ba6.appspot.com",
//   messagingSenderId: "695297315640",
//   appId: "1:695297315640:web:fb5f9787ad37df726fe7cd",
// };

// Initialize Firebase
const app = initializeApp(firebaseConfig);
// const analytics = getAnalytics(app);
const db = getFirestore(app);
const auth = getAuth(app);

export { db, auth };
