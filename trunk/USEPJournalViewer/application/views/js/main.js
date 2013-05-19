var site_url = "http://localhost/USEPJournalViewer/index.php/";

function onclick_delete_users(id, lname, fname, minitial){
    bootbox.confirm("Are you sure you want to delete <strong>" +lname +", " +fname +" " +minitial +"."  +"</strong> ?", function(result) {
        if (result === true) {
            window.location.assign(site_url +"users/delete/" + id);
        }
    });
}

function onclick_delete_journals(id, bookname){
    bootbox.confirm("Are you sure you want to delete <strong>" +bookname +"</strong> ?", function(result) {
        if (result === true) {
            window.location.assign(site_url +"journals/delete/" + id);
        }
    });
}


function change_option_img(){
    var value   = document.getElementById("choose_option_img").value;
    var _img    = document.getElementById("_img");
        
    $(document).ready(function(){
        $("#_img").hide();

        if(value == "Re upload"){
            $("#_img").show(); 
        }else{
        }
    });
}
    
function change_option_pdf(){
    var value = document.getElementById("choose_option_pdf").value;
    var _pdf    = document.getElementById("_pdf").value;
        
    $(document).ready(function(){
        $("#_pdf").hide();

        if(value == "Re upload"){
            $("#_pdf").show(); 
        }else{
        }
    });
}