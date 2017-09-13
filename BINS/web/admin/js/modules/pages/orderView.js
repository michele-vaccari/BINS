/**
 * Orders page module.
 * @module pages/orderView
 * @author Michele Vaccari
 */

App.page.orders = function() {

  /**
   * @const {object} Constant css-selectors to link up with HTML markup.
   */
  var c = {
    TABLE: {
      TABLE:      '#orders-table',
      INFO:       '#orders-info',
      LENGTH:     '#orders-length',
      SEARCH:     '#orders-search',
      PAGINATION: '#orders-pagination',
    ACTIONS: {
        REMOVE:   '.orders-remove'
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
          'selector': 'td:not(.st-orders__action)'
        }
      }
    });
  }
  
  function bindUIActions() {
    
    // Remove User
    $(document).on('click', c.TABLE.ACTIONS.REMOVE, function() {
      var id = $(this).data('order'),
          row = s.widgets.table.dataTable.row('[data-order="' + id + '"]'),
          order = row.data();

      if (order) {
        bootbox.confirm({
          title: "Elimina Ordine?",
          message: "Vuoi davvero eliminare l'ordine <b>" + order[0]['display'] + "</b>?",
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
    // Select first order
    s.widgets.table.dataTable.rows(0).select();
  }

  init();

  return s;

}();
