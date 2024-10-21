# Portfolio Website - Drupal + React

Welcome to the repository for my portfolio website, which is built using **Drupal** as the backend and **React** as the frontend. This project showcases my projects, and experiences, with content managed through Drupal and presented through a modern React frontend.

## Overview

This project is a personal portfolio website where I showcase my professional work, skills, and projects. Drupal is used as a content management system (CMS) for managing the data (like project descriptions, blog posts, etc.), while React fetches and displays the content in a dynamic and user-friendly interface.

## Features

- **Content Management**: Content (e.g., Home, About, Projects) is managed in Drupal as structured content types.
- **Dynamic Frontend**: The frontend is built with React to fetch and display data dynamically using Drupal's JSON:API.
- **Customizable & Extensible**: The project can be easily extended by adding new content types in Drupal or UI components in React.

## Technologies Used

- **Backend**: [Drupal 9/10](https://www.drupal.org/)
  - Drupal JSON:API for serving content to the React frontend.
  - Content types include Home, About, Projects, etc.
- **Frontend**: [React](https://reactjs.org/)
  - Fetches and displays content from Drupal using RESTful JSON:API.
- **Styling**: [Bootstrap CSS](https://bootstrap.com/).
- **Database**: MySQL (via Lando for local development).
- **Local Development**: [Lando](https://lando.dev/) for Drupal environment setup.

## Getting Started

### Prerequisites

Make sure you have the following installed:

- [Node.js](https://nodejs.org/) (for React)
- [Composer](https://getcomposer.org/) (for managing Drupal dependencies)
- [Lando](https://lando.dev/) (for local Drupal development)
- [Drush](https://www.drush.org/) (for Drupal command-line tasks)
