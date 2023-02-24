import sys
from setuptools import setup, find_packages

requirements = [
    'pytest',
]

setup(
    name='{{project_name}}',
    version='{{version}}',
    packages=find_packages(),
    description='{{description}}',
    url='https://github.com/pelucid/{{project_name}}',
    install_requires=requirements,
    setup_requires=['pytest-runner'],
    tests_require=['pytest~=6.2.1', 'pytest-cov', 'tomli==1.2.2', 'coverage==6.2'],  # Coverage pinned due to AXE-2056

    entry_points={
        'console_scripts': [
            ('deploy_client_facing_info='
             'gi_feature_definitions.console_scripts.deploy_client_facing_info:main'),
        ]
    },
    classifiers= ['Programming Language :: Python :: 3.9']
)
