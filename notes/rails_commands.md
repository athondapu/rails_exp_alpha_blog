### Create DB Tables & Columns

1. `rails generate migration <migration_file_name>`. With this command you can create a migration script so that we can change/add the table columns. It generates migration scripts under the `db/migrate`

Example: `rails generate migration create_users`

2. Once you updated/add the changes we need to execute the below command
`rails db:migrate`
It executes the migration script that we created and it creates the tables and columns based on the script that we created. 

Note: Assume you have more than once script under the `db/migrate` folder. Rails is very intelligent and it knows what to execute. For example, initially no scripts under the `db/migrate` folder. You created a migration file and execute that script. Later sometime you created another script file and try to execute the migration script command (`rails db:migrate`). Now we have 2 migration scripts under `db/migrate` folder but we already executed one earlier. Now if we run the above command rails only runs the latest script that we created.

### Test cases related commands.

1. Generate unit test cases with the below command. `rails generate test_unit:scaffold <table_name>`.
Ex: `rails generate test_unit:scaffold category`.

2. Generate integration test cases with the below command. `rails generate integration_test <operation_name>`
Ex: `rails generate integration_test create_category`

3. Run particular test case file with the below command. `rails test test/controllers/categories_controller_test.rb`

4. Run all the test cases. `rails test`
