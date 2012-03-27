# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $(document).ready ->
      $('#calendar').fullCalendar({
        defaultView: 'agendaWeek',
        allDaySlot: true,
        height: 700,
        firstDay: 1,
        axisFormat: 'HH:mm',
        timeFormat: 'H:mm',
        firstHour: 8,
        theme: true,
        dayNamesShort: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб']
        monthNamesShort: ['Янв', 'Фев', 'Мар', 'Апр', 'Май', 'Июн', 'Июл', 'Авг', 'Сен', 'Окт', 'Ноя', 'Дек']
        buttonText: {
          prev: '&nbsp;&#9668;&nbsp;',
          next: '&nbsp;&#9658;&nbsp;',
          prevYear: '&nbsp;&lt;&lt;&nbsp;',
          nextYear: '&nbsp;&gt;&gt;&nbsp;',
          today: 'Сегодня',
          month: 'Месяц',
          week: 'Неделя',
          day: 'День'
        },
        events: "/events/"
      })