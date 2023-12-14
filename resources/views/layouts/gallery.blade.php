<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Gallery Templates</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="{{asset('public/frontend/css/css/bootstrap.min.css')}}" />

    <!-- Gallery -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css"
    />

    <!-- Style -->
    <link rel="stylesheet" href="{{asset('public/frontend/cssgallery-grid.css')}}" />
  </head>
  <body>



    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
    <script src="{{asset('public/frontend/js/js/bootstrap.bundle.min.js')}}"></script>
    <script>
      baguetteBox.run('.tz-gallery', {
        animation: 'fadeIn',
        buttons: true,
        noScrollbars: true,
        overlayBackgroundColor: 'rgba(0,0,0,0.9)',
      });
      function myFunction(p1) {
        if (p1 == 'dm1') {
          document.getElementById('demo').style.display = 'flex';
          document.getElementById('demo2').style.display = 'none';
          document.getElementById('demo3').style.display = 'none';
        } else if (p1 == 'dm2') {
          document.getElementById('demo').style.display = 'none';
          document.getElementById('demo2').style.display = 'flex';
          document.getElementById('demo3').style.display = 'none';
        } else {
          document.getElementById('demo').style.display = 'none';
          document.getElementById('demo2').style.display = 'none';
          document.getElementById('demo3').style.display = 'flex';
        }
      }
    </script>
  </body>
</html>
