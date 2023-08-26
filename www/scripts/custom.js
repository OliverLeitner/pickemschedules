"use strict";

function logHelper(data = undefined) {
    !data ? null : console.log(data);
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
    changeValue(home,data.fields['homeID']);
    changeValue(visitor,data.fields['visitorID']);
}

function changeValue(field,val) {
    field.setValue(val);
}

function checkRequiredFields() {
    if (
        document.getElementsByName('weekNum')[0].value > 0 &&
        document.getElementsByName('gameTimeEastern')[0].value !== '' &&
        document.getElementsByName('homeID')[0].value !== '' &&
        document.getElementsByName('visitorID')[0].value !== ''
    ) document.getElementsByName('save')[0].disabled = false;
    else
        document.getElementsByName('save')[0].disabled = true;
}

function loadCal(id) {
        return new tempusDominus.TempusDominus(document.getElementById(id),
             { display: {
                     icons: {
                         type: 'icons',
                         time: 'fa fa-clock-o',
                         date: 'fa fa-calendar',
                         up: 'fa fa-arrow-up',
                         down: 'fa fa-arrow-down',
                         previous: 'fa fa-chevron-left',
                         next: 'fa fa-chevron-right',
                         today: 'fa fa-calendar-check',
                         clear: 'fa fa-trash',
                         close: 'fa fa-xmark'
                     },
                     sideBySide: true,
                     components: {
                         calendar: true,
                         date: true,
                         month: true,
                         year: true,
                         decades: false,
                         clock: true,
                         hours: true,
                         minutes: true,
                         seconds: false,
                     },
                 },
                 localization: {
                     dateFormats: {
                         L: 'yyyy-MM-dd H:mm'
                     },
                     format: 'L'
                 },
                 restrictions: {
                     minDate: new Date(),
                     maxDate: new Date(new Date().getFullYear() + 1, new Date().getMonth(), new Date().getDate())
                 }
             });
}
