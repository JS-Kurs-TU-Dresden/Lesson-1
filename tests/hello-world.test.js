import { expect, test, vi, describe } from 'vitest'
const mock = vi.fn()
console.log = mock

describe('helloWorld', () => {
    
    test('log to console', async () => {
        await import ('../tasks/hello-world.js')

        expect(mock).toHaveBeenCalled()
        expect(mock.calls[0][0].toLowerCase()).toBe('hello world')
    })

})