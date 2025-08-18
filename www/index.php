<?php
require_once "../loader.php";

//data for templating
$data_array = Array(
    "schedules" => $dbtools->addInfoToArray($db, $config->config['table'])["schedules"],
    "divisions" => $dbtools->addInfoToArray($db, $config->config['table'])["divisions"],
    // TODO: find out why getAll/getAssoc breaks stuff on teams
    // "teams" => $dbtools->addInfoToArray($db, $config->config['table'])["teams"]
    "teams" => $db->execute('
        select * from nflp_teams
            left join nflp_divisions on nflp_teams.divisionID = nflp_divisions.divisionID
            ORDER BY division'
    )
);

echo $twig->render('index.html', $data_array);
