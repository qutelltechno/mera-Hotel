<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UrWayController extends Controller
{
    public function index()
    {
       // $client = new User();

        $idorder = 'PHP_' . rand(1, 1000);//Customer Order ID


        $terminalId = "mira-business";// Will be provided by URWAY
        $password = "urway@123";// Will be provided by URWAY
        $merchant_key = "5bb7867cac5817e0eb89f66471eec17e0c0baa155cef8394d491155b3488b5fa";// Will be provided by URWAY
        $currencycode = "SAR";
        $amount = "1.00";

        $ipp =$this-> get_server_ip();
        //Generate Hash
        $txn_details = $idorder . '|' . $terminalId . '|' . $password . '|' . $merchant_key . '|' . $amount . '|' . $currencycode;
        $hash = hash('sha256', $txn_details);

        $fields = array(
            'trackid' => $idorder,
            'terminalId' => $terminalId,
            'customerEmail' => 'customer@email.com',
            'action' => "1",  // action is always 1
            'merchantIp' => $ipp,
            'password' => $password,
            'currency' => $currencycode,
            'country' => "SA",
            'amount' => $amount,
            // "udf1" => "Test1",
            // "udf2" => "https://urway.sa/urshop/scripts/response.php",//Response page URL
            // "udf3" => "",
            // "udf4" => "",
            // "udf5" => "Test5",
            'requestHash' => $hash  //generated Hash
        );
        $data = json_encode($fields);
        $ch = curl_init('https://payments-dev.urway-tech.com/URWAYPGService/transaction/jsonProcess/JSONrequest'); // Will be provided by URWAY


        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt(
            $ch,
            CURLOPT_HTTPHEADER,
            array(
                'Content-Type: application/json',
                'Content-Length: ' . strlen($data)
            )
        );
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        //execute post
        $result = curl_exec($ch);
        //close connection
        curl_close($ch);



$urldecode=(json_decode($result,true));
//dd($urldecode);

if($urldecode['payid'] != NULL)
{
$url=$urldecode['targetUrl']."?paymentid=".$urldecode['payid'];

dd($url);
// echo '
// <html>
// <form name="myform" method="POST" action="'.$url.'">
// <h1> Transaction is processing........</h1>
// </form>
// <script type="text/javascript">document.myform.submit();
// </script>
// </html>';
}

else{
echo "<b>Something went wrong!!!!</b>";
 }


    }

    public function get_server_ip()
    {
        $ipaddress = '';
        if (getenv('HTTP_CLIENT_IP'))
            $ipaddress = getenv('HTTP_CLIENT_IP');
        else if (getenv('HTTP_X_FORWARDED_FOR'))
            $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
        else if (getenv('HTTP_X_FORWARDED'))
            $ipaddress = getenv('HTTP_X_FORWARDED');
        else if (getenv('HTTP_FORWARDED_FOR'))
            $ipaddress = getenv('HTTP_FORWARDED_FOR');
        else if (getenv('HTTP_FORWARDED'))
            $ipaddress = getenv('HTTP_FORWARDED');
        else if (getenv('REMOTE_ADDR'))
            $ipaddress = getenv('REMOTE_ADDR');
        else
            $ipaddress = 'UNKNOWN';
        return $ipaddress;
    }
}
