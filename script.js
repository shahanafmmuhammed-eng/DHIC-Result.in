const results={1001:{name:"SINAN K",total:88,status:"PASS"},
1002:{name:"FAHIMSHA",total:90,status:"PASS"},
1003:{name:"JISHAN",total:86,status:"PASS"},
1004:{name:"SHAMEEM",total:82,status:"PASS"},
1005:{name:"YASEEN",total:76,status:"PASS"},
1006:{name:"NALR",total:70,status:"PASS"},
1007:{name:"SAMEEL",total:92,status:"PASS"},
1008:{name:"BISHR",total:75,status:"PASS"},
1009:{name:"ZIYAD",total:78,status:"PASS"},
1010:{name:"SAYYID MIHJA PMS",total:80,status:"PASS"},
1011:{name:"FAYIZ",total:77,status:"PASS"},
1012:{name:"UVAIS",total:85,status:"PASS"}};

function searchResult(){
let reg=document.getElementById("regInput").value;
let box=document.getElementById("resultBox");
if(!results[reg]){
box.style.display="block";
document.getElementById("rName").textContent="Not Found";
document.getElementById("rReg").textContent=reg;
document.getElementById("rTotal").textContent="-";
document.getElementById("rStatus").textContent="Invalid Register Number";
return;
}
let r=results[reg];
box.style.display="block";
document.getElementById("rName").textContent=r.name;
document.getElementById("rReg").textContent=reg;
document.getElementById("rTotal").textContent=r.total;
document.getElementById("rStatus").textContent=r.status;
}
