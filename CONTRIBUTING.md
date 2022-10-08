# Contributing
Thank you for taking the time to help contribute to our project! Before getting any further,
please take a look at our guidelines and requirements.

## Guidelines
- Follow the repository's [Code of Conduct.](CODE_OF_CONDUCT.md)
  - Violations of the Code of Conduct are always applicable to every contribution made, and retroactively applied
    out of good spirit.
- Play nice and be fair: OSS involves cooperation and collaboration, not drama.
- Respect those trying to learn and contribute to the project. We're here to learn and grow.

## Requirements
All of our contributions begin with a [Pull Request](https://github.com/vapourlabs/modeldrop/pulls).
Pull Requests are used to track development progress and new changes to the repository.

When you create a Pull Request, (PR) keep the following in mind:
- Changes tailored to feature requests or implementations can benefit from having code examples written.
- If you do not check off "I agree to follow the Code of Conduct," we will close the PR.
- Code suggestions for potential bugfixes already addressed in PR(s) are unnecessary. Please consider discussing
  in the appropriate areas for these instead.

After a Pull Request has been created, please allow for a minimum of 24 hours before receiving a response
by a member of the [@vapourlabs](https://github.com/vapourlabs/people) organisation. As a courteous reminder,
contributors and collaborators are not representatives of the team and bear no face to internal decisions made.

## Workflow
<!-- Using a table instead of proper admonition. -->
Note|
-|
This is a planned list of workflow tools.

Our development workflow involves using tools meant to benefit developers writing source code, and to make it better.

Our main tools for in-development progress include:
- [black](https://github.com/psf/black) - PEP 8 compliant and opinionated code formatting.
- [flake8](https://github.com/psf/black) - enforcing styling and double-checking missed issues from `black`.
- [isort](https://github.com/PyCQA/isort) - import resolution formatting. (We do not work with `importlib`!)
- [MkDocs](https://github.com/mkdocs/mkdocs) - statically generated and built documentation with Markdown.
  - [Read the Docs](https://readthedocs.org) - hosting documentation source for Sphinx/MkDocs.

We additionally use some other tools while contributing and testing:
- [pre-commit](https://pre-commit.com) - framework for writing hooks to automate executing actions upon `$ git commit`.
- [pytest](https://github.com/pytest-dev/pytest/) - framework for writing scalable assertion tests.

### Versioning
This project strictly follows [SemVer](https://semver.org), a specification regarding how to appropriately stage
and release new versions of source code. We currently target [**v2.0.0-rc.2**](https://semver.org/spec/v2.0.0-rc.2.html).
