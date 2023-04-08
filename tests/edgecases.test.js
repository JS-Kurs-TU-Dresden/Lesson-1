import { expect, test, describe } from 'vitest'
import { typeA, typeB, typeC, typeD, valueA, valueB, valueC, valueD } from '../tasks/edgecases.js'

describe('edgecases', () => {
    
    test('a', async () => {
        expect(typeA).toEqual('number')
        expect(valueA).toEqual(1245)
    })

    test('b', async () => {
        expect(typeB).toEqual('string')
        expect(valueB).toEqual('b2')
    })

    test('c', async () => {
        expect(typeC).toEqual('string')
        expect(valueC).toEqual('2c')
    })

    test('d', async () => {
        expect(typeD).toEqual('number')
        expect(valueD).toEqual(21)
    })
})