function showinfo() {
    document.getElementById("accountinfo").style.display = "block";
    document.getElementById("yourorder").style.display = "none";
    document.getElementById("Offers").style.display = "none";
    document.getElementById("Basket").style.display = "none";
    document.getElementById("About").style.display = "none";
    document.getElementById("edit").style.display = "none";

}
function showorder() {
    document.getElementById("yourorder").style.display = "block";
    document.getElementById("accountinfo").style.display = "none";
    document.getElementById("Offers").style.display = "none";
    document.getElementById("Basket").style.display = "none";
    document.getElementById("About").style.display = "none";
    document.getElementById("edit").style.display = "none";

}
function showoffers() {
    document.getElementById("Offers").style.display = "block";
    document.getElementById("accountinfo").style.display = "none";
    document.getElementById("yourorder").style.display = "none";
    document.getElementById("Basket").style.display = "none";
    document.getElementById("About").style.display = "none";
    document.getElementById("edit").style.display = "none";

}
function showbasket() {
    document.getElementById("Basket").style.display = "block";
    document.getElementById("Offers").style.display = "none";
    document.getElementById("accountinfo").style.display = "none";
    document.getElementById("yourorder").style.display = "none";
    document.getElementById("About").style.display = "none";
    document.getElementById("edit").style.display = "none";

}
function showabout() {
    document.getElementById("About").style.display = "block";
    document.getElementById("Offers").style.display = "none";
    document.getElementById("accountinfo").style.display = "none";
    document.getElementById("yourorder").style.display = "none";
    document.getElementById("Basket").style.display = "none";
    document.getElementById("edit").style.display = "none";

}

function changeinfo() {
    document.getElementById("About").style.display = "none";
    document.getElementById("Offers").style.display = "none";
    document.getElementById("accountinfo").style.display = "none";
    document.getElementById("yourorder").style.display = "none";
    document.getElementById("Basket").style.display = "none";
    document.getElementById("edit").style.display = "block";
}
//function changeemail() {
//    document.getElementById("accountinfo").style.display = "none";
//    document.getElementById("changebox").style.display = "block";
//}
//function changephone() {
//    document.getElementById("accountinfo").style.display = "none";
//    document.getElementById("changebox").style.display = "block";
//}
//function changecity() {
//    document.getElementById("accountinfo").style.display = "none";
//    document.getElementById("changebox").style.display = "block";
//}