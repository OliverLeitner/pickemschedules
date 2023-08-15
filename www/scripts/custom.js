"use strict";

function logHelper() {
    console.log("weekNum: " + document.getElementsByName('weekNum')[0].value);
    console.log("gameTimeEastern: " + document.getElementsByName('gameTimeEastern')[0].value);
    console.log("homeID: " + document.getElementsByName('homeID')[0].value);
    console.log("visitorID: " + document.getElementsByName('visitorID')[0].value);

    console.log("save button: " + document.getElementsByName('save')[0].disabled);
}

function serialize(formdata) {
    const data = new FormData(formdata);
    const queryString = new URLSearchParams(data).toString();
    return queryString;
}

function fetchMe(formdata) {
    fetch('/db.php?'+serialize(formdata))
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

function checkRequiredFields() {
    // logHelper(); // debug function
    if (
        document.getElementsByName('weekNum')[0].value > 0 &&
        document.getElementsByName('gameTimeEastern')[0].value !== '' &&
        document.getElementsByName('homeID')[0].value !== '' &&
        document.getElementsByName('visitorID')[0].value !== ''
    ) document.getElementsByName('save')[0].disabled = false;
    else
        document.getElementsByName('save')[0].disabled = true;
}
