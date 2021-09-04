module.exports = {
    pages: {
        index: {
            entry: "./src/pages/Menu/main.js",
            template: "public/index.html",
            filename: "index.html",
            title: "Menu",
            chunks: ["chunk-vendors", "chunk-common", "index"],
        },
    },
};