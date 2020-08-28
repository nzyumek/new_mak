//都府県の選択肢
var arr = [
  {cd:"", label:"▼学部選択"},
  {cd:"1", label:"法学部"},
  {cd:"2", label:"商学部"},
  {cd:"3", label:"政治経済学部"},
  {cd:"4", label:"経営学部"},
  {cd:"5", label:"文学部"},
  {cd:"6", label:"情報コミュニケーション学部"},
  {cd:"7", label:"国際日本学部"},
  {cd:"8", label:"理工学部"},
  {cd:"9", label:"農学部"},
  {cd:"10", label:"総合数理学部"}
];

//市区の選択肢
var arrLaw = [
  {cd:"", label:"▼学科選択"},
  {cd:"1", label:"法律学科"},
];
var arrCom = [
  {cd:"", label:"▼学科選択"},
  {cd:"1", label:"商学科"},
];
var arrPol = [
  {cd:"", label:"▼学科選択"},
  {cd:"1", label:"政治学科"},
  {cd:"2", label:"経済学科"},
  {cd:"3", label:"地域行政学科"}
];
var arrBus = [
  {cd:"", label:"▼学科選択"},
  {cd:"1", label:"経営学科"},
  {cd:"2", label:"会計学科"},
  {cd:"3", label:"公共経営学科"}
];
var arrArt = [
  {cd:"", label:"▼学科選択"},
  {cd:"1", label:"文学科"},
  {cd:"2", label:"史学地理学科"},
  {cd:"3", label:"心理社会学科"}
];
var arrInfo = [
  {cd:"", label:"▼学科選択"},
  {cd:"1", label:"情報コミュニケーション学科"},
];
var arrInter = [
  {cd:"", label:"▼学科選択"},
  {cd:"1", label:"国際日本学科"},
];
var arrSci = [
  {cd:"", label:"▼学科選択"},
  {cd:"1", label:"電気電子生命学科"},
  {cd:"2", label:"機械情報工学科"},
  {cd:"3", label:"建築学科"},
  {cd:"4", label:"応用化学科"},
  {cd:"5", label:"機械工学科"},
  {cd:"6", label:"情報科学科"},
  {cd:"7", label:"数学科"},  
  {cd:"8", label:"物理学科"}  
];
var arrFarm = [
  {cd:"", label:"▼学科選択"},
  {cd:"1", label:"農学科"},
  {cd:"2", label:"食料環境政策学科"},
  {cd:"3", label:"農芸化学科"},
  {cd:"4", label:"生命科学科"},
  {cd:"5", label:"総合科目群"}
];
var arrMath = [
  {cd:"", label:"▼学科選択"},
  {cd:"1", label:"現象数理学科"},
  {cd:"2", label:"先端メディアサイエンス学科"},
  {cd:"3", label:"ネットワークデザイン学科"}
];

//都府県コンボの生成
window.onload=function(){
  for(var i=0;i<arr.length;i++){
    let op = document.createElement("option");
    op.value = arr[i].cd;
    op.text = arr[i].label;
    document.getElementById("selBach").appendChild(op);
  }
}

//都府県が選択された時に呼び出される処理
function selBach(obj){
  var targetArr;
  if(obj.value == "1"){
    targetArr = arrLaw;
  }else if(obj.value == "2"){
    targetArr = arrCom;
  }else if(obj.value == "3"){
    targetArr = arrPol;
  }else if(obj.value == "4"){
    targetArr = arrBus;
  }else if(obj.value == "5"){
    targetArr = arrArt;
  }else if(obj.value == "6"){
    targetArr = arrInfo;
  }else if(obj.value == "7"){
    targetArr = arrInter;
  }else if(obj.value == "8"){
    targetArr = arrSci;
  }else if(obj.value == "9"){
    targetArr = arrFarm;
  }else if(obj.value == "10"){
    targetArr = arrMath;    
  }else{
    targetArr = new Array();
  }
  var selObj = document.getElementById('selMaj');
  while(selObj.lastChild){
    selObj.removeChild(selObj.lastChild);
  }
  for(var i=0;i<targetArr.length;i++){
    let op = document.createElement("option");
    op.value = targetArr[i].cd;
    op.text = targetArr[i].label;
    selObj.appendChild(op);
  }
}
