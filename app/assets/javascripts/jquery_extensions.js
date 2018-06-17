// @todo: Document this new jQuery instance methods!
jQuery.fn.extend({
  nin: function() {
    this
    .on('keydown', (e) => {
      return (
        // After k|K no more characters are accepted!
        !(e.target.value.length &&
          e.target.value[e.target.value.length - 1].toLowerCase() === 'k' &&
          !(e.which === 8 || e.which === 9))

        && // Cannot start with 0 or k|K!
        !(!e.target.value.length && (e.which === 96 || e.which === 75))

        && // These are OK!
        !([
          // Number
          96, 97, 98, 99, 100, 101, 102, 103, 104, 105,
          // k|K
          75,
          // Delete & tab
          8, 9
        ].indexOf(e.which) < 0)
      );
    })
    .on('keyup', (e) => {
      let foo = e.target.value.replace('-', '');
      let last = foo.length - 1;
      let before_last = last - 1;
      if (last > 0) {
        foo = `${foo.substring(0, last)}-${foo[last]}`;
      }
      e.target.value = foo.toUpperCase();
    })
    .keyup();
  }
});
