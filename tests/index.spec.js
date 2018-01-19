const request = require('supertest');
const expect = require('chai').expect;

const app = require('../app');

describe('SAMPLE unit test', () => {
  // #1 should return home page
  it('should return home page', (done) => {
    // calling home page
    request(app)
    .get('/')
    .expect('Content-type',/text/)
    .expect(200) // THis is HTTP response
    .end((err, res) => {
      expect(res.status).to.equal(400);
      done();
    });
  });
});