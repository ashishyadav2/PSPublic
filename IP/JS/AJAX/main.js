var img = document.querySelector('img');
var title = document.querySelector('.title');
var des = document.querySelector('.des');
var getBtn = document.querySelector('.getBtn');

// getBtn.addEventListener("click",newXHRRequest);
getBtn.addEventListener("click",fetchRequest);

function newXHRRequest() {
    const xhr = new XMLHttpRequest();
    xhr.open('GET','https://fakerapi.it/api/v1/images?_quantity=1&_type=kittens&width=380',true);
    xhr.onload = function() {
        let object = JSON.parse(this.responseText);
        img.src = object.data[0].url;
        title.textContent = object.data[0].title;
        des.textContent = object.data[0].description;
    }
    xhr.send();
}
function fetchRequest() {
    fetch("https://fakerapi.it/api/v1/images?_quantity=1&_type=architecture&_height=450").then(response => response.json()).then(data => {
        img.src = data.data[0].url;
        title.textContent = data.data[0].title;
        des.textContent = data.data[0].description;
    }).catch(err => {
        console.log(err);
    });
}