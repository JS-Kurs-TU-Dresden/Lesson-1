import { expect, test, describe } from 'vitest'
import { fullName } from '../tasks/basic-string.js'

describe('basic strings', () => {
    
    test('concatenation', async () => {
        expect(fullName).toEqual('John Doe')
    })
})