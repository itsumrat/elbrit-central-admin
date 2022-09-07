<?php

namespace App\Notifications;

use Ladumor\OneSignal\OneSignal;

class OneSignalNotification 
{

    public static function oneSignalData(...$data){


        // $fields['include_player_ids'] = ['3508dcb9-be1b-4e17-81b9-e121f828d198', 'ec42d403-744a-4900-bb8a-0382e375a911'];
        $fields['include_player_ids'] = $data[0];
        
        $condition = $data[2] == "new" ? " Has been created" : " Has been updated";

        $fields['headings'] =  array("en" => strip_tags( $data[1]));
        $fields['contents'] =  array("en" =>  $condition);
        // $fields['chrome_web_image'] =  "https://static.vecteezy.com/packs/media/vectors/term-bg-1-666de2d9.jpg";
        // $fields['large_icon'] =  "https://static.vecteezy.com/packs/media/vectors/term-bg-1-666de2d9.jpg";
        // $fields['url'] = 'https://moriumit.com';

        return OneSignal::sendPush($fields);


    // dd(OneSignal::getDevices());

    }
}

