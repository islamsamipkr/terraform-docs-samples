/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

# [START cloud_sql_sqlserver_instance_ssm]
resource "google_sql_database_instance" "sqlserver_ssm_instance_name" {
  name                = "sqlserver-ssm-instance-name"
  region              = "asia-northeast1"
  database_version    = "SQLSERVER_2019_STANDARD"
  maintenance_version = "SQLSERVER_2019_STANDARD_CU16_GDR.R20220821.00_00"
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false # set to true to prevent destruction of the resource
}
# [END cloud_sql_sqlserver_instance_ssm]