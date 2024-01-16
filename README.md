# voyage-tasks

Your project's `readme` is as important to success as your code. For 
this reason you should put as much care into its creation and maintenance
as you would any other component of the application.

If you are unsure of what should go into the `readme` let this article,
written by an experienced Chingu, be your starting point - 
[Keys to a well written README](https://tinyurl.com/yk3wubft).

And before we go there's "one more thing"! Once you decide what to include
in your `readme` feel free to replace the text we've provided here.

> Own it & Make it your Own!

## Team Documents

You may find these helpful as you work together to organize your project.

- [Team Project Ideas](./docs/team_project_ideas.md)
- [Team Decision Log](./docs/team_decision_log.md)

Meeting Agenda templates (located in the `/docs` directory in this repo):

- Meeting - Voyage Kickoff --> ./docs/meeting-voyage_kickoff.docx
- Meeting - App Vision & Feature Planning --> ./docs/meeting-vision_and_feature_planning.docx
- Meeting - Sprint Retrospective, Review, and Planning --> ./docs/meeting-sprint_retrospective_review_and_planning.docx
- Meeting - Sprint Open Topic Session --> ./docs/meeting-sprint_open_topic_session.docx

## Using Docker with Next.js

If you prefer to run your Next.js application inside a Docker container, follow the steps below.

### Prerequisites

Make sure you have Docker installed on your machine. You can download it [here](https://www.docker.com/get-started).

### Building the Docker Image

To build the Docker image for the Next.js frontend, run the following command in the project root:

```
docker build -t voyage-tasks-nextjs .
```
This command creates a Docker image named voyage-tasks-nextjs based on your project configuration.

### Running the Docker Container
Once the Docker image is built, you can run the container using the following command:

```
docker run -p 3000:3000 voyage-tasks-nextjs
```
This command starts a Docker container based on the voyage-tasks-nextjs image and maps port 3000 on your machine to port 3000 inside the container. Adjust the port mapping (-p) as needed.

The Next.js application will be accessible at http://localhost:3000.
=======
## Getting Started (Next.JS)

To set up and run the Next.js project locally, follow these steps:

## Prerequisites

Make sure you have Node.js and npm installed on your machine. You can download them [Nodejs](https://nodejs.org/).

## Using NVM (Node Version Manager)

To manage Node.js versions easily, it's recommended to use NVM. If you don't have NVM installed, follow these steps:

## Install NVM

#### Mac OS
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

#### Windows
https://github.com/coreybutler/nvm-windows/releases

## Install project dependencies

```
npm install
```

## Run the Development Server

```
npm run dev
```
This will launch the application locally, and you can access it in your browser at http://localhost:3000.
