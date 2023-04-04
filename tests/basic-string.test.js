import { expect, test, describe } from 'vitest'
import { fullName } from '../tasks/basic-string.js'
import { readFileSync } from 'fs'

describe('basic strings', () => {
    
    test('concatenation', async () => {
        expect(fullName).toEqual('John Doe')
    })

    test("don't cheat", () => {
        const code = readFileSync('./tasks/basic-string.js', 'utf-8')

        expect(code.replace("// The result should be 'John Doe'."), '').not.toContain('John Doe')
    })
})