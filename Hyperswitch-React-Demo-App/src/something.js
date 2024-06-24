export const loadSDK = (clientSecret, pubkey) => {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "https://beta.hyperswitch.io/v1/HyperLoader.js";
  let hyper;
  script.onload = () => {
    hyper = window.Hyper(pubkey);
    const appearance = {
      theme: "charcoal",
    };
    const ephimeralKey = "epk_199235de39aa4ca08c596a98635e6bbb";
    const widgets = hyper.widgets({ appearance, clientSecret, ephimeralKey });
    const unifiedCheckoutOptions = {
      layout: "tabs",
      wallets: {
        walletReturnUrl: "https://example.com/complete",
        //Mandatory parameter for Wallet Flows such as Googlepay, Paypal and Applepay
      },
    };
    const unifiedCheckout = widgets.create(
      "paymentManagement",
      unifiedCheckoutOptions
    );
    unifiedCheckout.mount("#unified-checkout");
  };
  document.body.appendChild(script);
};
