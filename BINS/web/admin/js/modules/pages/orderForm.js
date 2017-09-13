/**
 * Brand Form page module.
 * @module pages/brandForm
 * @author Michele Vaccari
 */

App.page.productForm = function() {

  /**
   * @const {object} Constant css-selectors to link up with HTML markup.
   */
  var c = {
    TABLE: {
      TABLE:      '#products-table',
      INFO:       '#products-info',
      LENGTH:     '#products-length',
      SEARCH:     '#products-search',
      PAGINATION: '#products-pagination',
    ACTIONS: {
        REMOVE:   '.products-remove'
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
          { 'orderable': false, 'targets': [5] }
        ],
        'pagingType': 'numbers',
        'order': [[0, 'asc']],
        'select': {
          'style': 'single',
          'selector': 'td:not(.st-products__action)'
        }
      }
    });
  }
  
  function bindUIActions() {
    
    // Remove Product
    $(document).on('click', c.TABLE.ACTIONS.REMOVE, function() {
      var id = $(this).data('product'),
          row = s.widgets.table.dataTable.row('[data-product="' + id + '"]'),
          product = row.data();

      if (product) {
        bootbox.confirm({
          title: "Elimina Prodotto?",
          message: "Vuoi davvero eliminare il prodotto con id <b>" + product[0]['display'] + "</b>?",
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
  }

  init();

  return s;

}();
