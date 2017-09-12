/**
 * Users page module.
 * @module pages/adminView
 * @author Michele Vaccari
 */

App.page.admins = function() {

  /**
   * @const {object} Constant css-selectors to link up with HTML markup.
   */
  var c = {
    TABLE: {
      TABLE:      '#admins-table',
      INFO:       '#admins-info',
      LENGTH:     '#admins-length',
      SEARCH:     '#admins-search',
      PAGINATION: '#admins-pagination',
    ACTIONS: {
        REMOVE:   '.admins-remove'
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
          'selector': 'td:not(.st-admins__action)'
        }
      }
    });
  }
  
  function bindUIActions() {
    
    // Remove Admin
    $(document).on('click', c.TABLE.ACTIONS.REMOVE, function() {
      var id = $(this).data('admin'),
          row = s.widgets.table.dataTable.row('[data-admin="' + id + '"]'),
          admin = row.data();

      if (admin) {
        bootbox.confirm({
          title: "Elimina Amministratore?",
          message: "Vuoi davvero eliminare l'utente amministratore <b>" + admin[0]['display'] + "</b>?",
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
    // Select first admin
    s.widgets.table.dataTable.rows(0).select();
  }

  init();

  return s;

}();