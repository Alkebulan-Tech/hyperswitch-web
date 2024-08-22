@module("firebase/app")
external firebase: Js.t<{.}> = "default"

@module("firebase/app")
external initializeApp: Js.Dict.t<string> => Js.t<{.}> = "initializeApp"

// Import getAnalytics from firebase/analytics
@module("firebase/analytics")
external getAnalytics: Js.t<{.}> => Js.t<{.}> = "getAnalytics"

// Define the config object using Js.Dict
let config = Js.Dict.fromArray([
  ("apiKey", "AIzaSyBrUTDPRT3FNJPNrz0V_xWQuL1kTjKZUyE"),
  ("authDomain", "kemetx-f8e5b.firebaseapp.com"),
  ("projectId", "kemetx-f8e5b"),
  ("storageBucket", "kemetx-f8e5b.appspot.com"),
  ("messagingSenderId", "667699489962"),
  ("appId", "1:667699489962:web:dec6186a42aebbd59f74d3"),
  ("measurementId", "G-Z2T9GQ92QZ")
])

let app = initializeApp(config)

// Use getAnalytics with the initialized app
let analytics = getAnalytics(app)
