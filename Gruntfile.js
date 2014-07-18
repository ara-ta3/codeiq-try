module.exports = function(grunt){

    grunt.initConfig({
        watch: {
            scripts: {
                files: ['src/codeiq/*.js'],
                tasks: ['uglify']
            }
        },
        uglify: {
            codeiq: {
                files: {
                    'dest/output/codeiq-answer.txt': ['src/codeiq/answer.js']
                }
            }
        },
        qunit: {
            all: ['test/codeiq/*.html']
        }
    });

    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-qunit');


    grunt.registerTask('default', ['watch']);
    grunt.registerTask('test', ['qunit']);
};
