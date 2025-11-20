let resultsData = {};
// compute base path so fetch works whether site is at root or repo-subpath
const base = window.location.pathname.replace(/\/[^/]*$/, "");

// version token to prevent cached JSON; update this when uploading new results.json
const DATA_VERSION = "v2";

// try to fetch results.json from repository root (works for GH Pages)
fetch(base + "/results.json?" + DATA_VERSION)
  .then(response => {
    if (!response.ok) throw new Error("HTTP " + response.status);
    return response.json();
  })
  .then(data => {
    resultsData = data;
    console.log("Results loaded. Example keys:", Object.keys(resultsData).slice(0,6));
  })
  .catch(err => {
    console.error("Failed to load results.json:", err);
    document.getElementById("output").innerText = "Error loading results data. See console.";
  });

function searchResult() {
  const reg = document.getElementById("reg").value.trim();
  if (!reg) { alert("Please enter Register Number"); return; }

  const result = resultsData[reg];

  if (!result) {
    document.getElementById("output").innerHTML = `<p style="color:red;">No result found for Register No: ${reg}</p>`;
    return;
  }

  // render result
  document.getElementById("output").innerHTML = `
    <div class="card">
      <h2>${result.name}</h2>
      <p><strong>Register No:</strong> ${result.reg_no}</p>
      <table>
        <tr><th>Subject</th><th>Marks</th></tr>
        <tr><td>Hadees</td><td>${result.hadees}</td></tr>
        <tr><td>Fiqh</td><td>${result.fiqh}</td></tr>
        <tr><td>Insha</td><td>${result.insha}</td></tr>
        <tr><td>Quran & Hifz</td><td>${result.quran_hifz}</td></tr>
        <tr><td>Azkar</td><td>${result.azkar}</td></tr>
      </table>
      <p><strong>Total:</strong> ${result.total}</p>
      <p><strong>Status:</strong> <span class="${result.status === 'PASS' ? 'pass':'fail'}">${result.status}</span></p>
      <p><strong>Rank:</strong> ${result.rank}</p>
    </div>`;
}
