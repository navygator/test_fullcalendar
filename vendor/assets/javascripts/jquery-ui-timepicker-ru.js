/* Russian translation for the jQuery Timepicker Addon */
/* Written by Trent Richardson */
(function($) {
	$.timepicker.regional['ru'] = {
        dateFormat: 'dd.mm.yy',
        closeText: 'Закрыть',
      	prevText: '<Пред',
      	nextText: 'След>',
      	currentText: 'Сегодня',
      	monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь',
      	'Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
      	monthNamesShort: ['Янв','Фев','Мар','Апр','Май','Июн','Июл','Авг','Сен','Окт','Ноя','Дек'],
      	dayNames: ['воскресенье','понедельник','вторник','среда','четверг','пятница','суббота'],
        dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
      	dayNamesShort: ['вск','пнд','втр','срд','чтв','птн','сбт'],
        timeText: 'Время',
  		hourText: 'Часы',
   		minuteText: 'Минуты',
      	weekHeader: 'Не',
      	dateFormat: 'dd.mm.yy',
      	firstDay: 1,
      	isRTL: false,
      	showMonthAfterYear: false,
      	yearSuffix: ''
    };
	$.timepicker.setDefaults($.timepicker.regional['ru']);
})(jQuery);
