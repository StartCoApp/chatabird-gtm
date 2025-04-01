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
    "id": "brand_dummy",
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
