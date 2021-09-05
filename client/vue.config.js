module.exports = {
    devServer: {
        proxy: {
            '^/api': {
                target: 'http://localhost:3080',
                changeOrigin: true
            },
        }
    },
    pages: {
        menu: {
            entry: "./src/pages/Menu/main.js",
            template: "public/index.html",
            filename: "index.html",
            title: "Menu",
            chunks: ["chunk-vendors", "chunk-common", "menu"],
        },
        payment: {
            entry: "./src/pages/Payment/main.js",
            template: "public/index.html",
            filename: "payment.html",
            title: "Payment",
            chunks: ["chunk-vendors", "chunk-common", "payment"],
        },
    },
};