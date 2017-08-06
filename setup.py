""" This is the setup.py script for setting up the package and fulfilling any
necessary requirements.

References:
https://github.com/pypa/sampleproject/blob/master/setup.py
https://github.com/biopython/biopython/blob/master/setup.py
http://python-packaging.readthedocs.io/en/latest/index.html
"""
from setuptools import setup, find_packages
from codecs import open  # To use a consistent encoding
from os import path
import sys

# Save the standard error of the setup file. This can be removed soon.
sys.stderr = open('err.txt', 'w')

# Set the home path of the setup script/package
home = path.abspath(path.dirname(__file__))
name = 'datasnakes-rnaseq'


def readme():
    """Get the long description from the README file."""
    with open(path.join(home, 'README.md'), encoding='utf-8') as f:
        return f.read()

# Setup the package by adding information to these parameters
setup(
    name=name,
    author='Rob Gilmore & Shaurita Hutchins',
    description="",
    version='0.1.0a1',
    long_description=readme(),
    url='https://github.com/sdhutchins/rna-seq-project',
    license='MIT',
    keywords='bioinformatics science psychiatry genetics rnaseq',
    classifiers=[
        'Development Status :: 3 - Alpha',
        'Intended Audience :: Science/Research',
        'Topic :: Scientific/Engineering :: Bio-Informatics',
        'Topic :: Scientific/Engineering :: Visualization',
        'Topic :: Scientific/Engineering :: Medical Science Apps.',
        'Programming Language :: Python :: 3',
        'Operating System :: POSIX :: Linux',
        'Operating System :: Unix',
        'Natural Language :: English',
        'Programming Language :: Python :: 3 :: Only',
        'Programming Language :: Python :: 3.3',
        'Programming Language :: Python :: 3.4',
        'Programming Language :: Python :: 3.5'
    ],
    # Packages will be automatically found if not in this list.
    packages=find_packages(),
    include_package_data=True,
#    entry_points={
#        'console_scripts': ['d~s=Orthologs.command_line:main']
#    },
    zip_safe=False,
    test_suite='nose.collector',
    tests_require=['nose']
)
