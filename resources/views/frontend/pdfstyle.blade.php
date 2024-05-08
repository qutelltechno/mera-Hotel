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
    </style>
</head>

<body>

    <table class="table-auto m-auto">
        <thead class="w-80">
            <tr class="bg-secondary text-dark">
                <th>SIMPLIFIED TAX</th>
                <th></th>
                <th class="text-right">فاتوره ضريبه مبسطه</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="text-start">(Guest Name)</td>
                <td class="text-start">Company VAT :</td>
                <td class="text-right">:ضريبةالقيمةالمضافة</td>
            </tr>
            <tr>
                <td class="text-start">Saudi Arabia</td>
                <td class="text-start">Conf. No.</td>
                <td class="text-right">: رقم الحجز</td>
            </tr>
            <tr>
                <td class="text-start"></td>
                <td class="text-start">Room No.</td>
                <td class="text-right">: رقم الغرفة</td>
            </tr>
            <tr>
                <td class="text-start"></td>
                <td class="text-start">Arrival Date</td>
                <td class="text-right">: تاريخ الوصول</td>
            </tr>
            <tr>
                <td class="text-start"></td>
                <td class="text-start">Departure Date</td>
                <td class="text-right">: تاريخ المغادرة</td>
            </tr>
            <tr>
                <td class="text-start">INFORMATION INVOICE</td>
                <td class="text-start">Page No.</td>
                <td class="text-right">:رقم الصفحة</td>
            </tr>
            <tr>
                <td class="text-start">Membership No:</td>
                <td class="text-start">Date</td>
                <td class="text-right">: التاريخ</td>
            </tr>
            <tr>
                <td class="text-start">A/R Number :</td>
                <td class="text-start">Cashier No </td>
                <td class="text-right">: رقم الموظف</td>
            </tr>
            <tr>
                <td class="text-start">Company Name :</td>
                <td class="text-start">Invoice No.</td>
                <td class="text-right">: رقم الفاتورة</td>
            </tr>
            <tr>
                <td class="text-start">Customer VAT :</td>
                <td class="text-start">Folio No.</td>
                <td class="text-right">: رقم الفوليو</td>
            </tr>
        </tbody>
    </table>
    <table class="table-auto m-auto">
        <thead>
            <tr class="bg-secondary text-dark">
                <th class="text-start">
                    Date <br />
                    التاريخ
                </th>
                <th class="text-start">Description <br />التفاصيل</th>
                <th class=""></th>
                <th class="text-end">Charges <br />مدين</th>
                <th class="text-end">Credits <br />دائن</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="text-start">DD/MM/YY</td>
                <td class="text-start">Visa Credit Card</td>
                <td class="text-center">فيزا كارد</td>
                <td class="text-center"></td>
                <td class="text-center">00000</td>
            </tr>
            <tr>
                <td class="text-start">DD/MM/YY</td>
                <td class="text-start">ROOM CHARGE</td>
                <td class="text-center">رسوم الغرفة</td>
                <td class="text-center">00000</td>
                <td class="text-center"></td>
            </tr>
            <tr>
                <td class="text-start">DD/MM/YY</td>
                <td class="text-start">ROOM CHARGE</td>
                <td class="text-center">رسوم الغرفة</td>
                <td class="text-center">00000</td>
                <td class="text-center"></td>
            </tr>

            <tr>
                <td class="text-start">DD/MM/YY</td>
                <td class="text-start">ROOM CHARGE</td>
                <td class="text-center">رسوم الغرفة</td>
                <td class="text-center">00000</td>
                <td class="text-center"></td>
            </tr>
            <tr>
                <td class="text-start">DD/MM/YY</td>
                <td class="text-start">ROOM CHARGE</td>
                <td class="text-center">رسوم الغرفة</td>
                <td class="text-center">00000</td>
                <td class="text-center">00000</td>
            </tr>
            <tr>
                <td class="text-start">DD/MM/YY</td>
                <td class="text-start">ROOM CHARGE</td>
                <td class="text-center">رسوم الغرفة</td>
                <td class="text-center">00000</td>
                <td class="text-center"></td>
            </tr>
        </tbody>
    </table>

    <hr class="hr-spaced" />



    <table class="table-auto float-right" style="width: 50% !important">
        <thead>
            <tr>
                <th class="text-start">Total المجموع</th>
                <th class="text-start"></th>
                <th class="">0000</th>
                <th class="text-right">0000</th>
            </tr>
        </thead>

        <tbody>
            <hr class="hr-spaced" />
            <tr>
                <td class="text-start">Balance</td>
                <td class="text-start">SAR</td>
                <td class="text-center">0.00</td>
                <td class="text-right">الرصيد</td>
            </tr>
            <tr>
                <td class="text-start">Balance</td>
                <td class="text-start">SAR</td>
                <td class="text-center">0.00</td>
                <td class="text-right">ضريبةالبلدية2.5%</td>
            </tr>
            <tr>
                <td class="text-start">Balance</td>
                <td class="text-start">SAR</td>
                <td class="text-center">0.00</td>
                <td class="text-right">ضريبةالقيمةالمضافة1</td>
            </tr>
            <tr>
                <td class="text-start">Balance</td>
                <td class="text-start">SAR</td>
                <td class="text-center">0.00</td>
                <td class="text-right">صافي القيمة</td>
            </tr>
        </tbody>
    </table>


    {{-- <footer class="mt-5">

        <div class="container">
            <h4 class="text-center mt-5">MIRA BUSINESS HOTEL,RIYADH</h4>
            <div class="row row-cols-2">
                <div class="col">
                    <p>PO.Box.12242,Olaya street,Riyadh ,Kingdom of Saudi Arabia</p>
                </div>
                <div class="col">
                    <h6>Guest Signature / الضيف توقيع</h6>
                </div>
            </div>
        </div>

    </footer> --}}


    <script src="{{ asset('public/backend/js/jquery-3.6.3.min.js') }}"></script>
    <script src="{{ asset('public/backend/js/popper.min.js') }}"></script>
    <script src="{{ asset('public/backend/js/bootstrap.min.js') }}"></script>
    @stack('scripts')
</body>

</html>
