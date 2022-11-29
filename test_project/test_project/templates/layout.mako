<!DOCTYPE html>
<html lang="${request.locale_name}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="pyramid web application">
    <meta name="author" content="Pylons Project">
    <link rel="shortcut icon" href="${request.static_url('test_project:static/logo.png')}">

    <title>Медицинский центр Здоровье</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Custom styles for this scaffold -->
    <link href="${request.static_url('test_project:static/theme.css')}" rel="stylesheet">

    <!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js" integrity="sha384-0s5Pv64cNZJieYFkXYOTId2HMA2Lfb6q2nAcx2n0RTLUnCAoTTsS0nKEO27XyKcY" crossorigin="anonymous"></script>
      <script src="//oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js" integrity="sha384-ZoaMbDF+4LeFxg6WdScQ9nnR1QC2MIRxA1O9KWEXQwns1G8UNyIEZIQidzb0T1fo" crossorigin="anonymous"></script>
    <![endif]-->
  </head>

  <body>
<script src="https://unpkg.com/vue@next"></script>
    <div class="starter-template">
      <div class="container">
        <div class="row">
          <div class="col-md-2">
            <img class="logo img-responsive" src="${request.static_url('test_project:static/logo.png') }">
          </div>
          <div class="col-md-10">
            ${ next.body() }
          </div>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="row">
          <div id="links" align="center">
              <button onclick="window.location.href = 'doctors'" v-bind:style="bStyle">Наши доктора</button>
              <button onclick="window.location.href = 'add_patient'" v-bind:style="bStyle">Зарегистрировать пациента</button>
              <br>
              <br>
              <button onclick="window.location.href = 'receptions'" v-bind:style="bStyle">Текущие приёмы</button>
              <button onclick="window.location.href = 'add_reception'" v-bind:style="bStyle">Оформить приём</button>
          </div>
        </div>
      </div>
    </div>
    
<script>
Vue.createApp({
  data() {

  },
  computed: {
        bStyle(){
            return {
                'color': 'rgb(5, 0, 51)',
                'font-size': '30px',
                'background-color': 'rgba(28, 28, 28, 0)',
                'margin': '0 20px',
                'width': '500px',
                'height': '80px',
                'border-color': 'rgb(35, 0, 189)',
                'border-radius': '50px'
          }
        }
    }
}).mount('#links');
</script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="//code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>

