from setuptools import setup

setup(
    name='learn-docker',
    version='1.0',
    packages=['src'],
    install_requires=[
        'Flask',
        # Add other dependencies here
    ],
)
# -*- coding: utf-8 -*-

from setuptools import setup

setup(
    name='learn-docker',
    version='1.0',
    author='FNU Pratik',
    author_email='pratik03071995@gmail.com',
    description='calculator application',
    packages=['src'],
    install_requires=[
        'Flask',
        # Add other dependencies here
    ],
    url='https://github.com/pratik03071995/learn-docker',  
    entry_points={
        'console_scripts': [
            'my-caculator = src.calculate_app:main',
            # Add other entry points here if needed
        ],
    }
)
