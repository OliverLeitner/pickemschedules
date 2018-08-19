function fetchMe(formdata) {
    fetch('/db.php?'+formdata)
        .then(function(response) {
            return response.json();
        })
        .then(function(myJson) {
            //console.log(myJson);
            window.location.reload(true);
        });
}
