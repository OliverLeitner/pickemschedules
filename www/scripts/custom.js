function fetchMe(formdata) {
    fetch('/db.php?'+formdata)
        .then(function(response) {
            return response.json();
        })
        .then(function(myJson) {
            window.location.reload(true);
        });
}

function command(cmd, id) {
    if (id) cmd += '&id=' + id;
    fetch('/command.php?cmd=' + cmd)
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            if (data.status === 'edit') fillDataToForm(data);
            else window.location.reload(true);
        });
}

function fillDataToForm(data) {
    document.getElementsByName('gameID')[0].value = data.fields['gameID'];
    document.getElementsByName('weekNum')[0].value = data.fields['weekNum'];
    document.getElementsByName('gameTimeEastern')[0].value = data.fields['gameTimeEastern'];
    document.getElementsByName('homeID')[0].value = data.fields['homeID'];
    document.getElementsByName('visitorID')[0].value = data.fields['visitorID'];
}