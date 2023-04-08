import { expect, test, describe } from 'vitest'
import { sum, difference, product, quotient, remainder, negation, exponentiation } from '../tasks/basic-math.js'

describe('basic math', () => {
    
    test('sum', async () => {
        expect(sum).toBe(5)
    })

    test('difference', async () => {
        expect(difference).toBe(-1)
    })

    test('product', async () => {
        expect(product).toBe(6)
    })

    test('quotient', async () => {
        expect(quotient).toBe(0.6666666666666666)
    })

    test('remainder', async () => {
        expect(remainder).toBe(2)
    })

    test('negation', async () => {
        expect(negation).toBe(-2)
    })

    test('exponentiation', async () => {
        expect(exponentiation).toBe(8)
    })
})