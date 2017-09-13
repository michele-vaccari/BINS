/**
 * Products page module.
 * @module pages/stockView
 * @author Michele Vaccari
 */

App.page.stocks = function() {

  /**
   * @const {object} Constant css-selectors to link up with HTML markup.
   */
  var c = {
    TABLE: {
      TABLE:      '#stocks-table',
      INFO:       '#stocks-info',
      LENGTH:     '#stocks-length',
      SEARCH:     '#stocks-search',
      PAGINATION: '#stocks-pagination',
    ACTIONS: {
        REMOVE:   '.stocks-remove'
      }
    }
  }

  /**
   * @var {object} Module settings object.
   */
  var s = {
    widgets: {}
  };

  function initWidgets() {
    // DataTable Widget
    s.widgets.table = new App.classes.TableWidget({
      table: c.TABLE.TABLE,
      info: c.TABLE.INFO,
      search: c.TABLE.SEARCH,
      length: c.TABLE.LENGTH,
      pagination: c.TABLE.PAGINATION,
      dataTable: {
        'columnDefs': [
          { 'orderable': false, 'targets': [6] }
        ],
        'pagingType': 'numbers',
        'order': [[0, 'asc']],
        'select': {
          'style': 'single',
          'selector': 'td:not(.st-stocks__action)'
        }
      }
    });
  }
  
  function bindUIActions() {
    
    // Remove Product
    $(document).on('click', c.TABLE.ACTIONS.REMOVE, function() {
      var id = $(this).data('stock'),
          row = s.widgets.table.dataTable.row('[data-stock="' + id + '"]'),
          stock = row.data();

      if (stock) {
        bootbox.confirm({
          title: "Elimina Prodotto?",
          message: "Vuoi davvero eliminare la giacenza con id <b>" + stock[0]['display'] + "</b>?",
          backdrop: true,
          buttons: {
            cancel: {
              label: 'Annulla'
            },
            confirm: {
              label: 'Elimina',
              className: 'btn-danger'
            }
          },
          callback: function (result) {
            if (result) {
              row.remove().draw();
            }
          }
        });
      }
    })
  }
  
  function init() {
    initWidgets();
    bindUIActions();
    // Select first stock
    s.widgets.table.dataTable.rows(0).select();
  }

  init();

  return s;

}();
