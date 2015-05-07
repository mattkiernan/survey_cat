$(document).ready(function(){
  mixpanel.track_links("#create-button", "clicked create button", {
    "referrer": document.referrer
  });

  mixpanel.identify("12148");
});
