module.exports = {
  testMatch: ['**/__tests__/**/*.spec.js'],
  testResultsProcessor: 'jest-teamcity-reporter',
  testEnvironment: 'jest-environment-jsdom-fourteen',
};
