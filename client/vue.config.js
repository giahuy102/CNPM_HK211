module.exports = {
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