# terraform-aws-route53-record-cname

A terraform module to provide a CNAME record in AWS Route53.

## Usage

```hcl
module "cname_record" {
  source = "github.com/julb/terraform-aws-route53-record-cname"

  zone_id   = "<route53-hosted-zone-id>"
  name      = "cname.example.net"
  ttl       = 500
  records   = ["1.1.1.1"]
}
```

## Module Input Variables

| Name      | Type     | Default   | Description                                   |
| --------- | -------- | --------- | --------------------------------------------- |
| `zone_id` | string   | `Not set` | ID of the hosted zone in AWS. _Required_.     |
| `name`    | string   | `Not set` | Name of the DNS record to create. _Required_. |
| `ttl`     | number   | `300`     | TTL of the DNS record to create.              |
| `records` | string[] | `Not Set` | The records to associate to the DNS record.   |

## Outputs

| Name | Type | Description |
| ---- | ---- | ----------- |

## Contributing

This project is totally open source and contributors are welcome.

When you submit a PR, please ensure that the python code is well formatted and linted.

```
$ make format
$ make lint
$ make test
```
