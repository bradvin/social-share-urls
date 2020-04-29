import React from "react";
import ReactDOM from "react-dom";

import SocialShareMedia from "./SocialShareMedia.js";

import "./styles.css";

function App() {
  return (
    <div className="App">
      <h1>Social Link Generator</h1>

      <SocialShareMedia
        url="http://www.earthfluent.com/"
        title="EarthFluent"
        image="img"
        desc="Here you can take free, online lessons to learn some of the most used languages in the world. You may study Spanish, French, Italian, German, Japanese, Chinese, Hindi, Indonesian, Dutch, Polish, Portuguese, Russian, or Korean.  Go on, join the global conversation!"
        appid="0"
        redirecturl=""
        via="holdoffhunger"
        hashtags="languagelessons&languagelearning&selfteaching"
        provider="holdoffhunger"
        language="en"
        userid="0"
        category="Learning"
        phonenumber="0"
        emailaddress=""
        ccemailaddress=""
        bccemailaddress=""
      />
    </div>
  );
}

const rootElement = document.getElementById("root");
ReactDOM.render(<App />, rootElement);
