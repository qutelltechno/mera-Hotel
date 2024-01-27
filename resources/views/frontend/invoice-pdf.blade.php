 {{-- $item_list = '<tr>
				<td class="w-30" align="left">'.$transTitle[glan()].'</td>
				<td class="w-10" align="center">'.$mdata['total_room'].'</td>
				<td class="w-15" align="center"><p>'.$total_price.'</p>'.$old_price.'</td>
				<td class="w-20" align="center"><p>'.date('d-m-Y', strtotime($mdata['in_date'])).'</p><p>to</p><p>'.date('d-m-Y', strtotime($mdata['out_date'])).'</p></td>
				<td class="w-10" align="center">'.$total_days.'</td>
				<td class="w-15" align="right"><p>'.$subtotal.'</p>'.$cal_old_price.'</td>
			</tr>';





##########################
	$html ='<style>
		.w-100 {width: 100%;}
		.w-75 {width: 75%;}
		.w-60 {width: 60%;}
		.w-50 {width: 50%;}
		.w-40 {width: 40%;}
		.w-35 {width: 35%;}
		.w-30 {width: 30%;}
		.w-25 {width: 25%;}
		.w-20 {width: 20%;}
		.w-15 {width: 15%;}
		.w-10 {width: 10%;}

		table td, table th {
			color: #686868;
			text-decoration: none;
		}
		a {
			color: #686868;
			text-decoration: none;
		}
		table.border td, table.border th {
			border: 1px solid #f0f0f0;
		}
		table.border-tb td, table.border-tb th {
			border-top: 1px solid #f0f0f0;
			border-bottom: 1px solid #f0f0f0;
		}
		table.border-header td {
			border-bottom: 1px solid #f0f0f0;
		}
		table.border-t td, table.border-t th {
			border-top: 1px solid #f0f0f0;
		}
		table.border-none td, table.border-none th {
			border: none;
		}
		.company-logo img{
			width: 100px;
			height: auto;
		}
		td.invoice-name {
			font-size: 25px;
			font-weight: 600;
			text-align: right;
		}
		p.com-address {
			line-height: 5px;
		}
		h3, h4 {
			line-height: 10px;
		}
		p {
			line-height: 5px;
		}
		h3 {
			font-size: 16px;
		}
		h4 {
			font-size: 12px;
			margin-bottom: 0px;
			font-weight: 400;
		}
		p.color_size {
			font-size: 8px;
		}
		.pstatus_1 {
			font-weight: bold;
			color: #26c56d;
		}
		.pstatus_2 {
			font-weight: bold;
			color: #fe9e42;
		}
		.pstatus_3 {
			font-weight: bold;
			color: #f25961;
		}
		.pstatus_4 {
			font-weight: bold;
			color: #f25961;
		}
		.ostatus_1{
			font-weight: bold;
			color: #fe9e42;
		}
		.ostatus_2 {
			font-weight: bold;
			color: #26c56d;
		}
		.ostatus_3 {
			font-weight: bold;
			color: #919395;
		}
		.ostatus_4 {
			font-weight: bold;
			color: #f25961;
		}
		.old-price {
			text-decoration: line-through;
			color: #ee0101;
		}
		</style>

		<!--html table-->
		<table class="border-header" width="100%" cellpadding="10" cellspacing="0">
			<tr>
				<td class="w-40"><span class="company-logo"><img src="'.$logo.'"/></span></td>
				<td class="w-60 invoice-name">'.__('Invoice').'</td>
			</tr>
		</table>
		<table class="border-none" width="100%" cellpadding="1" cellspacing="0">
			<tr><td class="w-100" align="center"></td></tr>
		</table>
		<table class="border-none" width="100%" cellpadding="2" cellspacing="0">
			<tr>
				<td class="w-50" align="left">
					<h3>'.__('BILL TO').':</h3>
					<p><strong>'.$mdata['customer_name'].'</strong></p>
					<p>'.$mdata['customer_address'].'</p>
					<p>'.$mdata['city'].', '.$mdata['state'].', '.$mdata['zip_code'].', '.$mdata['country'].'</p>
					<p>'.$mdata['customer_email'].'</p>
					<p>'.$mdata['customer_phone'].'</p>
				</td>
				<td class="w-50" align="right">
					<p><strong>'.__('Booking No').'</strong>: '.$mdata['booking_no'].'</p>
					<p><strong>'.__('Booking Date').'</strong>: '.date('d-m-Y', strtotime($mdata['created_at'])).'</p>
					<p><strong>'.__('Payment Method').'</strong>: '.$mdata['method_name'].'</p>
					<p><strong>'.__('Payment Status').'</strong>: <span class="pstatus_'.$mdata['payment_status_id'].'">'.$mdata['pstatus_name'].'</span></p>
					<p><strong>'.__('Order Status').'</strong>: <span class="ostatus_'.$mdata['booking_status_id'].'">'.$mdata['bstatus_name'].'</span></p>
				</td>
			</tr>
		</table>
		<table class="border-none" width="100%" cellpadding="5" cellspacing="0">
			<tr><td class="w-100" align="center"></td></tr>
		</table>
		<table class="border-none" width="100%" cellpadding="6" cellspacing="0">
			<tr>
				<td class="w-100" align="left">
					<h3>'.__('BILL FROM').':</h3>
					<p><strong>'.$gtext['company'].'</strong></p>
					<p>'.$gtext['invoice_address'].'</p>
					<p>'.$gtext['invoice_email'].'</p>
					<p>'.$gtext['invoice_phone'].'</p>
				</td>
			</tr>
		</table>
		<table class="border-none" width="100%" cellpadding="10" cellspacing="0">
			<tr><td class="w-100" align="center"></td></tr>
		</table>

		<table class="border-none" width="100%" cellpadding="6" cellspacing="0">
			<tr>
				<td class="w-30" align="left">
					<strong>'.__('Room Type').'</strong>
				</td>
				<td class="w-10" align="center">
					<strong>'.__('Total Room').'</strong>
				</td>
				<td class="w-15" align="center">
					<strong>'.__('Price').'</strong>
				</td>
				<td class="w-20" align="center">
					<strong>'.__('In / Out Date').'</strong>
				</td>
				<td class="w-10" align="center">
					<strong>'.__('Total Days').'</strong>
				</td>
				<td class="w-15" align="right">
					<strong>'.__('Total').'</strong>
				</td>
			</tr>
		</table>

		<table class="border-tb" width="100%" cellpadding="6" cellspacing="0">
			'.$item_list.'
		</table>
		<table class="border-none" width="100%" cellpadding="2" cellspacing="0">
			<tr><td class="w-100" align="center"></td></tr>
		</table>
		<table class="border-none" width="100%" cellpadding="6" cellspacing="0">
			<tr>
				<td class="w-50" align="left"><strong>'.$assign_rooms.'</strong></td>
				<td class="w-30" align="right"><strong>'.__('Subtotal').'</strong>: </td>
				<td class="w-20" align="right"><strong>'.$subtotal.'</strong></td>
			</tr>
			<tr>
				<td class="w-50" align="left"></td>
				<td class="w-30" align="right"><strong>'.__('Tax').'</strong>: </td>
				<td class="w-20" align="right"><strong>'.$tax.'</strong></td>
			</tr>
			<tr>
				<td class="w-50" align="left"></td>
				<td class="w-30" align="right"><strong>'.__('Discount').'</strong>: </td>
				<td class="w-20" align="right"><strong>'.$discount.'</strong></td>
			</tr>
			<tr>
				<td class="w-50" align="left"></td>
				<td class="w-30" align="right"><strong>'.__('Grand Total').'</strong>: </td>
				<td class="w-20" align="right"><strong>'.$total_amount.'</strong></td>
			</tr>
		</table>
		<table class="border-none" width="100%" cellpadding="70" cellspacing="0">
			<tr><td class="w-100" align="center"></td></tr>
		</table>
		<table class="border-t" width="100%" cellpadding="10" cellspacing="0">
			<tr>
				<td class="w-100" align="center">
					<p>'.__('Thank you for booking our rooms.').'</p>
					<p>'.__('If you have any questions about this invoice, please contact us').'</p>
					<p><a href="'.$base_url.'">'.$base_url.'</a></p>
				</td>
			</tr>
		</table>'; --}}

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
 <body style="direction: {{ $dir }}">
<div class="container">


    <div class="row">
        <div class="col-md-4">
            <span class="company-logo"><img src="{{ $logo }}" /></span>
        </div>
    <div class="col-md-8">
</div>





 </body>

 </html>




