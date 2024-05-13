<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('public/backend/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/backend/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('public/backend/css/responsive.css') }}">
    @stack('style')
    <style>
        @page {
            margin: 0px;
            padding: 0px;
            /* margin: 1.5cm; */
            /* size: A4; */
        }

        * {
            font-family: DejaVu Sans !important;
        }

        body {
            direction: rtl;
            margin: 0px;
            padding: 12px;
            /* background-color: #f2e7d1; */
        }

        .bg-secondary {
            background-color: rgb(172, 172, 172) !important;
            ;
        }

        .hr-spaced {
            height: 2px;
            background-color: black;
            border: none;
            width: 100%;

        }

        th,
        td {
            font-size: 10px !important
        }

        .custom {

            position: relative;

        }

        .text-dark,
        .custom {
            font-weight: 700
        }

        .custom::after {
            content: '';
            position: absolute;
            top: 20px;
            left: 20px;
            background-color: rgb(0, 0, 0);
            width: 1px !important;
            height: 2.5%;
        }

        .span {
            font-weight: 200
        }
    </style>
</head>

<body>


    <div class="image-logo" style="width: 10% ; margin: auto">
        <img src="{{ $logo2 }}" style="width: 100px " alt="" srcset="">


    </div>






    <table class="table-auto m-auto">
        <thead class="w-80 h-10">
            <tr class="bg-secondary text-dark">
                <th>SIMPLIFIED TAX</th>
                <th></th>
                <th></th>
                <th></th>
                <th class="text-right text-dark">فاتوره ضريبه مبسطه</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="text-start">(Guest Name)</td>
                <td class="text-start">{{ $guestName }}</td>
                <td class="text-start text-dark">Company VAT :</td>
                <td class="text-start"> {{ $numberVat }} </td>
                <td class="text-right text-dark custom">&nbsp; <span
                        class="span text-black-50">{{ $numberVat }}&nbsp;</span>:ضريبةالقيمةالمضافة </td>
            </tr>
            <tr>
                <td class="text-start">Phone:</td>
                <td class="text-start">{{ $phone }}</td>
                <td class="text-start text-dark">Conf. No:</td>
                <td class="text-start"> {{ $booking_id }} </td>

                <td class="text-right text-dark custom"><span class="span text-black-50">{{ $booking_id }} &nbsp;
                        &nbsp;</span>
                    : &nbsp; &nbsp; &nbsp; رقم الحجز</td>
            </tr>
            <tr>
                <td class="text-start">{{ $city }}</td>
                <td class="text-start"></td>
                <td class="text-start text-dark">Room No:</td>
                <td class="text-start"> </td>

                <td class="text-right text-dark custom">: رقم الغرفة</td>
            </tr>
            <tr>
                <td class="text-start"></td>
                <td class="text-start"></td>
                <td class="text-start text-dark">Arrival Date:</td>
                <td class="text-start"> {{ $DteOfArrival }} </td>

                <td class="text-right text-dark custom"><span class="span text-black-50">{{ $DteOfArrival }} &nbsp;
                        &nbsp;</span>: تاريخ الوصول</td>
            </tr>
            <tr>
                <td class="text-start"></td>
                <td class="text-start"></td>
                <td class="text-start text-dark">Departure Date:</td>
                <td class="text-start"> {{ $DteOfOut }} </td>

                <td class="text-right text-dark custom"><span class="span text-black-50">{{ $DteOfOut }} &nbsp;
                        &nbsp;</span>: تاريخ المغادرة</td>
            </tr>
            <tr>
                <td class="text-start">INFORMATION INVOICE:</td>
                <td class="text-start"></td>
                <td class="text-start text-dark">Page No:</td>
                <td class="text-start"> </td>

                <td class="text-right text-dark custom">:رقم الصفحة</td>
            </tr>
            <tr>
                <td class="text-start">Membership No:</td>
                <td class="text-start"></td>
                <td class="text-start text-dark">Date:</td>
                <td class="text-start"> {{ $dateBooking }} </td>

                <td class="text-right text-dark custom"><span class="span text-black-50">{{ $dateBooking }} &nbsp;
                        &nbsp;</span>: التاريخ</td>
            </tr>
            <tr>
                <td class="text-start">A/R Number :</td>
                <td class="text-start"></td>
                <td class="text-start text-dark">Cashier No: </td>
                <td class="text-start"> </td>

                <td class="text-right text-dark  custom">: رقم الموظف</td>
            </tr>
            <tr>
                <td class="text-start">Company Name :</td>
                <td class="text-start"></td>
                <td class="text-start text-dark">Invoice No:</td>
                <td class="text-start"> {{ $bookingNumber }} </td>

                <td class="text-right text-dark custom"><span class="span text-black-50">{{ $bookingNumber }} &nbsp;
                        &nbsp;</span>: رقم الفاتورة</td>
            </tr>
            <tr>
                <td class="text-start">Customer VAT :</td>
                <td class="text-start"></td>
                <td class="text-start text-dark">Folio No:</td>
                <td class="text-start"> </td>
                <td class="text-right text-dark custom">: رقم الفوليو</td>
            </tr>
        </tbody>
    </table>


    <div class="d-block">
        <table class="table-auto m-auto">
            <thead>
                <tr class="bg-secondary text-dark">
                    <th class="text-center">
                        Date <br />
                        التاريخ
                    </th>
                    <th class="text-center">Description <br />التفاصيل</th>
                    <th class=""></th>
                    <th class="text-center">Charges <br />مدين</th>
                    <th class="text-center">Credits <br />دائن</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="text-start">{{ $dateBooking }}</td>
                    <td class="text-start">{{ $methodName }}</td>
                    <td class="text-center"> {{ __($methodName) }}</td>
                    <td class="text-center"></td>
                    <td class="text-center">00000</td>
                </tr>
                @foreach ($dateList as $day)
                    <tr>
                        <td class="text-start">{{ $day }}</td>
                        <td class="text-start">ROOM CHARGE</td>
                        <td class="text-center">رسوم الغرفة</td>
                        <td class="text-center">{{ $roomPrice }}</td>
                        <td class="text-center"></td>
                    </tr>
                @endforeach
                @php
                    use Carbon\Carbon;
                @endphp
                @foreach ($invoiceDataComplements as $data)
                    <tr>
                        <td class="text-start">{{ Carbon::parse($data->created_at)->format('Y-m-d') }}</td>
                        <td class="text-start">{{ $data->complements[0]->getTranslations('name')['en'] }}</td>
                        <td class="text-center">{{ $data->complements[0]->getTranslations('name')['ar'] }} </td>
                        <td class="text-center">{{ $data->price }}</td>
                        <td class="text-center"></td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <hr class="hr-spaced" />
    <div class="container">
        <div class="row">
            <div class="col-10">
                <table class="float-right" style="width: 55% !important">
                    <thead>
                        <tr>
                            <th class="text-start text-dark">Total المجموع</th>
                            <th class="text-start"></th>
                            <th class="">{{ $totalAmountWithComplement }}</th>
                            <th class="text-right">0000</th>
                        </tr>
                    </thead>
                    <tbody>
                        <hr class="hr-spaced" />
                        <tr>
                            <td class="text-start text-dark">Balance</td>
                            <td class="text-start">SAR</td>
                            <td class="text-center">{{ $totalAmount }}</td>
                            <td class="text-right text-dark">الرصيد</td>
                        </tr>
                        <tr>
                            <td class="text-start text-dark">Net Amount</td>
                            <td class="text-start">SAR</td>
                            <td class="text-center">{{ $sub_total }}</td>
                            <td class="text-right text-dark">صافي القيمة</td>
                        </tr>
                        <tr>
                            <td class="text-start text-dark">Net Additions </td>
                            <td class="text-start">SAR</td>
                            <td class="text-center">{{ $totalComplementPric }}</td>
                            <td class="text-right text-dark">صافي الأضافات</td>
                        </tr>
                        <tr>
                            <td class="text-start text-dark">Municipality Fees{{ MunicipalityFees() }}%</td>
                            <td class="text-start">SAR</td>
                            <td class="text-center">{{ $municipalityFees }}</td>
                            <td class="text-right text-dark">&nbsp;<span
                                    dir="ltr"></span>{{ MunicipalityFees() }}&nbsp;%ضريبةالبلدية
                            </td>
                        </tr>
                        <tr>
                            <td class="text-start text-dark">VAT&nbsp; <span
                                    dir="ltr"></span>{{ $taxPersentage }}&nbsp;% </td>
                            <td class="text-start">SAR</td>
                            <td class="text-center">{{ $taxFormate }}</td>
                            <td class="text-right text-dark">&nbsp;<span
                                    dir="ltr"></span>{{ $taxPersentage }}&nbsp;%ضريبةالقيمةالمضافة
                            </td>
                        </tr>
                        <tr>
                            <td class="text-start text-dark">Discount</td>
                            <td class="text-start">SAR</td>
                            <td class="text-center">{{ $totalDiscount }}</td>
                            <td class="text-right text-dark">الخصم</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-4 float-left"style="width: 40% !important">
                <img src="{{ $qrcodeLogo }}" style="width: 150px ; " alt="" srcset="">

            </div>
            <div class="mt-5 text-center">
                <small class="text-dark" style="font-size: 10px ;">أقر بالمسؤولية في حاله عدم قيام الشخص المشار اليه او
                     <br>____________________________________ الشركه او الجمعيه بدفع كامل التكاليف او جزء منها </small>
            </div>
        </div>
    </div>

    <hr class="hr-spaced" />

    <div class=" w-full d-block">
        <div class="container">
            <p class="text-center mt-1 text-dark" style="font-size: 12px">MIRA BUSINESS HOTEL,RIYADH</p>

            <div class="d=flex justify-content-between">
<div>
    <p class="text-center">PO.Box.12242,Olaya street,Riyadh ,Kingdom of Saudi Arabia</p>
</div>
                <div>
                    <p>Guest Signature / <span> توقيع الضيف </span></p>
                </div>
            </div>
        </div>

    </div>

    <script src="{{ asset('public/backend/js/popper.min.js') }}"></script>
    <script src="{{ asset('public/backend/js/bootstrap.min.js') }}"></script>
    @stack('scripts')
</body>

</html>
