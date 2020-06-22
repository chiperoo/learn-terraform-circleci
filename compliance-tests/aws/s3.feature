Feature: Testing the compliance tests
  Moo moo moo says the cow

  Scenario Outline: Naming Standard on all available resources
    Given I have <resource_name> defined
    When it has <name_key>
    Then it must contain <name_key>
    And its value must match the ".*-(dev|staging|production)-.*" regex

    Examples:
    | resource_name           | name_key |
    | AWS EC2 instance        | name     |
    | AWS RDS instance        | name     |
    | AWS S3 Bucket           | bucket   |
    | aws_key_pair            | key_name |
    | aws_ecs_cluster         | name     |
