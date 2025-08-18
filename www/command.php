<?php
require_once "../loader.php";
header('Content-Type: application/json');

// function switch
switch ($_GET['cmd']) {
    case 'truncate':
        $array = truncateSchedules($db, $config);
        break;
    case 'delete':
        $array = deleteSchedule($_GET['id'], $db, $config);
        break;
    case 'edit':
        $array = editSchedule($_GET['id'], $db, $config);
        break;
    default:
        $array = array('status' => 'nothing given');
}

echo json_encode($array);

function editSchedule($id, $mydb, $myconfig) {
    $array['fields'] = $mydb->execute('select * from '.$myconfig->config['table'].' WHERE gameID = ' . $id)->fields;
    $array['status'] = 'edit';
    return $array;
}

function deleteSchedule($id, $mydb, $myconfig) {
    $mydb->execute('DELETE FROM '.$myconfig->config['table'].' WHERE gameID = ' . $id);
    return array('status' => 'delete');
}

function truncateSchedules($mydb, $myconfig) {
    $mydb->execute('TRUNCATE TABLE '.$myconfig->config['table']);
    return array('status' => 'truncate');
}