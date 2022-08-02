# App ID Module

Create an instance of App ID or get an instance from data.

## Module Variables

Name              | Type         | Description                                                 | Sensitive | Default
----------------- | ------------ | ----------------------------------------------------------- | --------- | -------
region            | string       | The region to which to deploy the VPC                       |           | 
prefix            | string       | The prefix that you would like to prepend to your resources |           | 
tags              | list(string) | List of Tags for the resource created                       |           | null
resource_group_id | string       | Resource group ID for App ID instance                       |           | null
use_data          | bool         | Get App ID information from data.                           |           | false
appid_name        | string       | App ID name. Use only if `use_data` is true.                |           | null

## Module Outputs

Name | Description
---- | -----------
guid | App ID GUID
crn  | App ID CRN 
