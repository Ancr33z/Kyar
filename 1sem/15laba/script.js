otpravit.addEventListener("click", () => {
    event.preventDefault();
    let familiyavihod = document.getElementById("familiya").value;
    let imyavihod = document.getElementById("imya").value;
    let nomertovaravihod = document.getElementById("nomertovara").value;
    let adresvihod = document.getElementById("adres").value;
    footerBlock.innerHTML = `<div>
        <p><b>Фамилия:</b>: ${familiyavihod} </p>
        <p><b>Имя</b>: ${imyavihod}</p>
        <p><b>Номер товара</b>: ${nomertovaravihod}</p>
        <p><b>Адрес доставки:</b> ${adresvihod}</p>
    </div>`;
});
