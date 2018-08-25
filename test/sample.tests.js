const { describe, it, } = require('mocha');
const { expect } = require('chai');

describe('Sample test', () => {
    it('Should run', () => {
        let nothing;
        expect(nothing).to.be.undefined;
    });
});