/**
 * Created by MAYOWA on 18-Jun-17.
 */
$(document).ready(function () {
    $(".add").click(function () {
        var count = parseInt($("#count").text());
        count += 1;
        $("#count").text(count);
        var price = count * 10;
        // var order = $(".add").siblings('#burger-name').text();
        $("#order").prop('value', "Some Burgers");
        $("#totalprice").prop('value', price);
        alert("Item has been added to cart");
    });
});
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].onclick = function(){
        /* Toggle between adding and removing the "active" class,
         to highlight the button that controls the panel */
        this.classList.toggle("active");

        /* Toggle between hiding and showing the active panel */
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    }
}
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].onclick = function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.maxHeight){
            panel.style.maxHeight = null;
        } else {
            panel.style.maxHeight = panel.scrollHeight + "px";
        }
    }
}