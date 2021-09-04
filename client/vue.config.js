module.exports = {
    pages: {
        index: {
            entry: "./src/pages/Menu/main.js",
            template: "public/index.html",
            filename: "index.html",
            title: "Menu",
            chunks: ["chunk-vendors", "chunk-common", "index"],
        },
        payment: {
            entry: "./src/pages/Payment/main.js",
            template: "public/index.html",
            filename: "payment.html",
            title: "Payment",
            chunks: ["chunk-vendors", "chunk-common", "index"],
        },
    },
};