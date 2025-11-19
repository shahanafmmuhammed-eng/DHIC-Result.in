# DHIC-Result.in
DHIC Result publishing 
<!DOCTYPE html><html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>DHIC Result Search</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f1f5f9;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: flex-start;
      min-height: 100vh;
    }
    .container {
      background: #ffffff;
      width: 90%;
      max-width: 500px;
      margin-top: 40px;
      padding: 30px;
      border-radius: 16px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
      text-align: center;
    }
    img.logo {
      width: 120px;
      margin-bottom: 15px;
    }
    h2 {
      margin: 0;
      color: #1e293b;
      font-size: 22px;
      font-weight: 700;
    }
    p.subtitle {
      margin-top: 5px;
      color: #475569;
      font-size: 14px;
    }
    input {
      width: 100%;
      padding: 12px;
      margin-top: 20px;
      font-size: 16px;
      border-radius: 10px;
      border: 1px solid #cbd5e1;
      outline: none;
    }
    button {
      width: 100%;
      padding: 12px;
      margin-top: 15px;
      background: #0ea5e9;
      color: white;
      font-size: 16px;
      border: none;
      border-radius: 10px;
      cursor: pointer;
    }
    button:hover { background: #0284c7; }.result-box {
  margin-top: 25px;
  background: #f8fafc;
  padding: 20px;
  border-radius: 12px;
  border: 1px solid #dbeafe;
  display: none;
  text-align: left;
}

.label { font-weight: bold; color: #1e293b; }
.value { color: #334155; }

  </style>
</head>
<body>
  <div class="container">
    <img src="logo.png" class="logo" alt="DHIC Logo" />
    <h2>Darul Hikam Islamic Complex</h2>
    <p class="subtitle">Exam Result Search (By Register Number)</p><input type="number" id="regInput" placeholder="Enter Register Number" />
<button onclick="searchResult()">Search</button>

<div class="result-box" id="resultBox">
  <p><span class="label">Name:</span> <span class="value" id="rName"></span></p>
  <p><span class="label">Register No:</span> <span class="value" id="rReg"></span></p>
  <p><span class="label">Total Marks:</span> <span class="value" id="rTotal"></span></p>
  <p><span class="label">Status:</span> <span class="value" id="rStatus"></span></p>
</div>

  </div>  <script>
    const results = {
      1001: { name: "SINAN K", total: 88, status: "PASS" },
      1002: { name: "FAHIMSHA", total: 90, status: "PASS" },
      1003: { name: "JISHAN", total: 86, status: "PASS" },
      1004: { name: "SHAMEEM", total: 82, status: "PASS" },
      1005: { name: "YASEEN", total: 76, status: "PASS" },
      1006: { name: "NALR", total: 70, status
