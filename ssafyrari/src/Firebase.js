// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getFirestore } from "firebase/firestore"
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

// Initialize Firebase
const app = initializeApp(firebaseConfig);
// const analytics = getAnalytics(app);
const db = getFirestore(app)

export default db
