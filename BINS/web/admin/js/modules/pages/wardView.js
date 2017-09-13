/**
 * Wards page module.
 * @module pages/wardView
 * @author Michele Vaccari
 */

App.page.wards = function() {

  /**
   * @const {object} Constant css-selectors to link up with HTML markup.
   */
  var c = {
    TABLE: {
      TABLE:      '#wards-table',
      INFO:       '#wards-info',
      LENGTH:     '#wards-length',
      SEARCH:     '#wards-search',
      PAGINATION: '#wards-pagination',
    ACTIONS: {
        REMOVE:   '.wards-remove'
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
          'selector': 'td:not(.st-wards__action)'
        }
      }
    });
  }
  
  function bindUIActions() {
    
    // Remove Ward
    $(document).on('click', c.TABLE.ACTIONS.REMOVE, function() {
      var id = $(this).data('ward'),
          row = s.widgets.table.dataTable.row('[data-ward="' + id + '"]'),
          ward = row.data();

      if (ward) {
        bootbox.confirm({
          title: "Elimina Reparto?",
          message: "Vuoi davvero eliminare il reparto <b>" + ward[0]['display'] + "</b>?",
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
    // Select first ward
    s.widgets.table.dataTable.rows(0).select();
  }

  init();

  return s;

}();