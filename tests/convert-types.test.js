import { expect, test, describe } from 'vitest'
import { resultingBoolean, resultingNumber, resultingString } from '../tasks/convert-types.js'

describe('convert types', () => {
    
    test('convert string to number', async () => {
        expect(resultingNumber).toBe(123)
    })

    test('convert number to string', async () => {
        expect(resultingString).toBe('123')
    })

    test('convert string to boolean', async () => {
        expect(resultingBoolean).toBe(true)
    })
})