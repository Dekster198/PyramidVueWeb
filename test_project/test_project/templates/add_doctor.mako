<!DOCTYPE html>
<html>
<head>
<title>Добавить доктора</title>
<script src="https://cdn.jsdelivr.net/npm/vue@2.5.16/dist/vue.js"></script> 
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
        <li><a href="doctors">Наши доктора</a></li>
        <li><a href="add_patient">Зарегистрировать пациента</a></li>
        <li><a href="receptions">Текущие приёмы</a></li>
        <li><a href="add_reception">Оформить приём</a></li>
    </ul>
</div>
<h1 align='center'>Добавить доктора</h1>
<div id="form", align="center">
<form method="post" @submit="onSubmit">
    <label>Фамилия</label><br>
    <input type="text" v-model="surname" placeholder="Введите фамилию" name="surname" v-bind:style="aStyle"/><br>
    <label>Имя</label><br>
    <input type="text" v-model="name" placeholder="Введите имя" name="name" v-bind:style="aStyle"/><br>
    <label>Отчество</label><br>
    <input type="text" v-model="patronymic" placeholder="Введите отчество" name="patronymic" v-bind:style="aStyle"/><br>
    <label>Специальность</label><br>
         <input type="text" v-model="specialization" placeholder="Введите специальность" name="specialization" v-bind:style="aStyle"/>
    <br>
    <label>Стаж работы</label><br>
         <input type="text" v-model="experience" placeholder="Введите стаж работы" name="experience" v-bind:style="aStyle"/>
    <br>
    <label>Цена за приём(в рублях)</label><br>
         <input type="number" v-model="price" placeholder="Введите цену за приём" name="price" v-bind:style="aStyle"/>
    <br>
    <br>
    <input type="submit" value="Добавить" v-bind:style="bStyle">
    <br>
    </form>
    </div>

<script>
Vue.createApp({
  data() {

  },
  methods: {
    async onSubmit() {
        const res = await fetch('http://127.0.0.1:6543/add_doctor_api', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                surname: this.surname,
                name: this.name,
                patronymic: this.patronymic,
                specialization: this.specialization,
                experience: this.experience,
                price: this.price
            }),
        })
    }
  },
  computed: {
        aStyle(){
            return {
                'padding': '10px',
                'border-radius': '10px',
                'border': '0px',
                'width': '350px'
            }
        },
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
}).mount('#form');
</script>
</body>
</html>