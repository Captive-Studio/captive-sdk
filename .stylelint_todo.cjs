module.exports = {
  // ⚠️ Technical debt
  // Theses rules should be fixed as soon as possible
  rules: {},

  overrides: [
    // ActiveAdmin does not support theses patterns
    {
      files: ['captive-admin/**'],
      rules: {
        'selector-id-pattern': null,
        'selector-class-pattern': null,
      },
    },
    {
      files: ['captive-theme/**'],
      rules: {
        'alpha-value-notation': null,
      },
    },
  ],
};
