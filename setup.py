from setuptools import setup, find_packages

setup(
    name="scihub",
    version="1.0",
    packages=find_packages(),
    install_requires=[
        'beautifulsoup4',
        'requests',
        'retrying',
        'pysocks',
    ],
    entry_points={
        'console_scripts': [
            'scihub=scihub.scihub:main',
        ],
    },
)
