// The client ID is obtained from the Google Developers Console
// at https://console.developers.google.com/.
// If you run this code from a server other than http://localhost,
// you need to register your own client ID.
var OAUTH2_CLIENT_ID = '104070488721-a0ueeo39k2bmvcb222tn5a0uqptea755.apps.googleusercontent.com';
var OAUTH2_SCOPES = [
  'https://www.googleapis.com/auth/youtube'
];

// Upon loading, the Google APIs JS client automatically invokes this callback.
googleApiClientReady = function() {
  gapi.auth.init(function() {
    window.setTimeout(checkAuth, 1);
  });
}

// Attempt the immediate OAuth 2.0 client flow as soon as the page loads.
// If the currently logged-in Google Account has previously authorized
// the client specified as the OAUTH2_CLIENT_ID, then the authorization
// succeeds with no user intervention. Otherwise, it fails and the
// user interface that prompts for authorization needs to display.
function checkAuth() {
  gapi.auth.authorize({
    client_id: OAUTH2_CLIENT_ID,
    scope: OAUTH2_SCOPES,
    immediate: true
  }, handleAuthResult);
}

// Handle the result of a gapi.auth.authorize() call.
function handleAuthResult(authResult) {
  if (authResult && !authResult.error) {
    // Authorization was successful. Hide authorization prompts and show
    // content that should be visible after authorization succeeds.
    $('.pre-auth').hide();
    $('.post-auth').show();
    loadAPIClientInterfaces();
  } else {
    // Make the #login-link clickable. Attempt a non-immediate OAuth 2.0
    // client flow. The current function is called when that flow completes.
    $('#login-link').click(function() {
      gapi.auth.authorize({
        client_id: OAUTH2_CLIENT_ID,
        scope: OAUTH2_SCOPES,
        immediate: false
        }, handleAuthResult);
    });
  }
}

// Load the client interfaces for the YouTube Analytics and Data APIs, which
// are required to use the Google APIs JS client. More info is available at
// http://code.google.com/p/google-api-javascript-client/wiki/GettingStarted#Loading_the_Client
function loadAPIClientInterfaces() {
  gapi.client.load('youtube', 'v3', function() {
    setupBroadcast();
  });
}

function setupBroadcast() {
      var data =
      { "snippet": {
            "scheduledEndTime": "2016-04-01T20:00:00.0Z",
            "scheduledStartTime": "2016-04-01T18:00:00.0Z",
            "title": "caraca"
        },
        "status": {
            "privacyStatus": "private"
        }
      };
      $.ajax({
          type: "POST",
          url: "https://www.googleapis.com/youtube/v3/liveBroadcasts?part=snippet%2C+status&key=AIzaSyDiY7WUDsMYbZkb4yECMbCynC48PSVPX2M&callback=teste",
          processData: false,
          contentType: 'application/json',
          data: JSON.stringify(data)
          // success: function( data, textStatus, jQxhr ){
          //     alert( "eitcha ... " + JSON.stringify( data ) );
          // },
          // error: function( jqXhr, textStatus, errorThrown ){
          //     alert( "dancou ... " + errorThrown );
          // }
      });
};
function teste(dataw) {
  alert(dataw);
};

  // $.post("https://www.googleapis.com/youtube/v3/liveBroadcasts",
  //        {body: "part=snippet%2C+status&key={AIzaSyDiY7WUDsMYbZkb4yECMbCynC48PSVPX2M}"
  //        },
  //        function(data,status){
  //                alert("Data: " + data + "\nStatus: " + status);
  //        });