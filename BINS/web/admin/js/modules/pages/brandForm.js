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
    COVER: {
      IMG:     '.st-cropper-img',
      PREVIEW: '.st-cropper__preview',
      FILE:    '#cFile',
      DATA: {
        X:      '#cDataX',
        Y:      '#cDataY',
        HEIGHT: '#cDataHeight',
        WIDTH:  '#cDataWidth',
        SCALEX: '#cDataScaleX',
        SCALEY: '#cDataScaleY',
        ROTATE: '#cDataRotate',
        RATIO:  'input[name="cDataRatio"]',
        BOX: {
          LEFT:   '#cDataBoxLeft',
          TOP:    '#cDataBoxTop',
          WIDTH:  '#cDataBoxWidth',
          HEIGHT: '#cDataBoxHeight'
        },
        REMOVED: '#cRemoved'
      },
      BUTTONS: {
        REMOVE:   '#cRemove',
        PREVIEW:  '#cPreview',
        RESTORE:  '#cRestore',
        DOWNLOAD: '#cDownload'
      }
    }
  }

  /**
   * @var {object} Module settings object.
   */
  var s = {
    widgets: {}
  };

  // Fancybox Plugin options
  var fancybox = {
		prevEffect	: 'none',
		nextEffect	: 'none',
    type: 'image',
    padding : 0
  }

  function initWidgets() {
    // Cropper Widget for Product Cover
    s.widgets.cropper = new App.classes.CropperWidget({
      img: c.COVER.IMG,
      file: c.COVER.FILE,
      preview: c.COVER.PREVIEW,
      data: {
        x: c.COVER.DATA.X,
        y: c.COVER.DATA.Y,
        width: c.COVER.DATA.WIDTH,
        height: c.COVER.DATA.HEIGHT,
        scaleX: c.COVER.DATA.SCALEX,
        scaleY: c.COVER.DATA.SCALEY,
        rotate: c.COVER.DATA.ROTATE,
        ratio: c.COVER.DATA.RATIO,
        box: {
          left: c.COVER.DATA.BOX.LEFT,
          top: c.COVER.DATA.BOX.TOP,
          width: c.COVER.DATA.BOX.WIDTH,
          height: c.COVER.DATA.BOX.HEIGHT,
        },
        removed: c.COVER.DATA.REMOVED
      },
      buttons: {
        remove: c.COVER.BUTTONS.REMOVE,
        restore: c.COVER.BUTTONS.RESTORE,
        preview: c.COVER.BUTTONS.PREVIEW,
        download: c.COVER.BUTTONS.DOWNLOAD
      }
    });
  }

  function initPlugins() {

    // Fancybox
    $(".fancybox").fancybox(fancybox);
    
    // Update CropperWidget on Tab toggle
    $('.st-panel__header a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
      if ($(e.target).attr('href') == '#cover') {
        s.widgets.cropper.update();
      }
    })
  }

  function init() {
    initPlugins();
    initWidgets();
  }

  init();

  return s;

}();
