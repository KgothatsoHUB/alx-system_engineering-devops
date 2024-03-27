Skynet Auto-Remediation Tool

Background Context

This project is inspired by my experience at SlideShare, where I developed an auto-remediation tool called Skynet. Skynet was designed to monitor, scale, and fix Cloud infrastructure using Puppet, specifically focusing on parallel job execution with MCollective.

Bug Incident

During my time at SlideShare, a critical bug occurred in the Skynet code, causing unintended consequences. When executing commands with MCollective, a nil value was sent to the filter method, resulting in the termination of servers due to a misinterpretation by MCollective.

This incident highlighted the importance of robust coding practices and the use of Puppet for infrastructure management and recovery.

Resources

- Intro to Configuration Management
- Puppet resource type: file
- Puppet’s Declarative Language: Modeling Instead of Scripting
- Puppet lint
- Puppet emacs mode

Requirements

General

- All files interpreted on Ubuntu 20.04 LTS
- Files end with a new line
- Mandatory README.md file at the root
- Puppet manifests pass puppet-lint version 2.1.1 without errors
- Puppet manifests run without errors
- Puppet manifests' first line must be a comment explaining the manifest's purpose
- Puppet manifests files end with the extension .pp

Versioning

Ensure Ubuntu 20.04 VM has Puppet 5.5 preinstalled.

Installation Commands

$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet

Puppet 5 Docs

Link to Puppet 5 Documentation

Puppet-lint Installation

$ gem install puppet-lint

