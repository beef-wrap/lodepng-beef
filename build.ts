import { type Build } from 'cmake-ts-gen';

const build: Build = {
    common: {
        project: 'lodepng',
        archs: ['x64'],
        variables: [],
        copy: {
            'lodepng/lodepng.cpp': 'lodepng/lodepng.c'
        },
        defines: ['lodepng_IMPLEMENTATION'],
        options: [],
        subdirectories: [],
        libraries: {
            'lodepng': {
                sources: ['lodepng/lodepng.c']
            }
        },
        buildDir: 'build',
        buildOutDir: 'libs',
        buildFlags: []
    },
    platforms: {
        win32: {
            windows: {},
            android: {
                archs: ['x86', 'x86_64', 'armeabi-v7a', 'arm64-v8a'],
            }
        },
        linux: {
            linux: {}
        },
        darwin: {
            macos: {}
        }
    }
}

export default build;