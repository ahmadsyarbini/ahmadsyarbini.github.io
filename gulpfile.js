const { watch, series } = require('gulp');
const browserSync = require('browser-sync').create();

// Function to start BrowserSync proxy
function serve(cb) {
    browserSync.init({
        proxy: "http://127.0.0.1:8000", // Python server
        port: 3001
    });
    cb();
}

// Watch files and reload
function watchFiles() {
    watch(['**/*.html', '**/*.css', '**/*.js', '!node_modules/**'])
        .on('all', (event, path) => {
            console.log(`[${event}] ${path}`);
            browserSync.reload();
        });
}

// Default task: start server and watch files
exports.default = series(serve, watchFiles);