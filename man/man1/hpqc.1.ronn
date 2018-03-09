hpqc(1) -- Interacts with HPQC
==============================

## SYNOPSIS

`hpqc` [command [command-options]]

## DESCRIPTION

`hpqc` is a set of tools that grands the ability of interact with HP Quality
Center.

## HPQC commands

`HPQC` use command to do their job. A command like `hpqc-setup` is called like

    hpqc setup

Is the `hpqc` tool who calls the `hpqc-setup` and prepares the environment with
the tools and configurations need by that command.

The actual list of command is:

 * `hpqc-setup`(1):
   Does a initial setup for the actual user.

 * `hpqc-build-cache`(1):
   Downloads metadata information from HP Quality Center and stores it in
   local filesystem. This tool should be executed the first time hpqc is
   used.

 * `hpqc-new-search`(1):
   Configures a search filter for defects from HP Quality Center. It is
   useful when only a set of defects are required.

 * `hpqc-new-view`(1):
   Configures a filter of columns of defects. When defects are downloaded and
   a filter is used only the selected columns are shown in tabular mode.

 * `hpqc-defects`(1):
   Interacts with defects.

 * `hpqc-requeriments`(1):
   Interacts with requeriments.

 * `hpqc-list-plugins`(1):
   List the plugins installed.

 * `hpqc-list-views`(1):
   Show the actual filter in the system.

 * `hpqc-lock`(1):
   Adquire, release and test for lock over entities.

 * `hpqc-checkin`(1):
   Required for versioned HPQC instalations.

 * `hpqc-checkout`(1): 
   Required for versioned HPQC instalations.

 * `hpqc-users`(1):
   Get informations about users.

 * `hpqc-update`(1):
   Updates information of one entity.

## CONFIGURATION

The default configuration for HPQC is stored in `/etc/hpqc/hpqc.config`. You can
override configuration options in `$HOME/.hpqc/hpqc.config`.

When `setup`(1) command is called a copy of default configuration is copied to
the user directory and an editor is called to configure it.

## DIRECTORIES

`HPQC` use the following directories:

  * `/usr/share/hpqc` and `$HOME/.hpqc`:
    Those are base paths used by 'hpqc' to find commands, searchs or views.

  * `$BASE_PATH/plugins`:
    Path where commands are searched. See `HOW TO EXTEND` section.

## HOW TO EXTEND

`HPQC` can be extended with new commands. Commands are stored in a plugin path
(see `DIRECTORIES` secciont). A command have to be named `hpqc-$COMMAND_NAME`.

All commands are `bash(1)` scripts that implements two functions:

  * `help`:
    This function is used for bash autocompletion when first parameter is `1` or
    for general purpose description of the command (first parameter is `2`).

    General purpose description is used when `hpqc` is called without arguments.

    When bash autocompletion is used, the rest of parameters of `help` are the
    arguments of the command.

  * `call`:
    This is the function that do the work of the command. It receives as
    arguments the command line arguments.

All commands can use the follow auxiliary functions to operate:

  * `getView` <name>
  * `getSearch` <name>
  * `getFilter` <name>
  * `getPlugin` <name>
  * `sendGET` <URL>
  * `sendPUT` <URL>
  * `sendPOST` <URL>
  * `sendDELETE` <URL>
  * `doLogin`
  * `doLogout`
  * `isAuthenticated`
  * `downloadEntities` <URL>

The follow environment variables are active when commands do their job:

  * `USER`:
    HPQC user used for identify the session.

  * `BASE_URL`
    Base url to the HPQC instance.

  * `DOMAIN`
    Domain used to work with HPQC.

  * `PROJECT`
    Project used to work with HPQC.

When URL has to be used, the following form is used as base URL:

    ${BASE_URL}/qcbin/rest/domains/${DOMAIN}/projects/${PROJECT}/

## BUGS

At this moment could be some errors updating entitites. This is because internal
rules of HPQC.

## AUTHOR

Samuel Rodriguez Sevilla <laparca@laparca.es>

