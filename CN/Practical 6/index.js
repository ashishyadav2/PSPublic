let codeWord = [];
let inputData = [1,0,1,0];
const inputDataPos = [3,5,6,7];
const p1Pos = [3,5,7];
const p2Pos = [3,6,7];
const p4Pos = [5,6,7];
const p1PosErr = [1,3,5,7];
const p2PosErr = [2,3,6,7];
const p4PosErr = [4,5,6,7];
let indexErr = "";

function putData() {
    var j=inputData.length-1;
    for(let i=0;i<inputData.length;i++)
        codeWord[inputDataPos[i]-1] = inputData[j--];
}

function calcParity(posArr,putIndex,mode) {
    var count = 0;
    for(let i=0;i<posArr.length;i++) 
        if(codeWord[posArr[i]-1]==1) count++;

    if(mode=="detect") {
        if(count%2==0) codeWord[putIndex-1] = 0;
        else codeWord[putIndex-1] = 1;
    }
    else {
        if(count%2==0) indexErr+="0";
        else indexErr+="1";
    }
}

function invertBit(index) {
    if(codeWord[index-1]==0) codeWord[index-1]=1;
    else codeWord[index-1]=0;
}

let index = 7;
putData();
calcParity(p1Pos,1,"detect");
calcParity(p2Pos,2,"detect");
calcParity(p4Pos,4,"detect");
console.log(`Code word after parity bits: ${codeWord}`);
invertBit(index);
console.log(`Code word after corrupting bit ${index}: ${codeWord}`);
calcParity(p1PosErr,null,"correct");
calcParity(p2PosErr,null,"correct");
calcParity(p4PosErr,null,"correct");
invertBit(parseInt(indexErr,2));
console.log(`Code word after correcting bit ${index}: ${codeWord}`);