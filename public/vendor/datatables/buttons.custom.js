(function ($, DataTable) {
    "use strict";

    DataTable.ext.buttons.createAlert = {
        className: 'buttons-create-alert',

        text: function (dt) {
            return '<i class="fa fa-plus"></i> ' + dt.i18n('buttons.create-alert', 'Create Alert');
        },

        action: function (e, dt, button, config) {
            window.location = window.location.href.replace(/\/+$/, "") + '/create';
        }
    };
})(jQuery, jQuery.fn.dataTable);