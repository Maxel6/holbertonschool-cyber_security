# Web Application Security Module

Welcome to the **Web Application Security Module**! This project is designed to help you understand and exploit common vulnerabilities in web applications. By the end of this module, you will have hands-on experience with several types of web vulnerabilities.

## Project Overview

In this project, you'll be working with a web application that was developed quickly (within 3 days) using AI assistance. Your task is to test the security of this application by identifying and exploiting vulnerabilities. The application includes a Customer Support Dashboard with support UI, customer UI, and an admin portal.

## Prerequisites

Before you begin, ensure you have the following:

- **Kali Linux** installed, or access to a sandbox environment.
- Access to the target network via **OpenVPN** or a similar sandbox.
- A **web browser** (Firefox recommended).
- Basic knowledge of using a **terminal** for running tools like `curl` and `sqlmap`.

## Setup Instructions

### 1. Target Machine Setup

- **Endpoint:** `http://web0x00.hbtn/login`
- Edit your `/etc/hosts` file to map the domain `web0x00.hbtn` to the IP address of your target machine.

### 2. Connectivity Test

To ensure your setup is correct, test your connection:

- **Using Terminal:**
  ```bash
  curl http://web0x00.hbtn
