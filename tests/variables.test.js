import { expect, test, describe } from 'vitest'
import {changeVariables, myBoolean, myChangeableBoolean, myChangeableNumber, myChangeableString, myNumber, myString} from '../tasks/variables.js'

describe('variables', () => {
    
    test('constants', async () => {
        expect(typeof myNumber).toEqual('number')
        expect(typeof myString).toEqual('string')
        expect(typeof myBoolean).toEqual('boolean')
    })

    test('changeable', async () => {
        expect(typeof myChangeableNumber).toEqual('number')
        expect(typeof myChangeableString).toEqual('string')
        expect(typeof myChangeableBoolean).toEqual('boolean')

        changeVariables()

        expect(myChangeableNumber).toEqual(0)
        expect(myChangeableString).toEqual('')
        expect(myChangeableBoolean).toEqual(false)
    })
})