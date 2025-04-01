___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "appId",
    "displayName": "Chatabird App ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Enter your Chatabird App ID (e.g., startco)",
    "defaultValue": "startco"
  },
  {
    "type": "TEXT",
    "name": "identityKey",
    "displayName": "Identity Validation Key",
    "simpleValueType": true,
    "help": "Enter your Chatabird Identity Validation Key (if applicable)",
    "valueHint": "Optional"
  }
]

___TEMPLATE_JS___

const injectScript = () => {
  const appId = data.appId;
  const identityKey = data.identityKey;

  // Create settings object
  let chataBirdSettings = {
    appId: appId
  };

  // Add identity key if provided
  if (identityKey) {
    chataBirdSettings.identityKey = identityKey;
  }

  // Inject the script
  let script = document.createElement("script");
  script.type = "module";
  script.src = "https://em.chatabird.com/index.js";
  script.onload = function() {
    let chataBirdJs = new ChataBirdJS();
    chataBirdJs.init(chataBirdSettings);
  };
  document.body.append(script);

  // Inject noscript element
  let noscript = document.createElement("noscript");
  noscript.innerHTML = ' Powered by <a href="https://chatabird.com" target="_blank">Chatabird</a>';
  document.body.append(noscript);

  // Signal successful completion
  data.gtmOnSuccess();
};

injectScript();

___METADATA___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Chatabird Chat",
  "categories": ["CHAT", "CONVERSIONS", "MARKETING"],
  "brand": {
    "id": "chatabird",
    "displayName": "Chatabird",
    "thumbnail": "data:image/png;base64,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"
  },
  "description": "Add Chatabird chat to your website for customer engagement and support.",
  "containerContexts": [
    "WEB"
  ]
}

___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const createArgumentsQueue = require('createArgumentsQueue');
const log = require('logToConsole');
const encodeUriComponent = require('encodeUriComponent');
const getUrl = require('getUrl');

// URL for the external script
const chataBirdUrl = 'https://em.chatabird.com/index.js';

// Initialize dataLayer for setting Chatabird settings
const chataBirdJS = createArgumentsQueue('chataBirdJS', 'chataBirdJS.q');

// Callback for when the script loads successfully
const onSuccess = () => {
  // Initialize Chatabird with settings
  let settings = {
    appId: data.appId
  };

  if (data.identityKey) {
    settings.identityKey = data.identityKey;
  }

  // Initialize Chatabird
  chataBirdJS('init', settings);

  // Signal successful completion
  data.gtmOnSuccess();
};

// Callback for when the script fails to load
const onFailure = () => {
  log('Chatabird script failed to load');
  data.gtmOnFailure();
};

// Load the Chatabird script
injectScript(chataBirdUrl, onSuccess, onFailure, 'chataBirdScript');

___NOTES___

Created on 4/1/2025, 3:00:00 AM

___WEB_PERMISSIONS___

[
  {
    "permission": "inject_script",
    "allowedUrls": [
      "https://em.chatabird.com*"
    ]
  }
]

___TESTS___

scenarios: []
