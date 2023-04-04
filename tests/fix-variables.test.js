import { test, describe } from 'vitest'

describe('fix-variables', () => {
    
    test('no errors', async () => {
        await import('../tasks/fix-variables.js')
    })
})