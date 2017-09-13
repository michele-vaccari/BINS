/**
 * Features page module.
 * @module pages/featureView
 * @author Michele Vaccari
 */

App.page.features = function() {

  /**
   * @const {object} Constant css-selectors to link up with HTML markup.
   */
  var c = {
    TABLE: {
      TABLE:      '#features-table',
      INFO:       '#features-info',
      LENGTH:     '#features-length',
      SEARCH:     '#features-search',
      PAGINATION: '#features-pagination',
    ACTIONS: {
        REMOVE:   '.features-remove'
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
          'selector': 'td:not(.st-features__action)'
        }
      }
    });
  }
  
  function bindUIActions() {
    
    // Remove Feature
    $(document).on('click', c.TABLE.ACTIONS.REMOVE, function() {
      var id = $(this).data('feature'),
          row = s.widgets.table.dataTable.row('[data-feature="' + id + '"]'),
          feature = row.data();

      if (feature) {
        bootbox.confirm({
          title: "Elimina Caratteristica?",
          message: "Vuoi davvero eliminare la caratteristica <b>" + feature[0]['display'] + "</b>?",
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
    // Select first feature
    s.widgets.table.dataTable.rows(0).select();
  }

  init();

  return s;

}();