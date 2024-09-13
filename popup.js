document.addEventListener('DOMContentLoaded', function () {
  document.getElementById('galaxyOrg').addEventListener('click', function () {
    chrome.windows.create({ 
      url: 'https://usegalaxy.org', 
      type: 'popup', 
      width: 1200, 
      height: 800 
    });
  });

  document.getElementById('galaxyEu').addEventListener('click', function () {
    chrome.windows.create({ 
      url: 'https://usegalaxy.eu', 
      type: 'popup', 
      width: 1200, 
      height: 800 
    });
  });

  document.getElementById('galaxyAu').addEventListener('click', function () {
    chrome.windows.create({ 
      url: 'https://usegalaxy.org.au', 
      type: 'popup', 
      width: 1200, 
      height: 800 
    });
  });
});
