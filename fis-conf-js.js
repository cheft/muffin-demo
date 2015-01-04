module.exports = {
    roadmap: {
        path: [
            {
                reg: /^\/node_modules\/bootstrap\/dist\/fonts\/(.*)$/i,
                release: 'font/$1',
            },
            {
                id: 'bootstrap.css',
                reg: 'node_modules/bootstrap/dist/css/bootstrap.min.css',
                release: 'css/bootstrap.css'
            }
        ]
    }
}
