<?php
/**
 * database handler
 */
class DataBase {
    // adding tooltip data to resultset
    public function addInfoToArray($db, $schedule_table) {
        $teams = $db->cacheGetAssoc(
            "select * from nflp_teams
            left join nflp_divisions on nflp_teams.divisionID = nflp_divisions.divisionID
            ORDER BY division");
        $divisions = $db->execute('select * from nflp_divisions');
        $schedules = $db->getAll("select * from " . $schedule_table . " order by gameID desc");
        foreach ($schedules as $key => $schedule) {
            $schedules[$key]["home-tooltip"] = $teams[$schedule["homeID"]][3]." - ".$teams[$schedule["homeID"]][5];
            $schedules[$key]["visitor-tooltip"] = $teams[$schedule["visitorID"]][3]." - ".$teams[$schedule["visitorID"]][5];
        }
        return Array(
            "teams" => $teams,
            "divisions" => $divisions,
            "schedules" => $schedules
        );
    }
}
