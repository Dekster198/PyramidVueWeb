<html>
    <head>
        <title>Доктора нашей клиники</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="pyramid web application">
        <meta name="author" content="Pylons Project">
        <link rel="shortcut icon" href="${request.static_url('test_project:static/logo.png')}">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="${request.static_url('test_project:static/theme.css')}">
    </head>
    <body>
    <script src="https://unpkg.com/vue@next"></script>
    <div class="starter-template">
        <div class="content">
        <div class="row">
          <div class="col-md-2">
            <img class="logo img-responsive" src="${request.static_url('test_project:static/logo.png') }">
          </div>
          <div class="col-md-10">
            <h1><span class="font-semi-bold">Здоровье</span> <span class="smaller">Мы заботимся о Вас</span></h1>
  <p class="lead">Добро пожаловать на наш сайт<span class="font-normal"></span>
  <br>
          </div>
        </div>
        <div id="mainmenu">
    <ul>
        <li><a href="/">Главная страница</a></li>
        <li><a href="add_patient">Зарегистрировать пациента</a></li>
        <li><a href="receptions">Текущие приёмы</a></li>
        <li><a href="add_reception">Оформить приём</a></li>
    </ul>
</div>
        <div id="content">
        <center>
            <h1>Наши доктора</h1>
            <table>
            <thead>
                <tr>
                    <th>Фамилия</th>
                    <th>Имя</th>
                    <th>Отчетство</th>
                    <th>Специализация</th>
                    <th>Опыт работы(в годах)</th>
                    <th>Цена посещения(в рублях)</th>
                <tr>
                </thead>
                % for data in dataset:
                <tbody>
                <tr>    
                    <td>${data.surname}</td>
                    <td>${data.name}</td>
                    <td>${data.patronymic}</td>
                    <td>${data.specialization}</td>
                    <td>${data.experience}</td>
                    <td>${data.price}</td>
                </tr>
                </tbody>
                % endfor
            </table>
            <button onclick="window.location.href = 'add_doctor'" v-bind:style="bStyle">Добавить доктора</button>
            </center>
        </div>

        <script>
Vue.createApp({
  data() {

  },
  computed: {
        bStyle(){
            return {
                'color': 'rgb(5, 0, 51)',
                'font-size': '15px',
                'background-color': 'rgba(28, 28, 28, 0)',
                'margin': '0 20px',
                'width': '250px',
                'height': '40px',
                'border-color': 'rgb(35, 0, 189)',
                'border-radius': '50px'
          }
        }
    }
}).mount('#content');
</script>
    </body>
</html>