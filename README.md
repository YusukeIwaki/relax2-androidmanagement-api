# AndroidManagement v1 client based on relax2.

## Usage

### Installation

```
gem 'relax2-androidmanagement', git: 'https://github.com/YusukeIwaki/relax2-androidmanagement-api.git'
```

and then hit `bundle install --binstubs`.

### Configuration

```
$ bin/androidmanagement configure ~/path/to/service_account_keyfile.json
```

### Execute GET request

```
$ bin/androidmanagement GET /enterprises?project_id={project_id}

{
  "enterprises": [
    {
      "name": "enterprises/LC01??????c",
      "enterpriseDisplayName": "YusukeIwaki"
    },
    {
      "name": "enterprises/LC02??????9",
      "enterpriseDisplayName": "test_enterprise"
    }
  ]
}
```

### Execute POST request

```
$ echo "{ enterpriseDisplayName: 'YusukeIwaki' }" | bin/androidmanagement POST /enterprises projectId={project_id} agreementAccepted=true

{
  "name": "enterprises/LC01??????c",
  "enterpriseDisplayName": "YusukeIwaki"
}
```
