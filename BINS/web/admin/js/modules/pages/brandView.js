/**
 * Users page module.
 * @module pages/brandView
 * @author Michele Vaccari
 */

App.page.brands = function() {

  /**
   * @const {object} Constant css-selectors to link up with HTML markup.
   */
  var c = {
    TABLE: {
      TABLE:      '#brands-table',
      INFO:       '#brands-info',
      LENGTH:     '#brands-length',
      SEARCH:     '#brands-search',
      PAGINATION: '#brands-pagination',
    ACTIONS: {
        REMOVE:   '.brands-remove'
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
          { 'orderable': false, 'targets': [3] }
        ],
        'pagingType': 'numbers',
        'order': [[0, 'asc']],
        'select': {
          'style': 'single',
          'selector': 'td:not(.st-brands__action)'
        }
      }
    });
  }
  
  function bindUIActions() {
    
    // Remove Brand
    $(document).on('click', c.TABLE.ACTIONS.REMOVE, function() {
      var id = $(this).data('brand'),
          row = s.widgets.table.dataTable.row('[data-brand="' + id + '"]'),
          brand = row.data();

      if (brand) {
        bootbox.confirm({
          title: "Elimina Marca?",
          message: "Vuoi davvero eliminare la marca <b>" + brand[0]['display'] + "</b>?",
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
    // Select first brand
    s.widgets.table.dataTable.rows(0).select();
  }

  init();

  return s;

}();