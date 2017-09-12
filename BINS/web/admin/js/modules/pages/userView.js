/**
 * Users page module.
 * @module pages/userView
 * @author Michele Vaccari
 */

App.page.users = function() {

  /**
   * @const {object} Constant css-selectors to link up with HTML markup.
   */
  var c = {
    TABLE: {
      TABLE:      '#users-table',
      INFO:       '#users-info',
      LENGTH:     '#users-length',
      SEARCH:     '#users-search',
      PAGINATION: '#users-pagination',
    ACTIONS: {
        REMOVE:   '.users-remove'
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
          { 'orderable': false, 'targets': [7] }
        ],
        'pagingType': 'numbers',
        'order': [[0, 'asc']],
        'select': {
          'style': 'single',
          'selector': 'td:not(.st-users__action)'
        }
      }
    });
  }
  
  function bindUIActions() {
    
    // Remove Brand
    $(document).on('click', c.TABLE.ACTIONS.REMOVE, function() {
      var id = $(this).data('user'),
          row = s.widgets.table.dataTable.row('[data-user="' + id + '"]'),
          user = row.data();

      if (user) {
        bootbox.confirm({
          title: "Elimina Utente?",
          message: "Vuoi davvero eliminare l'utente <b>" + user[0]['display'] + "</b>?",
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
    // Select first user
    s.widgets.table.dataTable.rows(0).select();
  }

  init();

  return s;

}();