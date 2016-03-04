module.exports = {
  'rules': {
    'array-bracket-spacing': 2,
    'brace-style': 2,
    'camelcase': 2,
    'comma-spacing': 2,
    'comma-style': 2,
    'computed-property-spacing': 2,
    'eol-last': 2,
    'func-names': 1,
    'func-style': [2, 'declaration', {'allowArrowFunctions': true}],
    'indent': [2, 2],
    'key-spacing': 2,
    'new-cap': 2,
    'no-mixed-spaces-and-tabs': 2,
    'no-multiple-empty-lines': [2, {'max': 2, 'maxEOF': 1}],
    'no-nested-ternary': 2,
    'no-new-object': 2,
    'no-trailing-spaces': 2,
    'no-unneeded-ternary': 2,
    'object-curly-spacing': 2,
    'one-var': [2, {uninitialized: 'always', initialized: 'never'}],
    'padded-blocks': [2, 'never'],
    'quotes': [2, 'single', 'avoid-escape'],
    'semi': 2,
    'semi-spacing': 2,
    'space-before-blocks': 2,
    'space-before-function-paren': [2, 'never'],
    'space-in-parens': 2,
    'space-infix-ops': 2,
    'keyword-spacing': 2,
    'space-unary-ops': 0,
    'spaced-comment': [2, 'always', {
      'exceptions': ['-', '+'],
      'markers': ['=', '!'] // space here to support sprockets directives
    }]
  }
};
