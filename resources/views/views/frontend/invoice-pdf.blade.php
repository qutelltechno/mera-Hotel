
 <!DOCTYPE html>

 <html lang="en">

 <head>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <style>

* {
             font-family: DejaVu Sans !important;
         }

         body {
             font-size: 16px;
             font-family: 'DejaVu Sans', 'Roboto', 'Montserrat', 'Open Sans', sans-serif;
             padding: 12px;
             margin: 0px;

             color: #777;
         }
  @page {
             size: a4;
             margin: 0;
             padding: 0;
         }

         span {
            font-size: 20px;
            font-weight: 300;
        }

        h3 {
            margin: 0;
        }

        h4 {
            margin: 0;
        }

        .table-price {
            width: 100%;
            text-align: center;
        }

        .table-price,
        .table-price td,
        .table-price th {
            border: 1px solid;
            border-collapse: collapse;
        }

        .table-price th {
            font-weight: 700;
        }

        .table-container {
            padding-top: 20px;
        }


        .nav-page {
            display: flex !important;
            justify-content: space-between !important;
            border-bottom: 1px solid #77777769;
            padding-bottom: 30px;
        }

        .nav-page img {
            width: 140px;
        }

        .title-container {
            display: flex;
            justify-content: space-between;
            align-items: start;
        }

        .send-container {
            display: flex;
            flex-direction: column;
            gap: 10px;
            padding-bottom: 20px;
        }

        .checkout-container {
            display: flex;
            justify-content: space-between;
            align-items: start;
        }

        .discount-sty {
            color: red;
            text-decoration: line-through;

        }

        .nav-table{
            width: 100%
            border: 1px solid;
        }

        .nav-table img{
            width: 150px;
        }




 </style>
 </head>
 @php
 $lang = glan();
 if ($lang === 'ar') {
     $dir = 'rtl';
 } else {
     $dir = 'ltr';
 }

@endphp
 <body style="direction: rtl">
<!-- <div class="container">


    <div class="row">
        <div class="col-md-4">
            <span class="company-logo"><img src="{{ $logo }}" /></span>
        </div>
    <div class="col-md-8">
</div> -->

        <table class='nav-table'>
            <tr>
                <td>
                    <img src="{{ $logo }}" alt="" >
                </td>
                <td>
                    <h1>invoice</h1>
                </td>
            </tr>
        </table>
        <table>
            <tr>
            <div>
                <h2>BILL TO:</h2>
                <h3>rana</h3>
                <h4>56 King Street, New York</h4>
                <h4>India ,111 ,single ,السعودية</h4>
                <h4>admin@email.com</h4>
                <h4>0123456789</h4>
            </div>
            </tr>
            <tr>
            <div>
                <h2>Booking No: <span>M6F080837DCA</span></h2>
                <h2>Booking Date: <span>23-01-2024</span></h2>
                <h2>Payment Method: <span>Bank Transfer</span></h2>
                <h2>Payment Status: <span>Completed</span></h2>
                <h2>Order Status: <span>Checked Out</span></h2>
            </div>

            </tr>
        </table>
            <div class="send-container">
            <h2>BILL FROM:</h2>
            <h3>mira hotel</h3>
            <h3>Saudi Arabia, Oliya, Riyadh.</h3>
            <h3>admin@email.com</h3>
            <h3>+966 (0) 11 532 0151</h3>
        </div>
        <hr />
            <table class='table-price'>
                <tr>
                    <th>Room Type</th>
                    <th>Total Room</th>
                    <th>Price</th>
                    <th>In / Out Date </th>
                    <th>Total Day</th>
                    <th>Total</th>
                </tr>
                <tr>
                    <td>jonior suite</td>
                    <td>1</td>
                    <td>
                        500.00 SAR
                        <div class="discount-sty">100.00 SAR</div>
                    </td>
                    <td>
                        23-01-2024
                        <div>to</div>
                        <div>100.00 SAR</div>
                    </td>
                    <td>1</td>
                    <td>
                        500.00 SAR
                        <div class="discount-sty">100.00 SAR</div>
                    </td>
                </tr>
            </table>
        <div class="checkout-container">
            <h2>Your assign room no: 101</h2>
            <div>
                <h2>Subtotal: <span>1,500.00 SAR</span></h2>
                <h2>Tax: <span>225.00 SAR</span></h2>
                <h2>Discount: <span>225.00 SAR</span></h2>
                <h2>Grand Total: <span>225.00 SAR</span></h2>
            </div>
        </div>


 </body>

 </html>
