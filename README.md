## 1

- resources: https://github.com/hashicorp/terraform-provider-aws/blob/3f454457baf318faae5cc61dcf948c6b7a25575a/internal/provider/provider.go#L871
- data_sources: https://github.com/hashicorp/terraform-provider-aws/blob/3f454457baf318faae5cc61dcf948c6b7a25575a/internal/provider/provider.go#L412

- Параметр name конфликтует с name_prefix https://github.com/hashicorp/terraform-provider-aws/blob/3f454457baf318faae5cc61dcf948c6b7a25575a/internal/service/sqs/queue.go#L82
- Максимальная длина имени указана в условии https://github.com/hashicorp/terraform-provider-aws/blob/3f454457baf318faae5cc61dcf948c6b7a25575a/internal/service/sqs/queue.go#L424 и равна 80 символам
- Регулярное выражение для имени `^[a-zA-Z0-9_-]{1,75}\.fifo$` или `^[a-zA-Z0-9_-]{1,80}$`
