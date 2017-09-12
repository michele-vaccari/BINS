/**
 * Users page module.
 * @module pages/couponView
 * @author Michele Vaccari
 */

App.page.coupons = function() {

  /**
   * @const {object} Constant css-selectors to link up with HTML markup.
   */
  var c = {
    TABLE: {
      TABLE:      '#coupons-table',
      INFO:       '#coupons-info',
      LENGTH:     '#coupons-length',
      SEARCH:     '#coupons-search',
      PAGINATION: '#coupons-pagination',
    ACTIONS: {
        REMOVE:   '.coupons-remove'
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
          'selector': 'td:not(.st-coupons__action)'
        }
      }
    });
  }
  
  function bindUIActions() {
    
    // Remove Coupon
    $(document).on('click', c.TABLE.ACTIONS.REMOVE, function() {
      var id = $(this).data('coupon'),
          row = s.widgets.table.dataTable.row('[data-coupon="' + id + '"]'),
          coupon = row.data();

      if (coupon) {
        bootbox.confirm({
          title: "Elimina Coupon?",
          message: "Vuoi davvero eliminare il coupon <b>" + coupon[0]['display'] + "</b>?",
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
    // Select first coupon
    s.widgets.table.dataTable.rows(0).select();
  }

  init();

  return s;

}();