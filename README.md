# Chatabird Chat - Google Tag Manager Template

This is a custom Google Tag Manager template for integrating Chatabird chat functionality into your website. This template makes it easy to add Chatabird to any website through Google Tag Manager with minimal configuration.

## Overview

Chatabird is a chat solution that enhances customer engagement and support on your website. This template allows for quick and easy implementation of Chatabird through Google Tag Manager without requiring direct code modifications to your website.

## Template Features

- Simple configuration with just an App ID
- Optional Identity Validation Key support
- Asynchronous loading to avoid impacting page performance
- Compatible with all website frameworks and platforms

## How to Use

1. **Import the Template:**
    - In GTM, go to "Templates" → "Tag Templates" → "Search Gallery"
    - Search for "Chatabird Chat" and add it to your workspace
    - Alternatively, you can manually import the template file (`chatabird_gtm_template.tpl`)

2. **Create a Tag using the Template:**
    - Go to "Tags" → "New" → Choose the "Chatabird Chat" template from the list
    - Configure the required fields:
        - **App ID:** Your Chatabird App ID (e.g., "startco")
        - **Identity Validation Key:** (Optional) Your Chatabird Identity Key if you're using identity validation

3. **Set Trigger:**
    - Typically, you'll want to set this to trigger on "All Pages" or "Window Loaded"

4. **Save and Publish:**
    - Save your tag configuration and publish your GTM container

## Submitting to the Community Gallery

If you would like to submit this template to the Google Tag Manager Community Template Gallery:

1. **Create a GitHub Repository:**
    - Create a new repository with the following files:
        - `template.tpl` (the Chatabird template file)
        - `metadata.yaml` (contains information about the template)
        - `LICENSE` (the license for your template)
        - `README.md` (this documentation file)

2. **Prepare metadata.yaml:**
   ```yaml
   homepage: "https://chatabird.com"
   documentation: "https://chatabird.com/documentation"
   versions:
     - sha: [COMMIT_SHA]
       changeNotes: "Initial release."
   ```

3. **Submit for Review:**
    - Follow the submission guidelines at [Google's Community Template Gallery](https://developers.google.com/tag-platform/tag-manager/templates/gallery)
    - Fill out the submission form with a link to your GitHub repository

## Development and Testing

For local development and testing of this template:

1. Create a container on https://tagmanager.google.com/
2. In the Templates section, create a new template
3. Click the "Import" button, and import the template file
4. Create a new tag using this template for testing
5. Preview your GTM container to test the integration

## Requirements

- A Chatabird account with an App ID
- Google Tag Manager access for your website
- Permission to add tags to your website

## License

[Include your license information here]

## Support

For issues with the template, please [create an issue](https://github.com/yourusername/chatabird-gtm/issues) on GitHub.

For issues with Chatabird service, please contact Chatabird support at [support@chatabird.com](mailto:support@chatabird.com).
