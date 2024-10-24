<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit2e2ed9bb4a05e542a629488708b38e56
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit2e2ed9bb4a05e542a629488708b38e56::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit2e2ed9bb4a05e542a629488708b38e56::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit2e2ed9bb4a05e542a629488708b38e56::$classMap;

        }, null, ClassLoader::class);
    }
}
