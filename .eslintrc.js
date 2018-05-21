module.exports = {
  env: { browser: true },

  extends: ['airbnb', 'plugin:react/recommended'],

  globals: {
    document:    true,
    e:           true,
    jQuery:      true,
    location:    true,
    Materialize: true,
    moment:      true,
    navigator:   true,
    pca:         true,
    window:      true,
    $:           true,
    $this:       true,
    _st:         true,
  },

  plugins: [
    'compat',
    'import',
    'jsx-a11y',
    'react',
  ],

  parserOptions: {
    ecmaFeatures: {
      jsx: true,
    },
  },

  rules: {
    'compat/compat': 'error',

    'func-names': 'off',

    'import/no-extraneous-dependencies': ['error', { devDependencies: true }],

    indent: ['error', 2, {
      ArrayExpression:     'first',
      CallExpression:      { arguments: 'first' },
      FunctionDeclaration: { parameters: 'first' },
      FunctionExpression:  { parameters: 'first' },
      MemberExpression:    1,
      ObjectExpression:    'first',
      outerIIFEBody:       1,
      SwitchCase:          1,
      VariableDeclarator:  {
        const: 3,
        let:   2,
        var:   2,
      },
    }],

    "jsx-a11y/anchor-is-valid": [ "error", {
      "components": [ "Link" ],
      "specialLink": [ "to" ]
    }],

    'key-spacing': ['error', {
      singleLine: {
        afterColon:  true,
        beforeColon: false,
      },

      multiLine: {
        afterColon:  true,
        align:       'value',
        beforeColon: false,
      },
    }],

    'max-len': ['error', 120],

    'no-unused-expressions': ['error', { allowTernary: true }],

    'react/jsx-tag-spacing': 'error',

    'react/jsx-filename-extension': 'off',
  },

  settings: {
    'import/core-modules': ['core-js'],
  },
};
