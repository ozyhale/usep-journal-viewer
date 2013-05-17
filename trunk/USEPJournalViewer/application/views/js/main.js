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
