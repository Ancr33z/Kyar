otpravit = document.querySelector("#otpravit");
otpravit.addEventListener("click", (event) => {
    event.preventDefault();
    let familiVavihod = document.getElementById("familiya").value;
    let imyaVihod = document.getElementById("imya").value;
    let nomerTovaraVihod = document.getElementById("nomertovara").value;
    let adresVihod = document.getElementById("adres").value;
    let footerBlock = document.querySelector("#footerBlock");
    footerBlock.innerHTML = `<div>
        <p><b>Фамилия</b>: ${familiVavihod} </p>
        <p><b>Имя</b>: ${imyaVihod}</p>
        <p><b>Номер товара</b>: ${nomerTovaraVihod}</p>
        <p><b>Дата доставки:</b> ${adresVihod}</p>
    </div>`;

    event.target.reset();

});

let addBorder = document.querySelector(".secondfoto");

addBorder.addEventListener('click', (event) => {
    event.preventDefault();
    addBorder.classList.add("border");

});

console.log(document.getElementsByClassName("container"));