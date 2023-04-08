import { expect, test, describe } from 'vitest'
import {changeVariables, changeConstants, myConstantBoolean, myChangeableBoolean, myChangeableNumber, myChangeableString, myConstantNumber, myConstantString} from '../tasks/variables.js'

describe('variables', () => {
    
    test('constants', async () => {
        expect(typeof myConstantNumber).toEqual('number')
        expect(typeof myConstantString).toEqual('string')
        expect(typeof myConstantBoolean).toEqual('boolean')

        try {
            changeConstants()
        } catch (e) {
            expect(e instanceof TypeError).toEqual(true)
        }
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