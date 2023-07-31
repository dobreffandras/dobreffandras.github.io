---
layout: post
title:  "Launching a project - a proper README.md"
date:   2023-03-06 07:17:31 +0000
categories: project repository repo readme
---

When you start a project, it can be bugging that you don’t know what infrastructural and organizational elements are good to have for a proper project repository. If you’ve already seen a repository with missing setup guidelines or with no documentation at all, you may have thought, “I want to do it better with my own project”. In this blog post, I’m collecting my ideas and suggestions for a project scaffold. The main place where you can write down these elements is the README.md (and CONTRIBUTING.md). At the end of the article you’ll find samples, that you can use for your next project.

## 1. Introduction

Similarly to any other documentation, you should start with a short introduction. What is the goal/purpose of this project, what problem it solves and what are the systems that integrate with your solution if any. In your README you can have some short and brief sentences. If you have a broader documentation elsewhere, you can put a reference to it after your short summary.

## 2. Usage

Depending on your project you may need to give some instructions how your product can be used.

In case of a library, it's key. Lot of library authors give only simple examples in their README and host their proper user documentation elsewhere. I think that's the best method. Simple cases can be found simply, but the README is kept short and focused.

In case of any other type of repository, you can be more flexible. For a server, a well-documented swagger could be enough. If you develop a user-facing (desktop, mobile or a front-end) app, you can have a separate user guide or construct the app in an intuitive way (maybe even implement in-app tutorials). In these cases, you can even skip this section in the README completely.

## 3. Contribution

Every software is developed by several people. It may be shifted in time. You may be the only author right now, but you'll never know. For this reason, you need a documentation about the rules of work and development information for others (who may be the future yourself). 
Most projects have a separate `CONTRIBUTING.md` for this purpose.

### 3.1. Tools and Technologies

In this section, you can enumerate the main technologies, architectural patterns, and libraries you're using in the project to give a brief insight to the interested. 

> You can even add links to the technologies. This may be helpful for the reader if they don't know the technology yet.
{: .prompt-tip }


> Collecting these, has a good effect on your awareness of the project structure as well.
{: .prompt-info }

### 3.2. Setup guidelines

