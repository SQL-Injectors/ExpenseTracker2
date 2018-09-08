$(document).ready(function() {
    $("#date-range").on( "change", function(){
       var selection = $(this).val();

       if (selection === "lastthirty") {
            $("#custom-range").css("display", "none")
       }
       else if (selection === "customrange") {
           $("#custom-range").css("display", "inline-block")
       }
    });

    ("#submit").on("click")(function() {
        
    })



})