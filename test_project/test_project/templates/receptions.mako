<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="pyramid web application">
    <meta name="author" content="Pylons Project">
    <link rel="shortcut icon" href="${request.static_url('test_project:static/logo.png')}">

    <title>Cookiecutter Starter project for the Pyramid Web Framework</title>

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
    <div class="starter-template">
        <div class="content">
        <div class="row">
          <div class="col-md-2">
            <img class="logo img-responsive" src="${request.static_url('test_project:static/logo.png') }">
          </div>
          <div class="col-md-10">
            <h1><span class="font-semi-bold">Здоровье</span> <span class="smaller">Мы заботимся о Вас</span></h1>
  <p class="lead">Добро пожаловать на наш сайт<span class="font-normal"></span>
          </div>
        </div>
        <div id="mainmenu">
    <ul>
        <li><a href="/">Главная страница</a></li>
        <li><a href="doctors">Наши доктора</a></li>
        <li><a href="add_patient">Зарегистрировать пациента</a></li>
        <li><a href="add_reception">Оформить приём</a></li>
    </ul>
</div>
            <h1 align="center">Текущие приёмы</h1>
            <table>
            <thead>
                <tr>
                    <th>Дата</th>
                    <th>Доктор</th>
                <tr>
                </thead>
                % for data in dataset:
                <tbody>
                <tr>    
                    <td>${data.date}</td>
                    <td>${data.surname}${' '}${data.name}${' '}${data.patronymic}${' - '}${data.specialization}</td>
                </tr>
                </tbody>
                % endfor
            </table>
        </div>
        </div>
    </body>
</html>