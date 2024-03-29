from setuptools import setup, find_packages
import io


setup(
    name='httpshare',
    version='1.0.9',
    description='Q&D file transfer utility using an ephemeral HTTP service',

    long_description=io.open('README.rst', encoding='utf-8').read(),

    # The project's main homepage.
    url='https://github.com/lourkeur/httpshare-pypi',

    # Author details
    author='Louis Bettens',
    author_email='louis@bettens.info',

    # Choose your license
    license='zlib',

    classifiers=[
        'Environment :: Console',
        'Intended Audience :: End Users/Desktop',
        'Topic :: Software Development :: Build Tools',

        'License :: OSI Approved :: zlib/libpng License',

        'Programming Language :: Python :: 2.7',
        'Programming Language :: Python :: 3.4',
        'Programming Language :: Python :: 3.5',
        'Programming Language :: Python :: 3.6',
        'Programming Language :: Python :: 3.7',
        'Programming Language :: Python :: 3.8',

        'Topic :: Communications :: File Sharing',
        'Topic :: Utilities',
    ],

    keywords='filetransfer',

    packages=find_packages(),

    package_data={
        'httpshare': ['*.stpl', 'LICENSE.txt', 'version.json'],
    },
    zip_safe=True,  # by design

    install_requires=[
        'bottle ~= 0.12.21',
        'colorama ~= 0.4.3',
        'docopt ~= 0.6.2',
        'qrcode ~= 6.0',
    ],

    entry_points={
        'console_scripts': [
            'httpshare=httpshare:main',
        ],
    },
)
