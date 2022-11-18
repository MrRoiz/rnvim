return {
    server = 'pyright',
    settings = {
        python = {
            analysis = {
                -- Disabled because of type errors with Django
                typeCheckingMode = "off"
            }
        }
    }
}
