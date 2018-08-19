<?php
require_once "../loader.php";

//data for templating
$data_array = Array(
    "schedules" => $db->execute('select * from '.$config->config['table'].' order by gameID DESC'),
    "divisions" => $db->execute('select * from nflp_divisions'),
    "teams" => $db->execute('
        select * from nflp_teams 
            left join nflp_divisions on nflp_teams.divisionID = nflp_divisions.divisionID 
            ORDER BY division'
    ),
    "test" => "hello world"
);

echo $twig->render('index.html', $data_array);
