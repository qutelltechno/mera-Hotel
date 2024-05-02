<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
        background-color: #f2e7d1;
    }
    </style>

</head>

<body>

    {{-- <img src="{{'website/images/navbar.svg'}}" style="margin-top: 1rem; width: 100%; height: 70px;"> --}}

    <div style="
        padding: 12px;
    ">

        <div style="
            display: flex;
            padding-top: 1rem;
            padding-bottom: 1rem;
            padding-left: 1rem;
            padding-right: 1rem;
            flex-direction: column;
            gap: 0.5rem;
            border-radius: 0.5rem;
        ">
            <h1 style="
            font-size: 1.875rem;
            line-height: 2.25rem;
            font-weight: 700;
            text-align: center;
            ">
                {{-- {{ $title }} --}}
            </h1>

            <div style="text-align: center">
                <span dir="rtl" class="margin-top:6px; font-size:12px"><b>المشرف:</b> <br> user</h1>
                <br>
                {{-- <div style="margin-top:12px">
                    {!! nl2br(str_replace('٫', ',', $content)) !!}
                <div> --}}
            </div>

            <div style="text-align: center; margin-top:12px">

                <div style="text-align: center; margin-bottom: 12px">
                    <span dir="rtl" class="margin-top:6px; font-size:12px"><b>المشاركين:</b></h1>
                </div>

                <table style="border-width: 2px; border-color: #000000; width: 100%; font-size: 0.875rem; line-height: 1.25rem; text-align: right; color: #000000;">
                   <thead style="font-size: 0.875rem; line-height: 1.25rem; text-align: center; color: #000000; background: #f4ceb0;">
                    <tr>
                        <th style="padding: 0.5rem; border-width: 2px; border-color: #000000; font-size: 1rem; line-height: 1.5rem;">البريد</th>
                        <th style="padding: 0.5rem; border-width: 2px; border-color: #000000; font-size: 1rem; line-height: 1.5rem;">الجوال</th>
                        <th style="padding: 0.5rem; border-width: 2px; border-color: #000000; font-size: 1rem; line-height: 1.5rem;">الكاتب</th>
                    </tr>
                   </thead>
                    <tr style="font-size: 0.875rem; line-height: 1.25rem; text-align: center; color: #000000; background: #f1e1c6;">
                        <td style="padding: 0.5rem; border-width: 2px; border-color: #000000; background: #f4ceb0;">fdvf</td>
                        <td style="padding: 0.5rem; border-width: 2px; border-color: #000000; background: #f4ceb0;">fdvf</td>
                        <td style="padding: 0.5rem; border-width: 2px; border-color: #000000; background: #f4ceb0;">fdvf </td>
                    </tr>
                    <tr style="font-size: 0.875rem; line-height: 1.25rem; text-align: center; color: #000000; background: #f1e1c6;">
                        <td style="padding: 0.5rem; border-width: 2px; border-color: #000000; background: #f4ceb0;">email</td>
                        <td style="padding: 0.5rem; border-width: 2px; border-color: #000000; background: #f4ceb0;">kmkk</td>
                        <td style="padding: 0.5rem; border-width: 2px; border-color: #000000; background: #f4ceb0;">fdvf </td>
                    </tr>
                    <tr style="font-size: 0.875rem; line-height: 1.25rem; text-align: center; color: #000000; background: #f1e1c6;">
                        <td style="padding: 0.5rem; border-width: 2px; border-color: #000000; background: #f4ceb0;">fdvf</td>
                        <td style="padding: 0.5rem; border-width: 2px; border-color: #000000; background: #f4ceb0;">fdvf</td>
                        <td style="padding: 0.5rem; border-width: 2px; border-color: #000000; background: #f4ceb0;">fdvf </td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
</body>

</html>