Not every project can be started from the IDE right away after `git clone` (or download). Moreover it's necessary to know how to start it without an IDE. So it's suggested to document the setup steps for the different use cases. Of course the best is to automate as much as possible: downloading packages, setting up database, etc.
(That's why I like to dockerize my projects). If you keep the setup guidelines up to date you can avoid the embarassing moments of ramping up a new contributor.
 
### 3.3. Development methodologies 

For the good functioning of the collaboration, it's necessary that everybody is on the same page. Developers have to agree on the way of working, and it's suggested to have these documented. 

#### 3.3.1. Coding conventions

All of us have a unique fingerprint and movement, coding style is similar. But the software written is a collaborative work. It's important for the reader to have a unified format of the code. Reading a code base with different style requires a surprisingly large amount of unconscious effort from the brain. Again, it's best when keeping a common style is not needed to be done manually. To achieve this, you have to add formatters (and configure them) to your project.

> My suggestion is [EditorConfig](https://editorconfig.org/). It's supported by a wide range of IDEs
{: .prompt-tip }

In the README/CONTRIBUTING you can document your used formatter and/or the guidelines that can't be enforced by an automatic tool.

#### 3.3.2. Source control usage

The tool for collaboration is a version control system (VCS). But every tool can be used in many different ways, and your project will decide what is the best. You need to have an agreement on how you do branching, what are the naming conventions, are there any protected branches, and so on. 

> [Further reading](https://www.atlassian.com/git/tutorials/comparing-workflows) on different standard workflows.
{: .prompt-info }

#### 3.3.3. Code review guidelines

Code review itself is another big topic. It has its pros and cons, but most probably you will have pull-requests and code reviews on your project. In order to expect the same quality measurements from every reviewer, it's suggested to have a checklist.

> The elements of the code review checklist is totally up to you. But I think the most basic things that a reviewer should do is answering with YES to the following questions:
- Do I understand the code?
- Does the code do what it's supposed to do?
- Do I undertake the maintenance of the code?
{: .prompt-tip }

### 3.4. Testing

For clarity and consistency, it's suggested to have some documentation about testing.
You can specify what kind of testing does your team do. Which roles are responsible for writing/executing what kind of tests. What conventions do you have for automated tests (e.g.: structure of tests, AAA pattern, naming conventions, etc.)?

### 3.5. Conventions

Any other convention for collaboration that is not code specific can be written here. This is a good place for the typical _"Dos and don'ts"_.

## 4. Glossary

Every project has it's own related business field, with it's own business language. To have everybody a good understanding of the domain, the different terms should be collected under a glossary. In your README it's enough to have a link to this glossary.

## 5. Who is who?

For a small project it may not be crucial, but in a bigger organization you should know who you can turn to with your topics. This kind of collection can be helpful especially for newcommers. In your README it's enough to have a link to an external portal.

## 6. Deployment

Nowadays, every project needs an automatic deployment process. Even if it's not continuous, it should be automatic as much as possible. In the best scenario, the only manual process is writing the release notes. For this, you need to build a deployment pipeline. In the pipeline you can configure among others: linters, code analyzers, test execution, report generating, artifact creation, etc. 

In your README/CONTRIBUTING the necessary manual steps can be documented under a "How to release" or similar section.

## 7. Onboarding

Adding a new member to the project is not always free of obstacles. In some cases many different accesses, credentials, setups steps are needed for the newcomer. If you collect the necessary steps in case of a new contributor, the onboarding process can be made much easier.

## 6. License 

Last, but not least, you need to make clear what are the using and distribution guidelines of your new product.

> Many open source repositories include a LICENSE file which contains the licensing information. 
Most common open source licenses are MIT, GPL and Apache. For our convenience, GitHub created a [site for choosing a license](https://choosealicense.com/)
{: .prompt-tip }

# Conclusion

I hope the above-mentioned elements can help you to put together a proper knowledge space and a `README.md` file.
You may not need all of them, or need some additional elements, depending on your project. But I think defining these elements at the beginning of the project will save you from some headaches in the future.

> Keep in mind that these are living documents. You need to adapt these documents whenever things change on your project. Let it be a new technology, a new member, new business keyword, changed setup steps, etc.
{: .prompt-warning }

# Sample files

A sample for a `README.md`:
```markdown
# Dummy project

This is the description and the purpose of the project. In this readme documentation we will cover the documentation of a hypotetical backend server of a event management system. For a deeper insight into the architecture of the system and how this application is integrated check out the [system architecture page](https://your-internal-company-site.com/your-system-architecture)

## How to use

### Running locally

Running the server with the default configuration the Rest API is available at `https://localhost:4000/api`

If you run the application in debug mode you can study the Swagger documentation at `https://localhost:4000/swagger/v1.0/index.html`

You can use the default API Auth Key for authentication.

### Accessing environments

The different environments can be accessed at:
- `dev`: `https://dev.your-project.your-internal-company-site.com` (requires VPN)
- `test`: `https://test.your-project.your-internal-company-site.com` (requires VPN and an API Auth Key)
- `production`: `https://your-project.your-company-site.com` (API Auth Key is confidential)

## Contribution

Every developer of the project has to respect the [contributing guidelines](./CONTRUBUTING.md)

Improvement ideas are always welcome :)

## Glossary

For unknown business terms please visit our [glossary Confluence page](https://your-internal-company-site.com/your-project/your-glossary-page)

If you have a new item idea, after consulting with the project manager, please update the glossary .

## Who is who?

For information about the community please visit our [corporate contacts page](https://your-internal-company-site.com/contacts)

## Deployment

We have three different environments for deployment. 

The development environment (called `dev`) always runs the current status of the `develop` branch. On every commit on the `develop` branch a new artifact is deployed to the `dev` environment.

After a feature-set is developed the responsible person writes the release notes. After that he merges the `develop` branch to `master` and creates a version tag on the new merge commit. For more details read the corresponding section in the CONTRIBUTING.md . The build server automatically deploys the built artifact to the `test` environment.

After the new version passes all stages of testing, the same artifact is deployed to the `production` environment.

For more information about the build pipeline visit the [build server](https://your-internal-company-site.com/build-server/your-project)

## Onboarding

For ramping up a new team member please study the [onboarding material](https://your-internal-company-site.com/your-project/your-onboarding-material)

## License

This project is under XYZ license.

```

A sample for a `CONTRIBUTING.md`:
````markdown
# Dummy project - Contributing

## Tools and Technologies

- Application: 
    - Framework: ASP.Net WebApi (.NET7)
    - Database: MSSQL
    - ORM: Entity Framework
    - Validation: [FluentValidation](https://docs.fluentvalidation.net/en/latest/)
    - Logging: [SeriLog](https://serilog.net/)
- Testing:
    - [xUnit](https://xunit.net/) - unit testing framework
    - [FluentAssertions](https://fluentassertions.com/) - library for writing more natural unit test expectations
	- [Cucumber](https://cucumber.io/) with [Selenium](https://www.selenium.dev/) - for writing automated integration tests
- Other:
    - Docker
    - Deployment: Azure DevOps
    - Swagger

## Setup guidelines

### Setup from Visual Studio

- Add the following settings to the [user secrets](https://learn.microsoft.com/en-us/aspnet/core/security/app-secrets?view=aspnetcore-7.0&tabs=windows#manage-user-secrets-with-visual-studio):
```json
{
    "Secrets": {
        "ServerApiKey": "YourChosenApiKey"
    }
}
```
- select the `MyApplicationBackend` project as a startup project
- Run the application from Visual Studio

### Setup from Docker

- Create a `.env` file (already ignored by git) in the project root folder with the following content:
```
Secrets:ServerApiKey=YourChosenApiKey
```
- Create a self-signed SSL Certificate in the project root folder:
    - Step 1: ...
    - Step 2: ...
- Make sure docker desktop is running with Linux containers
- Run the container with the `docker-compose up` command

## Development methodologies

### Coding conventions

Our strict coding conventions are enforced by [CA Rules](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/quality-rules/). We also use StyleCop as a coding style analyser. 

It is all developers responsibility to keep rule violations at the minimum. (This includes special attention during code review.)
Adjusting the severity of individual rules requires an agreement of all team members.

In order to have a uniform coding style we havily apply autoformatting with the help of [EditorConfig](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/code-style-rule-options#example-editorconfig-file)

### Source control usage

We use [GitFlow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) as branching strategy. The `master` branch is protected and can be accessed only by the lead developer. 
Convention for branch naming: `feature/[ticket-code]` (e.g.: `feature/TA-1234` )

**Conventions for commit messages:**
- Commit message must begin with ticket code
- Commit message must have a short summary (what has been done)
- Commit message should have a more detailed description (why it has been done)
- Optionally you can tag the message, for example with 
    - `[review-fix]` - for changes regarding code review comments
    - `[cleanup]` - for formatting and coding style changes
    - `[hot-fix]` - for hot fixes only on hot-fix branch

example:
```
[review-fix] TA-1234: Extract barcode check digit verification

in order to enhance readability.
Fixes review comment #67243
```

### Code review guidelines

During the code review the reviewer has to answer the following questions:
- Do I understand the code?
- Does the code do what it's supposed to do?
- Do I undertake the maintenance of the code?

Additionally the reviewer can take the following list into account:
- Check tests: 
    - Are there enough tests?
    - Do tests cover the feature well?
    - Apply mutation testing (changing one condition in the code breaks one unit test)
- Code analysis warnings:
    - Is there any CA warning? If yes, should it be fixed or skipped?
- Is there any violation of the conventions?

## Testing

In our project three levels of testing are maintained for keeping the quality measurements. 

For every feature development software developers are writing unit tests. Developers constantly pay attention for the right amount of tests when doing code reviews. Additionally the code coverage measurements are evaluated in a regular monthly basis and we search for potential improvement areas.

Our Quality Assurance personnel write automated tests using Selenium for the integration with the front-end application.

Our Quality Assurance personnel also executes manual testing for feature development, and exploratory testing on a quarterly basis.

### Unit test conventions

- Test class structures:
    - In general there should be a separate test class for every class under test. 
    - Optionally different use cases can be separated by well named nested classes inside test classes (e.g.: Tests of one method of the class)
- Naming: Test methods must express the test-case well. Readers should know what the individual test is about. Try using the following naming convention `Should_do_something_When_some_conditions_are_met`
- AAA form: separate the Arrange, Act and Assert parts of the tests visually (best with comments as well).
- Unit tests should test only one thing. Assert one result on one condition.

Example:
```
public class DateCalculatorServiceTests 
{
    public class GetDayName 
    {
        [Fact]
        public void Should_Throw_InvalidDateException_When_Date_Is_Invalid() 
        { 
            // ...
        }
        
        [Theory]
        [InlineData("2007-12-31", "Monday")]
        [InlineData("2008-01-01", "Tuesday")]
        // ....
        public void Should_Return_Correct_Day_Name_When_Date_Is_Valid(string date, string expectedDayName) 
        { 
            // Arrange
            var service = new DateCalculatorService(/** some params **/);
            
            // Act
            var dayName = service.GetDayName(date);
            
            // Assert
            dayName.Should().Equal(expectedDayName);
        }
    }
}
```

## Conventions

Here is the place to enumerate dos and donts on the project.

## How to release

The responsible person for release should stick to following action steps when doing a release:
- Inform other developers, so the `develop` branch is not changed during release
- Collect the list of features/bug fixes that has been done since the last release.
- Write the release notes on [this page](https://your-internal-company-site.com/your-project/release-notes)
- Create a release branch and increase the version number
- Merge the release branch into `master` and `develop` as well
- Create a new tag (format: `v0.0.0-patch0`) on the `master` branch
- Check if the release was successful on the [release monitoring site](https://your-internal-company-site.com/build-server/your-project/release-monitor?env=test)
- Let the team know of the result
````
