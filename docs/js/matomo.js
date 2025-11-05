// docs/js/matomo.js
var _paq = window._paq = window._paq || [];

// --- Privacy-first ---
_paq.push(['disableCookies']);        // pas de cookies
_paq.push(['setDoNotTrack', true]);   // respecte le DNT du navigateur

// (optionnels)
// _paq.push(['enableHeartBeatTimer', 15]); // temps passé plus précis
// _paq.push(['setDomains', ['*.ton-domaine.com']]); // si multi-sous-domaines

// --- Tracking de base ---
_paq.push(['trackPageView']);
_paq.push(['enableLinkTracking']);

(function() {
  var u="//analytics.lechaps.com/";
  _paq.push(['setTrackerUrl', u + 'matomo.php']);
  _paq.push(['setSiteId', '1']);
  var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
  g.async = true; g.src = u + 'matomo.js'; s.parentNode.insertBefore(g, s);
})();
