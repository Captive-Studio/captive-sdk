module.exports = {
  // ⚠️ Technical debt
  // Theses rules should be fixed as soon as possible
  overrides: [
    // { files: ['*.*'], rules: {} },
    {
      files: ['*manifest.js'],
      rules: {
        'unicorn/no-empty-file': 'off',
      },
    },
  ],
};
